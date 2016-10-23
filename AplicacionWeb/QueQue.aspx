<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="QueQue.aspx.cs" Inherits="AplicacionWeb.QueQue" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 338px;
        }
        .auto-style5 {
            text-align: center;
            vertical-align: top;
        }
        .auto-style6 {
            width: 338px;
            text-align: center;
            vertical-align: top;
        }
        .auto-style7 {
            margin-top: 20px;
            margin-bottom: 20px;
            width: 190px;
            height: 160px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel ID="Titulo" runat="server" BorderStyle="None" Height="418px" Width="674px">
        <asp:Label ID="Label1" runat="server" Text="Queque" BorderStyle="Solid" Font-Size="XX-Large" BorderColor="#CC9900" Font-Italic="True" Style="text-align: center" Width="667px"></asp:Label>
        <br />
        <br />
        <table style="width: 100%;">
            <tr>
                <td class="auto-style6">
                    <br />
                    Ingredientes:
                    <br />
                    <br />
                    -Harina
                    <br />
                    -Azucar<br />
                    -Huevo<br />
                    -Mantequilla para hornear<br />
                    -Polvo de hornear<br />
                    -Agua
                </td>
                <td class="auto-style5">
                    Precio: $<asp:Label ID="lblPrecio" runat="server" Font-Size="Large" Text=""></asp:Label>
                    &nbsp;C/U<br /> Cantidad(Unidades) :
                    <asp:TextBox ID="txtCantidad" runat="server" Height="17px"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtCantidad" ErrorMessage="(*)La cantidad de unidades debe estar entre 1 y 10" MaximumValue="10" MinimumValue="1" Type="Integer">(*)[1,10]</asp:RangeValidator>
                    <br />

                    <img alt="Queque" class="auto-style7" longdesc="Queque" src="file:///C:/Users/vorte/Source/Repos/SistemaPanaderia/SistemaPanaderia/AplicacionWeb/img/postres.jpg" />

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
