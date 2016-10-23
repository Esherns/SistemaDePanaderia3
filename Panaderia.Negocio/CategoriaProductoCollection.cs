using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Panaderia.DALC;

namespace Panaderia.Negocio
{
    public class CategoriaProductoCollection
    {
        public List<CategoriaProducto> ReadAll()
        {
            var ListaDALC = CommonBC.Modelo.CategoriaProducto;
            return GenerarLista(ListaDALC.ToList());
        }

        private List<CategoriaProducto> GenerarLista(List<DALC.CategoriaProducto> list)
        {
            List<CategoriaProducto> ListaCatProd = new List<CategoriaProducto>();

            foreach (DALC.CategoriaProducto item in list)
            {
                CategoriaProducto CP = new CategoriaProducto();

                CP.IdCategoria = item.IDCategoria;
                CP.Nombre = item.Nombre;

                ListaCatProd.Add(CP);
            }
            return ListaCatProd; 
        }
    }
}
