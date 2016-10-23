using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Panaderia.DALC;

namespace Panaderia.Negocio
{
    public class ProductoCollection
    {
        public List<Producto> ReadAll()
        {
            var ListaDALC = CommonBC.Modelo.Producto;
            return GenerarLista(ListaDALC.ToList());
        }

        private List<Producto> GenerarLista(List<DALC.Producto> list)
        {
            List<Producto> ListaProducto = new List<Producto>();

            foreach (DALC.Producto item in list)
            {
                Producto Prod = new Producto();

                Prod.IdProducto = item.IDProducto;
                Prod.Nombre = item.Nombre;
                Prod.Valor = item.Valor;
                Prod.IdCategoria = item.IDCategoria;

                ListaProducto.Add(Prod);
            }
            return ListaProducto;
        }
    }
}
