using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Panaderia.DALC;

namespace Panaderia.Negocio
{
    public class CategoriaProducto
    {
        public int IdCategoria { get; set; }
        public string Nombre { get; set; }

        /*Creacion del CRUD*/

        public bool Create()
        {
            try
            {
                DALC.CategoriaProducto CP = new DALC.CategoriaProducto();

                CP.IDCategoria = this.IdCategoria;
                CP.Nombre = this.Nombre;

                CommonBC.Modelo.CategoriaProducto.Add(CP);
                CommonBC.Modelo.SaveChanges();

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool Read()
        {
            try
            {
                DALC.CategoriaProducto CP = CommonBC.Modelo.CategoriaProducto.First(Cat => Cat.IDCategoria == this.IdCategoria);

                this.Nombre = CP.Nombre;

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool Update()
        {
            try
            {
                DALC.CategoriaProducto CP = CommonBC.Modelo.CategoriaProducto.First(Cat => Cat.IDCategoria == this.IdCategoria);

                CP.Nombre = this.Nombre;

                CommonBC.Modelo.SaveChanges();

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool Delete()
        {
            try
            {
                DALC.CategoriaProducto CP = CommonBC.Modelo.CategoriaProducto.First(Cat => Cat.IDCategoria == this.IdCategoria);

                CommonBC.Modelo.CategoriaProducto.Remove(CP);
                CommonBC.Modelo.SaveChanges();

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
