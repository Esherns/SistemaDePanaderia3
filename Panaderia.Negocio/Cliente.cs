using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Panaderia.DALC;

namespace Panaderia.Negocio
{
    public class Cliente
    {
        public int Rut { get; set; }
        public string DV { get; set; }
        public string Nombres { get; set; }
        public string Apellidos { get; set; }
        public int Telefono { get; set; }
        public string Mail { get; set; }

        /*Creacion del CRUD*/

        public bool Create()
        {
            try
            {
                DALC.Cliente Cl = new DALC.Cliente();

                Cl.Rut = this.Rut;
                Cl.Dv = this.DV;
                Cl.Nombres = this.Nombres;
                Cl.Apellidos = this.Apellidos;
                Cl.Telefono = this.Telefono;
                Cl.Mail = this.Mail;

                CommonBC.Modelo.Cliente.Add(Cl);
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
                DALC.Cliente Cl = CommonBC.Modelo.Cliente.First(C => C.Rut == this.Rut);

                this.DV = Cl.Dv;
                this.Nombres = Cl.Nombres;
                this.Apellidos = Cl.Apellidos;
                this.Telefono = Cl.Telefono;
                this.Mail = Cl.Mail;

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
                DALC.Cliente Cl = CommonBC.Modelo.Cliente.First(C => C.Rut == this.Rut);

                Cl.Dv = this.DV;
                Cl.Nombres = this.Nombres;
                Cl.Apellidos = this.Apellidos;
                Cl.Telefono = this.Telefono;
                Cl.Mail = this.Mail;

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
                DALC.Cliente Cl = CommonBC.Modelo.Cliente.First(C => C.Rut == this.Rut);

                CommonBC.Modelo.Cliente.Remove(Cl);
                CommonBC.Modelo.SaveChanges();

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool VerificarCliente(int Rut)
        {
            try
            {
                DALC.Cliente Cl = CommonBC.Modelo.Cliente.First(C => C.Rut == Rut);
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
