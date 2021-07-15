using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Medidores_DAL.DAL
{
    public class PuntosCargaDAL
    {
        private static List<PuntoCarga> Puntos = new List<PuntoCarga>();

        public void Add(PuntoCarga p)
        {
            
            Puntos.Add(p);
            
        }

        public List<PuntoCarga> GetAll()
        {
            return Puntos;
        }

        public void Update(PuntoCarga punto)
        {
            //Puntos.FindAll(p => p.IdPuntoCarga == punto.IdPuntoCarga).ForEach(P => P.Tipo = punto.Tipo); ;
             Puntos.Where(p => p.IdPuntoCarga == punto.IdPuntoCarga).ToList().ForEach(P => P.Tipo = punto.Tipo);
             Puntos.Where(p => p.IdPuntoCarga == punto.IdPuntoCarga).ToList().ForEach(P => P.Capacidad = punto.Capacidad);
             Puntos.Where(p => p.IdPuntoCarga == punto.IdPuntoCarga).ToList().ForEach(P => P.Vida = punto.Vida);
             Puntos.Where(p => p.IdPuntoCarga == punto.IdPuntoCarga).ToList().ForEach(P => P.Estacion = punto.Estacion);
            /*  Remove(Buscar(punto.IdPuntoCarga).IdPuntoCarga);
              Add(punto);
              */
        }

        public List<PuntoCarga> GetAll(int tipo)
        {
            return Puntos.FindAll(p => p.Tipo == tipo);
            
        }
        public PuntoCarga Buscar(int id) {

            return Puntos.Find(p => p.IdPuntoCarga == id);
        }

        public void Remove(int id)
        {
            PuntoCarga punto = Puntos.Find(p => p.IdPuntoCarga == id);
            Puntos.Remove(punto);
        }

    }
}
