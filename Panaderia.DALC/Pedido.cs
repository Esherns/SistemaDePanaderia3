//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Panaderia.DALC
{
    using System;
    using System.Collections.Generic;
    
    public partial class Pedido
    {
        public Pedido()
        {
            this.DetallePedido = new HashSet<DetallePedido>();
        }
    
        public int IDPedido { get; set; }
        public int Valor { get; set; }
        public System.DateTime Fecha { get; set; }
        public Nullable<int> RutCliente { get; set; }
    
        public virtual Cliente Cliente { get; set; }
        public virtual ICollection<DetallePedido> DetallePedido { get; set; }
    }
}
