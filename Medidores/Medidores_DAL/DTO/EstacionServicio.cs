using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Medidores_DAL
{
    public class EstacionServicio
    {

        
        private int idEstacion;
        private int capacidad;
        private string region;
        private string horarioIncio;
        private string horarioTermino;
        private string direccion;

        public int IdEstacion { get => idEstacion; set => idEstacion = value; }
        public int Capacidad { get => capacidad; set => capacidad = value; }
        public string HorarioIncio { get => horarioIncio; set => horarioIncio = value; }
        public string HorarioTermino { get => horarioTermino; set => horarioTermino = value; }
        public string Direccion { get => direccion; set => direccion = value; }
        public string Region { get => region; set => region = value; }

        public override string ToString()
        {
            return "ID:"+ idEstacion + " Region:"+region;
        }
    }
}
