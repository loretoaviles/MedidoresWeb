<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="VerPuntos.aspx.cs" Inherits="Medidores_web.VerPuntos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <asp:DropDownList ID="tipoDdl" runat="server" AutoPostBack="true" 
        OnSelectedIndexChanged="tipoddl_SelectedIndexChanged">
        <asp:ListItem Value="1" Selected="True" Text="Electrico"></asp:ListItem>
        <asp:ListItem Value="2" Text="Dual"></asp:ListItem>
    </asp:DropDownList>

        <asp:CheckBox ID="todosChx" Checked="true" runat="server" AutoPostBack="true"
            OnCheckedChanged="todosChx_CheckedChanged" Text="Ver Todos"/>
    </div>
    <div class="mt-5">
        <asp:GridView ID="puntosGrid" runat="server"
            AutoGenerateColumns="false" CssClass="table table-hover" OnRowCommand="puntosGrid_RowCommand" 
            >
        <Columns>
              <asp:BoundField HeaderText ="id" DataField="IdPuntoCarga" />
                <asp:BoundField HeaderText ="Tipo" DataField="TipoTxt" />
                <asp:BoundField HeaderText ="Capacidad" DataField="Capacidad" />
                <asp:BoundField HeaderText ="Vida" DataField="Vida" />
                <asp:BoundField HeaderText ="Estación" DataField="Estacion" />
                <asp:TemplateField HeaderText="Acciones">
                     <ItemTemplate>
                         <asp:Button ID="Button1" runat="server" Text="Actualizar" CssClass="btn btn-danger" CommandName="actualizar"
                             CommandArgument='<%# Eval("IdPuntoCarga")%>'/>
                     </ItemTemplate>
                </asp:TemplateField>
        </Columns>
        </asp:GridView>
    </div>
</asp:Content>

