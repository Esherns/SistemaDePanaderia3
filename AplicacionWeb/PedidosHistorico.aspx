<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="PedidosHistorico.aspx.cs" Inherits="AplicacionWeb.Pedidos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 142px;
            text-align: right;
        }
        .auto-style6 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="pnlPedidos" runat="server">
        <table style="width:100%;">
            <tr>
                <td class="auto-style5">Rut
                    <br />
                    (Sin Digito Verficador)<br />
                    <br />
                    <asp:DropDownList ID="ddEstadisticas" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                        <asp:ListItem Value="0">Mayor Valor</asp:ListItem>
                        <asp:ListItem Value="1">Menor Valor</asp:ListItem>
                        <asp:ListItem Value="2">Ultimo Pedido</asp:ListItem>
                        <asp:ListItem Value="3">Pedido Mas Antiguo</asp:ListItem>
                        <asp:ListItem Value="4">Promedio Valor</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp; </td>
                <td>
                    <asp:TextBox ID="txtConsultaRut" runat="server" Height="20px" Width="220px"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator ID="rqRut" runat="server" ControlToValidate="txtConsultaRut" ErrorMessage="Se requiere un Rut">(*)</asp:RequiredFieldValidator>
&nbsp;<asp:Button ID="btnConsultar" runat="server" Text="Consultar" OnClick="btnConsultar_Click" />
                    &nbsp;<asp:Label ID="lblError" runat="server" Text=""></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lbEstadisticas" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <div class="auto-style6">
            <asp:GridView ID="gvListaPedidos" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="367px" AllowPaging="True" OnPageIndexChanging="gvListaPedidos_PageIndexChanging" PageSize="8">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="IdPedido" HeaderText="Codigo" SortExpression="IdPedido" />
                    <asp:BoundField DataField="Valor" HeaderText="Valor" SortExpression="Valor" />
                    <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <br />
            <br />
            <br />
        </div>
    </asp:Panel>
</asp:Content>
