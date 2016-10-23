using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Panaderia.DALC;

namespace Panaderia.Negocio
{
    public class PedidoCollection
    {
        public List<Pedido> ReadAll()
        {
            var ListaDALC = CommonBC.Modelo.Pedido;
            return GenerarLista(ListaDALC.ToList());
        }

        private List<Pedido> GenerarLista(List<DALC.Pedido> list)
        {
            List<Pedido> ListaPedidos = new List<Pedido>();

            foreach (DALC.Pedido item in list)
            {
                Pedido Ped = new Pedido();

                Ped.IdPedido = item.IDPedido;
                Ped.RutCliente = (int)item.RutCliente;
                Ped.Fecha = item.Fecha;
                Ped.Valor = item.Valor;

                ListaPedidos.Add(Ped);
            }
            return ListaPedidos;
        }

        public List<Pedido> ReadAllCliente(int rut)
        {
            var ListaDALC = CommonBC.Modelo.Pedido.Where(P => P.RutCliente == rut);
            return GenerarListaCliente(ListaDALC.ToList());
        }

        private List<Pedido> GenerarListaCliente(List<DALC.Pedido> list)
        {
            List<Pedido> ListaPedidos = new List<Pedido>();

            foreach (DALC.Pedido item in list)
            {
                Pedido Ped = new Pedido();

                Ped.IdPedido = item.IDPedido;
                Ped.Fecha = item.Fecha;
                Ped.Valor = item.Valor;

                ListaPedidos.Add(Ped);
            }
            return ListaPedidos;
        }

        public int MayorValor(int rut)
        {
            return CommonBC.Modelo.Pedido.Where(b => b.RutCliente == rut).Max(b => b.Valor);
        }

        public int MenorValor(int rut)
        {
            return CommonBC.Modelo.Pedido.Where(b => b.RutCliente == rut).Min(b => b.Valor);
        }

        public DateTime UltimoPedido(int rut)
        {
            return CommonBC.Modelo.Pedido.Where(b => b.RutCliente == rut).Max(b => b.Fecha);
        }

        public DateTime PedidoAntiguo(int rut)
        {
            return CommonBC.Modelo.Pedido.Where(b => b.RutCliente == rut).Min(b => b.Fecha);
        }

        public double Promedio(int rut)
        {
            return CommonBC.Modelo.Pedido.Where(b => b.RutCliente == rut).Average(b => b.Valor);
        }

    }
}
