<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="PieLimon.aspx.cs" Inherits="AplicacionWeb.PieLimon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">



    <style type="text/css">
        .auto-style5 {
            width: 353px;
        }

        .auto-style6 {
            width: 353px;
            text-align: center;
            vertical-align: top;
        }

        .auto-style7 {
            text-align: center;
            vertical-align: top;
        }

        .auto-style8 {
            margin-top: 20px;
            margin-bottom: 20px;
            width: 200px;
            height: 160px;
        }
    </style>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Titulo" runat="server" BorderStyle="None" Height="354px" Width="674px">
        <asp:Label ID="Label1" runat="server" Text="Pie de limon" BorderStyle="Solid" Font-Size="XX-Large" BorderColor="#CC9900" Font-Italic="True" Style="text-align: center" Width="668px"></asp:Label>
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
                    -Huevo<br />
                    -Mantequilla para hornear<br />
                    -Polvo de hornear
                    <br />
                    -Leche condensada<br />
                    -Merengue
                </td>
                <td class="auto-style7">
                    Precion: $<asp:Label ID="lblPrecio" runat="server" Font-Size="Large" Text=""></asp:Label>
                    &nbsp;C/U<br /> Cantidad(Unidades) :
                    <asp:TextBox ID="txtCantidad" runat="server" Height="17px"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtCantidad" ErrorMessage="(*)La cantidad de unidades debe estar entre 1 y 5" MaximumValue="5" MinimumValue="1" Type="Integer">(*)[1,5]</asp:RangeValidator>
                    <br />
                    <img alt="Pie de Limon" class="auto-style8" longdesc="Pie de Limon" src="file:///C:/Users/vorte/Source/Repos/SistemaPanaderia/SistemaPanaderia/AplicacionWeb/img/lemon_pie.jpg" />
                    <asp:Button ID="btnAgregar" runat="server" OnClick="btnAgregar_Click" Text="Agregar a Carrito" Width="152px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </asp:Panel>

</asp:Content>
