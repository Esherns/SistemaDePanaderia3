using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Panaderia.Negocio;

namespace AplicacionWeb
{
    public partial class Encargos : System.Web.UI.Page
    {
        List<PedidoLocal> PedidosLocales = new List<PedidoLocal>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ListaPedidosLocales"] != null)
            {
                PedidosLocales = (List<PedidoLocal>)Session["ListaPedidosLocales"];
            }
        }

        protected void btnMarraqueta_Click(object sender, EventArgs e)
        {
            Producto PD = new Producto();
            PedidoLocal PedLoc = new PedidoLocal();
            PedLoc.IdProducto = 1;
            PedLoc.Cantidad = 1;
            PedLoc.Categoria = "Panaderia";
            PedLoc.Nombre = "Marraqueta";
            PedLoc.Precio = 1 * PD.ObtenerPrecio(1);
            PedidosLocales.Add(PedLoc);
            Session["ListaPedidosLocales"] = PedidosLocales;
            string url = string.Format("Carrito.aspx");
            Response.Redirect(url);
        }

        protected void btnHallulla_Click(object sender, EventArgs e)
        {
            Producto PD = new Producto();
            PedidoLocal PedLoc = new PedidoLocal();
            PedLoc.IdProducto = 2;
            PedLoc.Cantidad = 1;
            PedLoc.Categoria = "Panaderia";
            PedLoc.Nombre = "Hallulla";
            PedLoc.Precio = 1 * PD.ObtenerPrecio(7);
            PedidosLocales.Add(PedLoc);
            Session["ListaPedidosLocales"] = PedidosLocales;
            string url = string.Format("Carrito.aspx");
            Response.Redirect(url);
        }

        protected void btnDobladita_Click(object sender, EventArgs e)
        {
            Producto PD = new Producto();
            PedidoLocal PedLoc = new PedidoLocal();
            PedLoc.IdProducto = 3;
            PedLoc.Cantidad = 1;
            PedLoc.Categoria = "Panaderia";
            PedLoc.Nombre = "Dobladita";
            PedLoc.Precio = 1 * PD.ObtenerPrecio(3);
            PedidosLocales.Add(PedLoc);
            Session["ListaPedidosLocales"] = PedidosLocales;
            string url = string.Format("Carrito.aspx");
            Response.Redirect(url);
        }

        protected void btnSelvaNegra_Click(object sender, EventArgs e)
        {
            Producto PD = new Producto();
            PedidoLocal PedLoc = new PedidoLocal();
            PedLoc.IdProducto = 6;
            PedLoc.Nombre = "Selva Negra";
            PedLoc.Cantidad = 1;
            PedLoc.Categoria = "Torta";
            PedLoc.Precio = 1 * 14990;
            PedidosLocales.Add(PedLoc);
            Session["ListaPedidosLocales"] = PedidosLocales;
            string url = string.Format("Carrito.aspx");
            Response.Redirect(url);
        }

        protected void btnLucuma_Click(object sender, EventArgs e)
        {
            Producto PD = new Producto();
            PedidoLocal PedLoc = new PedidoLocal();
            PedLoc.IdProducto = 4;
            PedLoc.Nombre = "Lucuma";
            PedLoc.Cantidad = 1;
            PedLoc.Categoria = "Torta";
            PedLoc.Precio = 1 * PD.ObtenerPrecio(4);
            PedidosLocales.Add(PedLoc);
            Session["ListaPedidosLocales"] = PedidosLocales;
            string url = string.Format("Carrito.aspx");
            Response.Redirect(url);
        }

        protected void btnChocolate_Click(object sender, EventArgs e)
        {
            Producto PD = new Producto();
            PedidoLocal PedLoc = new PedidoLocal();
            PedLoc.IdProducto = 5;
            PedLoc.Nombre = "Chocolate";
            PedLoc.Cantidad = 1;
            PedLoc.Categoria = "Torta";
            PedLoc.Precio = 1 * PD.ObtenerPrecio(5);
            PedidosLocales.Add(PedLoc);
            Session["ListaPedidosLocales"] = PedidosLocales;
            string url = string.Format("Carrito.aspx");
            Response.Redirect(url);
        }

        protected void btnQueque_Click(object sender, EventArgs e)
        {
            Producto PD = new Producto();
            PedidoLocal PedLoc = new PedidoLocal();
            PedLoc.IdProducto = 8;
            PedLoc.Nombre = "Queque";
            PedLoc.Cantidad = 1;
            PedLoc.Categoria = "Reposteria";
            PedLoc.Precio = 1 * 3990;
            PedidosLocales.Add(PedLoc);
            Session["ListaPedidosLocales"] = PedidosLocales;
            string url = string.Format("Carrito.aspx");
            Response.Redirect(url);
        }

        protected void btnBerlin_Click(object sender, EventArgs e)
        {
            Producto PD = new Producto();
            PedidoLocal PedLoc = new PedidoLocal();
            PedLoc.IdProducto = 7;
            PedLoc.Nombre = "Berlin";
            PedLoc.Cantidad = 1;
            PedLoc.Categoria = "Reposteria";
            PedLoc.Precio = 1 * PD.ObtenerPrecio(7);
            PedidosLocales.Add(PedLoc);
            Session["ListaPedidosLocales"] = PedidosLocales;
            string url = string.Format("Carrito.aspx");
            Response.Redirect(url);
        }

        protected void btnPieLimon_Click(object sender, EventArgs e)
        {
            Producto PD = new Producto();
            PedidoLocal PedLoc = new PedidoLocal();
            PedLoc.IdProducto = 9;
            PedLoc.Nombre = "Pie de Limon";
            PedLoc.Cantidad = 1;
            PedLoc.Categoria = "Reposteria";
            PedLoc.Precio = 1 * 4990;
            PedidosLocales.Add(PedLoc);
            Session["ListaPedidosLocales"] = PedidosLocales;
            string url = string.Format("Carrito.aspx");
            Response.Redirect(url);
        }
    }
}