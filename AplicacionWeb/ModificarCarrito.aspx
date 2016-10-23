<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="ModificarCarrito.aspx.cs" Inherits="AplicacionWeb.ModificarCarrito" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 109px;
        }
        .auto-style5 {
            width: 177px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table style="width:100%;">
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">Modificacion de Pedido</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Codigo:</td>
                <td class="auto-style5">
                    <asp:Label ID="lblCodigo" runat="server" Text=""></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Nombre:</td>
                <td class="auto-style5">
                    <asp:Label ID="lblNombre" runat="server" Text=""></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Precio Unitario:</td>
                <td class="auto-style5">
                    <asp:Label ID="lblPrecioUni" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Cantidad:</td>
                <td class="auto-style5">
                    Actual: <asp:Label ID="lblCantActual" runat="server" Text=""></asp:Label>
                    <br />
                    Nueva: <asp:TextBox ID="txtCantidad" runat="server" Width="81px"></asp:TextBox>
                </td>
                <td>
                    <asp:RangeValidator ID="rgCantidad" runat="server" ControlToValidate="txtCantidad" ErrorMessage="El rango debe estar entre 1 y 10" MaximumValue="10" MinimumValue="1" Type="Integer">*</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Categoria:</td>
                <td class="auto-style5">
                    <asp:Label ID="lblCategoria" runat="server" Text=""></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="btnConfirmar" runat="server" Text="Confirmar" OnClick="btnConfirmar_Click" />&nbsp;
                    <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CausesValidation="False" OnClick="btnCancelar_Click" />
                </td>
                <td>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
            </tr>
        </table>
</asp:Content>
