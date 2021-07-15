<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="ActualizarPunto.aspx.cs" Inherits="Medidores_web.ActualizarPunto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
       <asp:Label ID="mensajeLbl" CssClass="text-success h1" runat="server"></asp:Label>
    </div>

    <div class="card">
        <div class="card-header bg-primary text-white">
            Actualizar Punto de Carga
        </div>
        <div class="card-body">
            <div class="form-group">
                <label for="id">ID</label>

                <asp:TextBox ID="id" runat="server" type="number" min="1" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                    ErrorMessage="Debe ingresar el id" CssClass="text-danger"
                    ControlToValidate="id"></asp:RequiredFieldValidator>
            </div>
             <div class="form-group">
                <label for="tipoRbl">tipo</label>
                <asp:RadioButtonList ID="tipoRbl" runat="server" CssClass="form-control">
                    <asp:ListItem Value="1" Text="Electrico" Selected="True"></asp:ListItem>
                    <asp:ListItem Value="2" Text="Dual"></asp:ListItem>

                </asp:RadioButtonList>
            </div>

             <div class="form-group">
                <label for="capa">Capacidad</label>

                <asp:TextBox ID="capa" runat="server" TextMode="Number" min="1" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                    ErrorMessage="Debe ingresar capacidad" CssClass="text-danger"
                    ControlToValidate="capa"></asp:RequiredFieldValidator>
            </div>
            
            <div class="form-group">
                <label for="vidaTxt">Vida</label>
                <asp:TextBox ID="vidaTxt" TextMode="Date" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                    ErrorMessage="Debe ingresar fecha" CssClass="text-danger"
                    ControlToValidate="vidaTxt"></asp:RequiredFieldValidator>

            </div>
            
            <div class="form-group">
                 <label for="estacionDdl">Estación</label>
               <asp:DropDownList ID="estacionDdl" runat="server" AutoPostBack="true" CssClass="form-control" >
               </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Debe agregar una estación de servicio" 
                    CssClass="text-danger"  ControlToValidate="estacionDdl"></asp:RequiredFieldValidator>

              </div>

         

    </div>
        <asp:Button ID="actualizarBtn" runat="server" Text="Actualizar"  CssClass="btn btn-success" OnClick="actualizarBtn_Click"/>
        </div>

</asp:Content>
