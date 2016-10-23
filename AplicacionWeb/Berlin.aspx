<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Berlin.aspx.cs" Inherits="AplicacionWeb.Berlin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        
        .auto-style10 {
            height: 244px;
            vertical-align: top;
            text-align: center;
        }
        .auto-style11 {
            height: 244px;
            width: 330px;
            text-align: center;
            vertical-align: top;
        }
        .auto-style12 {
            width: 330px;
        }
        .auto-style14 {
            text-align: left;
        }
        .auto-style15 {
            margin-top: 20px;
            margin-bottom: 20px;
            width: 200px;
            height: 119px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel ID="Titulo" runat="server" BorderStyle="None" Height="401px" Width="674px">
        <asp:Label ID="Label1" runat="server" Text="Berlin" BorderStyle="Solid" Font-Size="XX-Large" BorderColor="#CC9900" Font-Italic="True" Width="666px" style="text-align: center;"></asp:Label>
        <br />
        <br />
        <table style="width: 100%;">
            <tr>
                <td class="auto-style11">
                    <br />
                    Ingredientes:
                    <br />
                    <br />
                    -Harina
                    <br />
                    -Levadura<br />
                    -Huevo<br />
                    -Mantequilla para hornear<br />
                    -Polvo de hornear<br />
                    -Azucar<br />
                    -Manjar<br />
                    -Crema pastelera
                </td>
                <td class="auto-style10">
                    Precio: $<asp:Label ID="lblPrecio" runat="server" Font-Size="Large" Text=""></asp:Label>
                    &nbsp;C/U<br />
                    Cantidad(Unidades) :
                    <asp:TextBox ID="txtCantidad" runat="server" Height="17px"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtCantidad" ErrorMessage="(*)La cantidad de unidades debe estar entre 1 y 10" MaximumValue="10" MinimumValue="1" Type="Integer">(*)[1,10]</asp:RangeValidator>
                    <br />
                    <img alt="Berlin" class="auto-style15" longdesc="Berlin" src="file:///C:/Users/vorte/Source/Repos/SistemaPanaderia/SistemaPanaderia/AplicacionWeb/img/Krapfen-repostería-alemana.jpg" />
                    <asp:Button ID="btnAgregar" runat="server" OnClick="btnAgregar_Click" Text="Agregar a Carrito" Width="152px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCantidad" ErrorMessage="El valor debe ser ingresado">.</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div class="auto-style14">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </div>
    </asp:Panel>
</asp:Content>
