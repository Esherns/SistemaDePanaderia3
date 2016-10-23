<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Chocolate.aspx.cs" Inherits="AplicacionWeb.Chocolate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 323px;
        }

        .auto-style6 {
            width: 323px;
            text-align: center;
            vertical-align: top;
        }

        .auto-style7 {
            text-align: center;
        }

        .auto-style8 {
            margin-top: 20px;
            margin-bottom: 20px;
            width: 200px;
            height: 119px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel ID="Titulo" runat="server" BorderStyle="None" Height="418px" Width="674px">
        <asp:Label ID="Label1" runat="server" Text="Torta de Chocolate" BorderStyle="Solid" Font-Size="XX-Large" BorderColor="#CC9900" Font-Italic="True" Style="text-align: center" Width="667px"></asp:Label>
        <br />
        <br />
        <table style="width: 100%;">
            <tr>
                <td class="auto-style6">
                    <br />
                    Ingredientes:
                    <br />
                    <br />
                    -Bizcochop
                    <br />
                    -Azucar<br />
                    -Huevo<br />
                    -Harina<br />
                    -Chocolate<br />
                    -Crema<br />
                    -Cerezas<br />
                </td>
                <td style="vertical-align: top;" class="auto-style7">
                    Precio: $
                    <asp:Label ID="lblPrecio" runat="server" Font-Size="Large" Text=""></asp:Label>
                    &nbsp;C/U<br /> Cantidad(Unidades) :
                    <asp:TextBox ID="txtCantidad" runat="server" Height="17px"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtCantidad" ErrorMessage="(*)La cantidad de unidades debe estar entre 1 y 3" MaximumValue="3" MinimumValue="1" Type="Integer">(*)[1,3]</asp:RangeValidator>

                    <img alt="Torta Chocolate" class="auto-style8" longdesc="Torta de Chocolate" src="file:///C:/Users/vorte/Source/Repos/SistemaPanaderia/SistemaPanaderia/AplicacionWeb/img/torta-de-chocolate-esponjosa.jpg" />

                    <asp:Button ID="btnAgregar" runat="server" OnClick="btnAgregar_Click" Text="Agregar a Carrito" Width="152px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style9"></td>
            </tr>
        </table>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="71px" Width="399px" />
    </asp:Panel>


</asp:Content>
