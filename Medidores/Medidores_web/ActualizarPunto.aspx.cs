using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Medidores_DAL;
using Medidores_DAL.DAL;

namespace Medidores_web
{
    public partial class ActualizarPunto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack){


                EstacionesServiciosDAL DALEstaciones = new EstacionesServiciosDAL();
                List<EstacionServicio> estaciones = DALEstaciones.GetAll();
                estacionDdl.Items.Clear();
                foreach (EstacionServicio E in estaciones)
                {
                    estacionDdl.Items.Add(E.IdEstacion.ToString());
                }
            }
            int idActualizar = Convert.ToInt32(Request.QueryString["id"]);
            PuntosCargaDAL DAL = new PuntosCargaDAL();
            PuntoCarga P = DAL.Buscar(idActualizar);
            id.Text= P.IdPuntoCarga.ToString();
   /*
            capa.Text = P.Capacidad.ToString();
            if (P.TipoTxt == "Electrico")
            {
                tipoRbl.SelectedValue = "1";
            }
            else
            {
                tipoRbl.SelectedValue = "2";

            }
            vidaTxt.Text = P.Vida;
            
    */

        }

        protected void actualizarBtn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                EstacionesServiciosDAL DAL = new EstacionesServiciosDAL();

              
                int idPuntoCarga = Convert.ToInt32(id.Text);
                int capacidad = Convert.ToInt32(capa.Text);
                int tipo = Convert.ToInt32(tipoRbl.SelectedValue);
                EstacionServicio estacion = DAL.Buscar(Convert.ToInt32(estacionDdl.SelectedValue));
                String vida = vidaTxt.Text;

                PuntoCarga p = new PuntoCarga();
                p.IdPuntoCarga = idPuntoCarga;
                p.Capacidad = capacidad;
                p.Tipo = tipo;
                p.Vida = vida;
                p.Estacion = estacion;
                new PuntosCargaDAL().Update(p);
                
                mensajeLbl.Text = "Punto de carga Actualizado";
                Response.Redirect("VerPuntos.aspx");

            }
        }
    }
}