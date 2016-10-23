<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Lucuma.aspx.cs" Inherits="AplicacionWeb.Lucuma" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            margin-left: 0px;
        }
        .auto-style5 {
            width: 343px;
        }
        .auto-style6 {
            width: 343px;
            text-align: center;
            vertical-align: top;
        }
        .auto-style7 {
            margin-top: 20px;
            margin-bottom: 20px;
            width: 190px;
            height: 170px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel ID="Titulo" runat="server" BorderStyle="None" Height="418px" Width="674px">
        <asp:Label ID="Label1" runat="server" Text="Torta De Lucuma" BorderStyle="Solid" Font-Size="XX-Large" BorderColor="#CC9900" Font-Italic="True" CssClass="auto-style4" Width="668px" Style="text-align: center"></asp:Label>
        <br />
        <br />
        <table style="width: 100%;">
            <tr>
                <td class="auto-style6">
                    <br />
                    Ingredientes:
                    <br />
                    <br />
                    -Agua 
                    <br />
                    -Bizcocho<br />
                    -Huevo<br />
                    -Crema<br />
                    -Lucuma<br />
                    -Manjar<br />
                </td>
                <td style="text-align: center; vertical-align: top;">
                    Precio: $
                    <asp:Label ID="lblPrecio" runat="server" Font-Size="Large" Text=""></asp:Label>
                    &nbsp;C/U<br /> Cantidad(Unidades) :
                    <asp:TextBox ID="txtCantidad" runat="server" Height="17px"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtCantidad" ErrorMessage="(*)La cantidad de unidades debe estar entre 1 y 3" MaximumValue="3" MinimumValue="1" Type="Integer">(*)[1,3]</asp:RangeValidator>
                    <br />
                    <img alt="Torta Lucuma" class="auto-style7" longdesc="Torta de Lucuma" src="file:///C:/Users/vorte/Source/Repos/SistemaPanaderia/SistemaPanaderia/AplicacionWeb/img/torta_lucuma2.jpg" />
                    <asp:Button ID="btnAgregar" runat="server" OnClick="btnAgregar_Click" Text="Agregar a Carrito" Width="152px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCantidad" ErrorMessage="El valor debe ser ingresado">.</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="71px" Width="574px" />
    </asp:Panel>
</asp:Content>
