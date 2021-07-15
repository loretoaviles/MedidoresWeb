using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Medidores_DAL.DAL
{
    public class EstacionesServiciosDAL
    {
        private static List<EstacionServicio> EstacionesServicio = new List<EstacionServicio>();

        public void Add(EstacionServicio e)
        {
            EstacionesServicio.Add(e);
        }


        public List<EstacionServicio> GetAll()
        {
            return EstacionesServicio;
        } 


        public void Remove(int id)
        {
            EstacionServicio Estacion = EstacionesServicio.Find(e => e.IdEstacion == id);
            EstacionesServicio.Remove(Estacion);
        }
        public EstacionServicio Buscar(int id)
        {  
                return EstacionesServicio.Find(e => e.IdEstacion == id);        
        }


    }
}
