using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Medidores_DAL
{
    public partial class PuntoCarga
    {

        private int idPuntoCarga;
        private int tipo;
        private int capacidad;
        private string vida;
        private EstacionServicio estacion;

        public int IdPuntoCarga { get => idPuntoCarga; set => idPuntoCarga = value; }
        public int Tipo { get => tipo; set => tipo = value; }
        public int Capacidad { get => capacidad; set => capacidad = value; }
        public string Vida { get => vida; set => vida = value; }
        public EstacionServicio Estacion { get => estacion; set => estacion = value; }

        public override string ToString()
        {
            return "ID Estacion:"+estacion.IdEstacion;
        }

    }
}
