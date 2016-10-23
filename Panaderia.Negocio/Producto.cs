using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Panaderia.DALC;

namespace Panaderia.Negocio
{
    public class Producto
    {
        public int IdProducto { get; set; }
        public string Nombre { get; set; }
        public int Valor { get; set; }
        public int IdCategoria { get; set; }

        /*Creacion del CRUD*/

        public bool Create()
        {
            try
            {
                DALC.Producto Prod = new DALC.Producto();

                Prod.IDProducto = this.IdProducto;
                Prod.Nombre = this.Nombre;
                Prod.Valor = this.Valor;
                Prod.IDCategoria = this.IdCategoria;

                CommonBC.Modelo.Producto.Add(Prod);
                CommonBC.Modelo.SaveChanges();

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public int ObtenerPrecio(int id)
        {
            return CommonBC.Modelo.Producto.First(P => P.IDProducto == id).Valor;
        }

        public bool Read()
        {
            try
            {
                DALC.Producto Prod = CommonBC.Modelo.Producto.First(P => P.IDProducto == this.IdProducto);

                this.Nombre = Prod.Nombre;
                this.Valor = Prod.Valor;
                this.IdCategoria = Prod.IDCategoria;

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
                DALC.Producto Prod = CommonBC.Modelo.Producto.First(P => P.IDProducto == this.IdProducto);

                Prod.Nombre = this.Nombre;
                Prod.Valor = this.Valor;
                Prod.IDCategoria = this.IdCategoria;

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
                DALC.Producto Prod = CommonBC.Modelo.Producto.First(P => P.IDProducto == this.IdProducto);

                CommonBC.Modelo.Producto.Remove(Prod);
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
