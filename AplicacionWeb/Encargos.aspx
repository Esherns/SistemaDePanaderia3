<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Encargos.aspx.cs" Inherits="AplicacionWeb.Encargos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            text-align: center;
            height: 23px;
            font-size: 20px;
        }
        .auto-style6 {
            text-align: center;
            width: 332px;
        }
        .auto-style7 {
            text-align: center;
            height: 23px;
            width: 332px;
            font-size: 20px;
        }
        .auto-style8 {
            text-align: center;
            height: 23px;
            width: 420px;
            font-size: 20px;
        }
        .auto-style9 {
            text-align: center;
            width: 420px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%; border-style: dotted; border-width: 2px;">
        <tr>
            <td class="auto-style7">Panaderia</td>
            <td class="auto-style8">Tortas</td>
            <td class="auto-style5">Reposteria</td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Button ID="btnMarraqueta" runat="server" Text="Marraqueta" Width="110px" OnClick="btnMarraqueta_Click" />
            </td>
            <td class="auto-style8">
                <asp:Button ID="btnSelvaNegra" runat="server" Text="Selva Negra" Width="110px" OnClick="btnSelvaNegra_Click" />
            </td>
            <td class="auto-style5">
                <asp:Button ID="btnQueque" runat="server" Text="Queque" Width="110px" OnClick="btnQueque_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Button ID="btnHallulla" runat="server" Text="Hallulla" Width="110px" OnClick="btnHallulla_Click" />
            </td>
            <td class="auto-style9">
                <asp:Button ID="btnLucuma" runat="server" Text="Lucuma" Width="110px" OnClick="btnLucuma_Click" />
            </td>
            <td class="auto-style4">
                <asp:Button ID="btnBerlin" runat="server" Text="Berlin" Width="110px" OnClick="btnBerlin_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Button ID="btnDobladita" runat="server" Text="Dobladita" Width="110px" OnClick="btnDobladita_Click" />
            </td>
            <td class="auto-style9">
                <asp:Button ID="btnChocolate" runat="server" Text="Chocolate" Width="110px" OnClick="btnChocolate_Click" />
            </td>
            <td class="auto-style4">
                <asp:Button ID="btnPieLimon" runat="server" Text="Pie de Limon" Width="110px" OnClick="btnPieLimon_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">Al presionar el boton se agregara 1KG del producto de Panaderia a su carrito.</td>
            <td class="auto-style9">Al presionar el Boton de Agregara 1 Torta al Carrito</td>
            <td class="auto-style4">Al presionar se agregara 1 producto de Reposteria al Carrito</td>
        </tr>
    </table>
</asp:Content>
