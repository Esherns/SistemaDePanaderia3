using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Panaderia.Negocio;

namespace AplicacionWeb
{
    public partial class Carrito : System.Web.UI.Page
    {
        List<string> Listado = new List<string>();
        protected void Page_Load(object sender, EventArgs e)
        {
            btnEncargar.Enabled = false;
            if (Session["ListaPedidosLocales"] != null)
            {
                List<PedidoLocal> PedidosLocales = (List<PedidoLocal>)(Session["ListaPedidosLocales"]);
                foreach (PedidoLocal item in PedidosLocales)
                {
                    string pedido = string.Format("Producto: " + item.Nombre.ToString() + " - Categoria: " + item.Categoria.ToString() + " - Cantidad: " + item.Cantidad.ToString() + " - Precio: " + item.Precio.ToString());
                    Listado.Add(pedido);
                }
                lblTotPagar.Text = PedidosLocales.Sum(PL => PL.Precio).ToString();
            }
            if (Listado != null && !IsPostBack)
            {
                lboxPedido.DataSource = Listado;
                lboxPedido.DataBind();
            } 
        }

        protected void valNombre_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (args.Value.Length >= 3 && args.Value.Length <= 100)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void valTelefono_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (args.Value.Length >= 9 && args.Value.Length <= 11)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void valRut_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string DV = VerificarDV(args.Value);
            if (DV.Equals(txtDV.Text))
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }
        private string VerificarDV(string rut)
        {
            int suma = 0;
            for (int x = rut.Length - 1; x >= 0; x--)
                suma += int.Parse(char.IsDigit(rut[x]) ? rut[x].ToString() : "0") * (((rut.Length - (x + 1)) % 6) + 2);
            int numericDigito = (11 - suma % 11);
            string digito = numericDigito == 11 ? "0" : numericDigito == 10 ? "K" : numericDigito.ToString();

            return digito;
        }

        protected void btnEncargar_Click(object sender, EventArgs e)
        {
            if (Listado.Count <= 0)
            {
                Response.Write("<script language=javascript>window.alert('Agregue al menos 1 Producto');</script>");
            }
            else
            {
                List<PedidoLocal> PedidosLocales = (List<PedidoLocal>)(Session["ListaPedidosLocales"]);
                Cliente Cl = new Cliente();
                int rut;
                if (txtYaCliente.Text.Equals(""))
                {
                    rut = int.Parse(txtRut.Text);
                }
                else
                {
                    rut = int.Parse(txtYaCliente.Text);
                }
                Cl.Rut = rut;
                if (!Cl.Read())
                {
                    Cl.DV = txtDV.Text;
                    Cl.Nombres = txtNombre.Text;
                    Cl.Apellidos = txtApellido.Text;
                    Cl.Telefono = int.Parse(txtTelefono.Text);
                    Cl.Mail = txtEmail.Text;

                    Cl.Create();

                    Pedido Pd = new Pedido();

                    Pd.Valor = PedidosLocales.Sum(PL => PL.Precio);
                    Pd.Fecha = DateTime.Today;
                    Pd.RutCliente = int.Parse(txtRut.Text);

                    Pd.Create();

                    DetallePedido DP = new DetallePedido();
                    DP.IdPedido = Pedido.ObtenerId(int.Parse(txtRut.Text));
                    foreach (PedidoLocal item in PedidosLocales)
                    {
                        DP.IdProducto = item.IdProducto;
                        DP.Cantidad = item.Cantidad;

                        DP.Create();
                    }
                }
                else
                {
                    Pedido Pd = new Pedido();

                    Pd.Valor = PedidosLocales.Sum(PL => PL.Precio);
                    Pd.Fecha = DateTime.Today;
                    Pd.RutCliente = rut;

                    Pd.Create();

                    DetallePedido DP = new DetallePedido();
                    DP.IdPedido = Pedido.ObtenerId(rut);
                    foreach (PedidoLocal item in PedidosLocales)
                    {
                        DP.IdProducto = item.IdProducto;
                        DP.Cantidad = item.Cantidad;

                        DP.Create();
                    }
                }
                PedidosLocales.Clear();
                Session.Clear();
                Response.Write("<script language=javascript>window.alert('Gracias por su pedido\\nLo contactaremos pronto\\n\\nAtentamente\\nSistema de Panaderia');</script>");
                Server.Transfer("Home.aspx");
            }
        }

        protected void chkConfirmarDatos_CheckedChanged(object sender, EventArgs e)
        {
            if (chkConfirmarDatos.Checked == true)
            {
                btnEncargar.Enabled = true;
            }
            else
            {
                btnEncargar.Enabled = false;
            }
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Encargos.aspx");
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            if (lboxPedido.SelectedIndex != -1)
            {
                int index = lboxPedido.SelectedIndex;
                List<PedidoLocal> PedidosLocales = (List<PedidoLocal>)(Session["ListaPedidosLocales"]);
                PedidosLocales.RemoveAt(index);
                Listado.RemoveAt(index);
                Session["ListaPedidosLocales"] = PedidosLocales;
                lboxPedido.Items.Clear();
                lboxPedido.DataSource = Listado;
                lboxPedido.DataBind();
            }
            else
            {
                Response.Write("<script language=javascript>window.alert('Seleccione un pedido.');</script>");
            }
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            if (lboxPedido.SelectedIndex != -1)
            {
                int index = lboxPedido.SelectedIndex;
                int id = 0;
                List<PedidoLocal> PedidosLocales = (List<PedidoLocal>)(Session["ListaPedidosLocales"]);
                foreach (PedidoLocal item in PedidosLocales)
                {
                    if (index == 0)
                    {
                        id = item.IdProducto;
                    }
                    index--;
                }
                string url = string.Format("ModificarCarrito.aspx?id={0}&index={1}", id, lboxPedido.SelectedIndex);
                Server.Transfer(url);
            }
            else
            {
                Response.Write("<script language=javascript>window.alert('Seleccione un pedido.');</script>");
            }
        }

        protected void btnVerificarCliente_Click(object sender, EventArgs e)
        {
            try
            {
                Cliente Cl = new Cliente();
                Cl.Rut = int.Parse(txtYaCliente.Text);
                if (Cl.VerificarCliente(int.Parse(txtYaCliente.Text)))
                {
                    lblVerificacion.Text = "Felicitaciones. Eres uno de nuestros Clientes Favoritos.";
                    btnEncargar.CausesValidation = false;
                    btnEncargar.Enabled = true;

                }
                else
                {
                    lblVerificacion.Text = "Aun no estas registrados. Registrate en el formulario de abajo";
                }
            }
            catch (Exception)
            {
                Response.Write("<script language=javascript>window.alert('Ingrese un Rut valido para verificar');</script>");
            }
        }
    }
}