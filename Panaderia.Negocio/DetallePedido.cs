using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Panaderia.DALC;

namespace Panaderia.Negocio
{
    public class DetallePedido
    {
        public int IdDetalle { get; set; }
        public int IdPedido { get; set; }
        public int IdProducto { get; set; }
        public int Cantidad { get; set; }

        /*Creacion del CRUD*/

        public bool Create()
        {
            try
            {
                DALC.DetallePedido DP = new DALC.DetallePedido();

                DP.IDDetalle = this.IdDetalle;
                DP.IDPedido = this.IdPedido;
                DP.IDProducto = this.IdProducto;
                DP.Cantidad = this.Cantidad;

                CommonBC.Modelo.DetallePedido.Add(DP);
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
                DALC.DetallePedido DP = CommonBC.Modelo.DetallePedido.First(Detalle => Detalle.IDDetalle == this.IdDetalle);

                this.IdPedido = DP.IDPedido;
                this.IdProducto = DP.IDProducto;
                this.Cantidad = DP.Cantidad;

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
                DALC.DetallePedido DP = CommonBC.Modelo.DetallePedido.First(Detalle => Detalle.IDDetalle == this.IdDetalle);

                DP.IDPedido = this.IdPedido;
                DP.IDProducto = this.IdProducto;
                DP.Cantidad = this.Cantidad;

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
                DALC.DetallePedido DP = CommonBC.Modelo.DetallePedido.First(Detalle => Detalle.IDDetalle == this.IdDetalle);

                CommonBC.Modelo.DetallePedido.Remove(DP);
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
