using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Panaderia.DALC;

namespace Panaderia.Negocio
{
    public class CommonBC
    {
        private static PanaderiaEntities _modelo;

        public static PanaderiaEntities Modelo
        {
            get
            {
                 if (_modelo == null)
	            {
                    _modelo = new PanaderiaEntities();
	            }
                return _modelo;
            }
        }
        public CommonBC()
        {

        }
    }
}
