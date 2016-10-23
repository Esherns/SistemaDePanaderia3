using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Panaderia.DALC;

namespace Panaderia.Negocio
{
    public class Pedido
    {
        public int IdPedido { get; set; }
        public int Valor { get; set; }
        public DateTime Fecha { get; set; }
        public int RutCliente { get; set; }

        /*Creacion del CRUD*/

        public bool Create()
        {
            try
            {
                DALC.Pedido Pe = new DALC.Pedido();

                Pe.IDPedido = this.IdPedido;
                Pe.Valor = this.Valor;
                Pe.Fecha = this.Fecha;
                Pe.RutCliente = this.RutCliente;

                CommonBC.Modelo.Pedido.Add(Pe);
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
                DALC.Pedido Pe = CommonBC.Modelo.Pedido.First(P => P.IDPedido == this.IdPedido);

                this.Valor = Pe.Valor;
                this.Fecha = Pe.Fecha;
                this.RutCliente = (int)Pe.RutCliente;

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
                DALC.Pedido Pe = CommonBC.Modelo.Pedido.First(P => P.IDPedido == this.IdPedido);

                Pe.Valor = this.Valor;
                Pe.Fecha = this.Fecha;
                Pe.RutCliente = this.RutCliente;

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
                DALC.Pedido Pe = CommonBC.Modelo.Pedido.First(P => P.IDPedido == this.IdPedido);

                CommonBC.Modelo.Pedido.Remove(Pe);
                CommonBC.Modelo.SaveChanges();

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public static int ObtenerId(int Rut)
        {
            return CommonBC.Modelo.Pedido.OrderByDescending(P => P.IDPedido).First(P => P.RutCliente == Rut).IDPedido;
        }
    }
}
