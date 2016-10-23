using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Panaderia.DALC;

namespace Panaderia.Negocio
{
    public class DetallePedidoCollection
    {
        public List<DetallePedido> ReadAll()
        {
            var ListaDALC = CommonBC.Modelo.DetallePedido;
            return ObtenerListado(ListaDALC.ToList());
        }

        private List<DetallePedido> ObtenerListado(List<DALC.DetallePedido> list)
        {
            List<DetallePedido> ListaDetallePedido = new List<DetallePedido>();

            foreach (DALC.DetallePedido item in list)
            {
                DetallePedido DP = new DetallePedido();

                DP.IdDetalle = item.IDDetalle;
                DP.IdPedido = item.IDPedido;
                DP.IdProducto = item.IDPedido;
                DP.Cantidad = item.Cantidad;

                ListaDetallePedido.Add(DP);
            }
            return ListaDetallePedido;
        }
    }
}
