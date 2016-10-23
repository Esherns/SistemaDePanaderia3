using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Panaderia.Negocio;

namespace AplicacionWeb
{
    public partial class Lucuma : System.Web.UI.Page
    {
        List<PedidoLocal> PedidosLocales = new List<PedidoLocal>();
        Producto PD = new Producto();
        protected void Page_Load(object sender, EventArgs e)
        {
            lblPrecio.Text = PD.ObtenerPrecio(4).ToString();
            if (Session["ListaPedidosLocales"] != null)
            {
                PedidosLocales = (List<PedidoLocal>)Session["ListaPedidosLocales"];
            }
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            PedidoLocal PedLoc = new PedidoLocal();
            PedLoc.IdProducto = 4;
            PedLoc.Nombre = "Lucuma";
            PedLoc.Cantidad = int.Parse(txtCantidad.Text);
            PedLoc.Categoria = "Torta";
            PedLoc.Precio = int.Parse(txtCantidad.Text) * PD.ObtenerPrecio(4);
            PedidosLocales.Add(PedLoc);
            Session["ListaPedidosLocales"] = PedidosLocales;
            string url = string.Format("Carrito.aspx");
            Response.Redirect(url);
        }
    }
}