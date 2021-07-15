<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="AgregarEstacion.aspx.cs" Inherits="Medidores_web.AgregarEstacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
       <asp:Label ID="mensajeLbl" CssClass="text-success h1" runat="server"></asp:Label>
    </div>

    <div class="card">
        <div class="card-header bg-primary text-white">
            Ingresar Estación de Servicio
        </div>
        <div class="card-body">
            <div class="form-group">
                <label for="id">ID</label>
                 <asp:TextBox ID="id" runat="server" TextMode="Number" min="1" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                    ErrorMessage="Debe ingresar el id" CssClass="text-danger"
                    ControlToValidate="id"></asp:RequiredFieldValidator>
                <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Debe ser una id única" CssClass="text-danger"
                    ControlToValidate="id" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>

            </div>
            <div class="form-group">
                <label for="capa">Capacidad</label>

                <asp:TextBox ID="capa" runat="server" TextMode="Number" min="1" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                    ErrorMessage="Debe ingresar capacidad" CssClass="text-danger"
                    ControlToValidate="capa"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label for="regionTxt">Region</label>
                <asp:TextBox ID="regionTxt"  runat="server" CssClass="form-control"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                    ErrorMessage="Debe ingresar region" CssClass="text-danger"
                    ControlToValidate="regionTxt"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label for="direccionTxt">Direccion</label>
                <asp:TextBox ID="direccionTxt" runat="server" CssClass="form-control"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                    ErrorMessage="Debe ingresar direccion" CssClass="text-danger"
                    ControlToValidate="direccionTxt"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label for="horaInicioTxt">Hora Inicio</label>
                <asp:TextBox ID="horaInicioTxt" TextMode="Time" runat="server" CssClass="form-control"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                    ErrorMessage="Debe ingresar hora inicio" CssClass="text-danger"
                    ControlToValidate="horaInicioTxt"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label for="horaTerminoTxt">Hora Termino</label>
                <asp:TextBox ID="horaTerminoTxt" TextMode="Time" runat="server" CssClass="form-control"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                    ErrorMessage="Debe ingresar hora termino" CssClass="text-danger"
                    ControlToValidate="horaTerminoTxt"></asp:RequiredFieldValidator>
            </div>
       </div>
                <asp:Button ID="ingresarEstacionbtn" runat="server" Text="Ingresar" CssClass="btn btn-success" OnClick="ingresarEstacionbtn_Click"/>
            </div>

</asp:Content>

