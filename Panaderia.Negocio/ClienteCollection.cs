using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Panaderia.DALC;

namespace Panaderia.Negocio
{
    public class ClienteCollection
    {
        public List<Cliente> ReadAll()
        {
            var ListaDALC = CommonBC.Modelo.Cliente;
            return GenerarLista(ListaDALC.ToList());
        }

        private List<Cliente> GenerarLista(List<DALC.Cliente> list)
        {
            List<Cliente> ListaClientes = new List<Cliente>();

            foreach (DALC.Cliente item in list)
            {
                Cliente Cl = new Cliente();

                Cl.Rut = item.Rut;
                Cl.DV = item.Dv;
                Cl.Nombres = item.Nombres;
                Cl.Apellidos = item.Apellidos;
                Cl.Telefono = item.Telefono;
                Cl.Mail = item.Mail;

                ListaClientes.Add(Cl);
            }
            return ListaClientes;
        }
    }
}
