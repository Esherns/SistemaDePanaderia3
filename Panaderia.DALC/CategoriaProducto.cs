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
    
    public partial class CategoriaProducto
    {
        public CategoriaProducto()
        {
            this.Producto = new HashSet<Producto>();
        }
    
        public int IDCategoria { get; set; }
        public string Nombre { get; set; }
    
        public virtual ICollection<Producto> Producto { get; set; }
    }
}