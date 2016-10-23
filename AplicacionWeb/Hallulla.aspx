<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Hallulla.aspx.cs" Inherits="AplicacionWeb.Hallulla" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 337px;
        }
        .auto-style5 {
            width: 337px;
            text-align: center;
            vertical-align: top;
        }
        .auto-style6 {
            margin-top: 20px;
            margin-bottom: 20px;
            width: 241px;
            height: 125px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Titulo" runat="server" BorderStyle="None" Height="418px" Width="674px">
        <asp:Label ID="Label1" runat="server" Text="Hallulla" BorderStyle="Solid" Font-Size="XX-Large" BorderColor="#CC9900" Font-Italic="True" Style="text-align: center" Width="668px"></asp:Label>
        <br />
        <br />
        <table style="width: 100%;">
            <tr>
                <td class="auto-style5">
                    <br />
                    Ingredientes:
                    <br />
                    <br />
                    -Harina
                    <br />
                    -Azucar<br />
                    -Manteca<br />
                    -Agua<br />
                    -Levadura<br />
                </td>
                <td style="text-align: center; vertical-align: top;">
                    Precio: $
                    <asp:Label ID="lblPrecio" runat="server" Font-Size="Large" Text=""></asp:Label>
                    &nbsp;K/G<br />
                    Cantidad(Unidades) :<asp:TextBox ID="txtCantidad" runat="server" Height="17px"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtCantidad" ErrorMessage="(*)La cantidad de unidades debe estar entre 1 y 15" MaximumValue="15" MinimumValue="1" Type="Integer">(*)[1,15]</asp:RangeValidator>
                    <br />
                    <img alt="Hallulla" class="auto-style6" longdesc="Pan Hallulla" src="file:///C:/Users/vorte/Source/Repos/SistemaPanaderia/SistemaPanaderia/AplicacionWeb/img/hallulla.jpg" />
                    <asp:Button ID="btnAgregar0" runat="server" OnClick="btnAgregar_Click" Text="Agregar a Carrito" Width="152px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCantidad" ErrorMessage="El valor debe ser ingresado">.</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="71px" Width="574px" />
    </asp:Panel>
</asp:Content>
