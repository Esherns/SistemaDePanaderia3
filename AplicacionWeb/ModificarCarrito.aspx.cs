using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Panaderia.Negocio;

namespace AplicacionWeb
{
    public partial class ModificarCarrito : System.Web.UI.Page
    {
        Producto PD = new Producto();
        protected void Page_Load(object sender, EventArgs e)
        {
            List<PedidoLocal> PedidosLocales = (List<PedidoLocal>)(Session["ListaPedidosLocales"]);
            if (Request.Params["id"] != null && Request.Params["index"] != null)
            {
                int id = int.Parse(Request.Params["id"]);
                int index = int.Parse(Request.Params["index"]);
                int PUnitario = PD.ObtenerPrecio(id);
                foreach (PedidoLocal item in PedidosLocales)
                {
                    if (index == 0)
                    {
                        lblCodigo.Text = item.IdProducto.ToString();
                        lblNombre.Text = item.Nombre;
                        lblPrecioUni.Text = PUnitario.ToString();
                        lblCantActual.Text = item.Cantidad.ToString();
                        lblCategoria.Text = item.Categoria;
                    }
                    index--;
                }
            }
        }

        protected void btnConfirmar_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.Params["id"]);
            int index = int.Parse(Request.Params["index"]);
            List<PedidoLocal> PedidosLocales = (List<PedidoLocal>)(Session["ListaPedidosLocales"]);
            PedidosLocales.RemoveAt(index);
            Producto PD = new Producto();
            PedidoLocal PedLoc = new PedidoLocal();
            PedLoc.IdProducto = int.Parse(lblCodigo.Text);
            PedLoc.Nombre = lblNombre.Text;
            PedLoc.Cantidad = int.Parse(txtCantidad.Text);
            PedLoc.Categoria = lblCategoria.Text;
            PedLoc.Precio = int.Parse(txtCantidad.Text) * PD.ObtenerPrecio(id);
            PedidosLocales.Add(PedLoc);
            Session["ListaPedidosLocales"] = PedidosLocales;
            string url = string.Format("Carrito.aspx");
            Response.Redirect(url);
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Server.Transfer("Carrito.aspx");
        }
    }
}