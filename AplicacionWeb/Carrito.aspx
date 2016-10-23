<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="AplicacionWeb.Carrito" ViewStateMode="Enabled" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
            text-align: center;
            height: 23px;
            font-size: 20px;
        }
        .auto-style5 {
            width: 199px;
            text-align: right;
        }
        .auto-style6 {
            text-align: right;
            width: 107px;
        }
        .auto-style9 {
            text-align: center;
        }
        .auto-style10 {
            width: 199px;
            text-align: right;
            height: 23px;
        }
        .auto-style12 {
            text-align: right;
            width: 107px;
            height: 23px;
        }
        .auto-style14 {
            height: 23px;
        }
        .auto-style15 {
            width: 289px;
        }
        .auto-style16 {
            width: 289px;
            height: 23px;
        }
        .auto-style17 {
            width: 313px;
        }
        .auto-style18 {
            width: 313px;
            height: 23px;
        }
        .auto-style19 {
            text-align: center;
            height: 23px;
            width: 872px;
            font-size: 20px;
        }
        .auto-style20 {
            width: 872px;
        }
        .auto-style22 {
            width: 298px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%; border-style: dotted; border-width: 2px; ">
    <tr>
        <td class="auto-style19">Producto</td>
        <td class="auto-style4">Eliminar</td>
    </tr>
    <tr>
        <td class="auto-style20">
            <asp:ListBox ID="lboxPedido" runat="server" Width="887px" AppendDataBoundItems="True"></asp:ListBox>
        </td>
        <td class="auto-style9">
            <asp:Button ID="btnEliminar" runat="server" Text="Eliminar Seleccionado" CausesValidation="False" OnClick="btnEliminar_Click" ViewStateMode ="Enabled"/>
            <br />
            <asp:Button ID="btnModificar" runat="server" Text="Modificar Seleccionado" CausesValidation="False" OnClick="btnModificar_Click" Width="195px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style20" style="text-align: center; font-size: 22px">Total a Pagar:
            <asp:Label ID="lblTotPagar" runat="server" Text=""></asp:Label>
        </td>
        <td class="auto-style22">&nbsp;</td>
    </tr>
</table>
    <table style="width: 100%;">
        <tr>
            <td class="auto-style5">¿Es Cliente? Ingrese su Rut:<br />
                Sin Digito Verificador (DV)</td>
            <td class="auto-style15">
                <asp:TextBox ID="txtYaCliente" runat="server" Width="235px"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:Button ID="btnVerificarCliente" runat="server" Text="Verificar" CausesValidation="False" OnClick="btnVerificarCliente_Click" />
            </td>
            <td class="auto-style17">
                <asp:Label ID="lblVerificacion" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style16">
                Puede evitar el formulario de abajo <br />
                si ya a comprado anteriormente.</td>
            <td class="auto-style12"></td>
            <td class="auto-style18">
                </td>
            <td class="auto-style14"></td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style15">
                &nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style17">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">Nombre:</td>
            <td class="auto-style15">
                <asp:TextBox ID="txtNombre" runat="server" Width="235px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ReqNombre" runat="server" ErrorMessage="Se requiere un nombre." Text="(*)" Enabled="True" ControlToValidate="txtNombre"></asp:RequiredFieldValidator>
                <asp:CustomValidator ID="valNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="Requiere un nombre Mayor a 3 Letras y Menor a 100 Letras" OnServerValidate="valNombre_ServerValidate">(*)</asp:CustomValidator>
            </td>
            <td class="auto-style6">Rut:</td>
            <td class="auto-style17">
                <asp:TextBox ID="txtRut" runat="server" Width="138px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ReqRut" runat="server" ControlToValidate="txtRut" ErrorMessage="Se requiere un Rut">(*)</asp:RequiredFieldValidator>
                <asp:CustomValidator ID="valRut" runat="server" ControlToValidate="txtRut" ErrorMessage="El Digito Verificador No es valido" OnServerValidate="valRut_ServerValidate">(*)</asp:CustomValidator>
                DV:<asp:TextBox ID="txtDV" runat="server" Width="21px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ReqDV" runat="server" ControlToValidate="txtDV" ErrorMessage="Se reuiere un Digito Verificador">(*)</asp:RequiredFieldValidator>
                </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">Apellido:</td>
            <td class="auto-style15">
                
                <asp:TextBox ID="txtApellido" runat="server" Width="235px"></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="rqApellido" runat="server" ControlToValidate="txtApellido" ErrorMessage="Se debe ingresar un apellido">(*)</asp:RequiredFieldValidator>
                
            </td>
            <td class="auto-style6">E-Mail:</td>
            <td class="auto-style17">
                <asp:TextBox ID="txtEmail" runat="server" Width="226px"></asp:TextBox>
            &nbsp;(Opcional)</td>
            <td class="auto-style9">
                <asp:CheckBox ID="chkConfirmarDatos" runat="server" Text="Confirmar Datos" AutoPostBack="True" OnCheckedChanged="chkConfirmarDatos_CheckedChanged" />
            </td>
        </tr>
        <tr>
            <td class="auto-style10">Telefono</td>
            <td class="auto-style16"><asp:TextBox ID="txtTelefono" runat="server" Width="235px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ReqTelefono" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Se requiere un Numero de telefono">(*)</asp:RequiredFieldValidator>
                <asp:CustomValidator ID="valTelefono" runat="server" ControlToValidate="txtTelefono" ErrorMessage="El numero de telefono debe tener entre 9 y 11 numeros" OnServerValidate="valTelefono_ServerValidate">(*)</asp:CustomValidator></td>
            <td class="auto-style12"></td>
            <td class="auto-style18"></td>
            <td class="auto-style14"></td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style15">
                <asp:Button ID="btnAgregar" runat="server" Text="Mas Productos" OnClick="btnAgregar_Click" CausesValidation="False" />
            </td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style17">
                <asp:Button ID="btnEncargar" runat="server" Text="Encargar" OnClick="btnEncargar_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
</asp:Content>
