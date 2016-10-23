using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Panaderia.Negocio
{
    public class PedidosHistoricos
    {
        public string Nombre { get; set; }
        public int Precio { get; set; }
        public int Cantidad { get; set; }
        public string Categoria { get; set; }
        public DateTime Fecha { get; set; }
    }
}
