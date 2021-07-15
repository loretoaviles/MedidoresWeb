using Medidores_DAL;
using Medidores_DAL.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Medidores_web
{
    public partial class VerPuntos : System.Web.UI.Page
    {
        PuntosCargaDAL puntosDAL = new PuntosCargaDAL();
        private void CargarTabla(List<PuntoCarga> puntos)
        {
            puntosGrid.DataSource = puntos;
            puntosGrid.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarTabla(puntosDAL.GetAll());
            }

        }

        protected void puntosGrid_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "actualizar")
            {
                int idAActualizar = Convert.ToInt32(e.CommandArgument); 
                Response.Redirect("ActualizarPunto.aspx?id="+idAActualizar);
            }
        }

        protected void tipoddl_SelectedIndexChanged(object sender, EventArgs e)
        {
            int tipoSel = Convert.ToInt32(tipoDdl.SelectedValue);
            List<PuntoCarga> filtrada = puntosDAL.GetAll(tipoSel);
            CargarTabla(filtrada);
        }

        protected void todosChx_CheckedChanged(object sender, EventArgs e)
        {
            tipoDdl.Enabled = !todosChx.Checked;
            if (todosChx.Checked)
            {
                CargarTabla(puntosDAL.GetAll());
            }
        }
    }
}