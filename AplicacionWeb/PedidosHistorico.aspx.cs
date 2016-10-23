using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Panaderia.Negocio;

namespace AplicacionWeb
{
    public partial class Pedidos : System.Web.UI.Page
    {
        PedidoCollection PC = new PedidoCollection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddEstadisticas.Enabled = false;
            }
        
           
        }

        protected void btnConsultar_Click(object sender, EventArgs e)
        {
            Cliente Cl = new Cliente();
            Cl.Rut = int.Parse(txtConsultaRut.Text);
     
            if (Cl.Read())
            {
                CargarListaPedidos();
                ddEstadisticas.Enabled = true;
            }
            else
            {
                lblError.Text = "No se ha encontrado su rut asociado a Pedidos.\nRealice un pedido o verifique que es correcto el rut ingresado.";
            }
        }

        private void CargarListaPedidos()
        {
            gvListaPedidos.DataSource = PC.ReadAllCliente(int.Parse(txtConsultaRut.Text));
            gvListaPedidos.DataBind();
            lblError.Text = "";
        }

        protected void gvListaPedidos_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvListaPedidos.PageIndex = e.NewPageIndex;
            CargarListaPedidos();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddEstadisticas.SelectedIndex == 0)
            {
                lbEstadisticas.Text = PC.MayorValor(int.Parse(txtConsultaRut.Text)).ToString();
            }
            else if (ddEstadisticas.SelectedIndex == 1)
            {
                lbEstadisticas.Text = PC.MenorValor(int.Parse(txtConsultaRut.Text)).ToString();
            }
            else if (ddEstadisticas.SelectedIndex == 2)
            {
                lbEstadisticas.Text = PC.UltimoPedido(int.Parse(txtConsultaRut.Text)).ToString();
            }
            else if (ddEstadisticas.SelectedIndex == 3)
            {
                lbEstadisticas.Text = PC.PedidoAntiguo(int.Parse(txtConsultaRut.Text)).ToString();
            }
            else if (ddEstadisticas.SelectedIndex == 4)
            {
                lbEstadisticas.Text = PC.Promedio(int.Parse(txtConsultaRut.Text)).ToString();
            }
        }
    }
}