<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SistemaElectronico._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <asp:TextBox ID="TxtProcurar" style="padding: 15px;" runat="server" placeholder="Procurar Clientes..." autocomplete="off" Width="400px" ></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" />
                  <div align="center">
                  
                  <asp:GridView ID="GVVerDados" runat="server" AutoGenerateColumns="False" ShowFooter="True" ShowHeaderWhenEmpty="True"
                        CellPadding="4" ForeColor="#333333" GridLines="None">
                      
                      <AlternatingRowStyle BackColor="White" />
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
                      <Columns>                  
                          <asp:TemplateField HeaderText="INFLAÇÃO DO DELITO">
                              <ItemTemplate>
                                  <asp:Label Text='<%#Eval("INFLAÇÃO")%>' runat="server" />
                              </ItemTemplate>
                          </asp:TemplateField>
                          
                          <asp:TemplateField HeaderText="Nº de Artigo">
                              <ItemTemplate>
                                  <asp:Label Text='<%#Eval("Artigo")%>' runat="server" />
                              </ItemTemplate>
                          </asp:TemplateField>

                          <asp:TemplateField HeaderText="LEI E CÓDIGO">
                              <ItemTemplate>
                                  <asp:Label Text='<%#Eval("LEI")%>' runat="server" />
                              </ItemTemplate>
                          </asp:TemplateField>

                          <asp:TemplateField HeaderText="MULTA">
                              <ItemTemplate>
                                  <asp:Label Text='<%#Eval("MULTA")%>' runat="server" />
                              </ItemTemplate>
                          </asp:TemplateField>

                          </Columns>
                      
                  </asp:GridView>

                      <br />
                      <asp:Label ID="LblStatus" runat="server" Text="Label"></asp:Label>

              </div>
</asp:Content>
