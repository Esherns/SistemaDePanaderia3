<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="SelvaNegra.aspx.cs" Inherits="AplicacionWeb.SelvaNegra" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style13 {
            margin-top: 20px;
            margin-bottom: 20px;
            width: 180px;
            height: 180px;
        }
        .auto-style14 {
            text-align: center;
            width: 353px;
            vertical-align: top;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel ID="Titulo" runat="server" BorderStyle="None" Height="418px" Width="674px">
        <asp:Label ID="Label1" runat="server" Text="Torta Selva Negra" BorderStyle="Solid" Font-Size="XX-Large" BorderColor="#CC9900" Font-Italic="True" Style="text-align: center" Width="668px"></asp:Label>
        <br />
        <br />
        <table style="width: 100%;">
            <tr>
                <td class="auto-style14">
                    <br />
                    Ingredientes:
                    <br />
                    <br />
                    -Bizcocho
                    <br />
                    -Azucar<br />
                    -Huevo<br />
                    -Chocolate<br />
                    -Cacao en polvo<br />
                    -Cerezas
                </td>
                <td style="vertical-align: top; text-align: center;">
                    Precio: $<asp:Label ID="lblPrecio" runat="server" Font-Size="Large" Text=""></asp:Label>
                    &nbsp;C/U<br />
                    Cantidad(Unidades) :<asp:TextBox ID="txtCantidad" runat="server" Height="17px" Width="106px"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtCantidad" ErrorMessage="(*)La cantidad de unidades debe estar entre 1 y 3" MaximumValue="3" MinimumValue="1" Type="Integer">(*)[1,3]</asp:RangeValidator>
                    <br />
                    <img alt="Selva  Negra" class="auto-style13" longdesc="Torta Selva Negra" src="file:///C:/Users/vorte/Source/Repos/SistemaPanaderia/SistemaPanaderia/AplicacionWeb/img/selvanegra.jpg" />
                    <asp:Button ID="btnAgregar0" runat="server" OnClick="btnAgregar_Click" Text="Agregar a Carrito" Width="152px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style14">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCantidad" ErrorMessage="El valor debe ser ingresado">.</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="71px" Width="574px" />
    </asp:Panel>
</asp:Content>
