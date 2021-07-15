<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="VerEstaciones.aspx.cs" Inherits="Medidores_web.VerEstaciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="mt-5">
        <asp:GridView ID="estacionesGrid" runat="server"  AutoGenerateColumns="false" 
            CssClass="table table-hover" OnRowCommand="estacionesGrid_RowCommand">
            <Columns>
                <asp:BoundField HeaderText ="Id" DataField="IdEstacion" />
                <asp:BoundField HeaderText ="Capacidad" DataField="Capacidad" />
                <asp:BoundField HeaderText ="Region" DataField="Region" />
                <asp:BoundField HeaderText ="Direccion" DataField="Direccion" />
                <asp:BoundField HeaderText ="Horario Incio" DataField="HorarioIncio" />
                <asp:BoundField HeaderText ="Horario Termino" DataField="HorarioTermino" />
                <asp:TemplateField HeaderText="Acciones">
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" Text="Eliminar" CssClass="btn btn-danger" CommandName="eliminar"
                          CommandArgument='<%# Eval("IdEstacion")%>'  />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
