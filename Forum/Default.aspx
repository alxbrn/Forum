<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ennui_FORUM.Default1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Header" ContentPlaceHolderID="Header" runat="server">
    <span class="nav-title">Current Page</span>
    <asp:LinkButton ID="CreateThread" class="btn-floating btn-large halfway-fab waves-effect waves-light green darken-1" OnClick="CreateThread_OnClick" runat="server">
        <i class='material-icons'>add</i>
    </asp:LinkButton>
</asp:Content>

<asp:Content ID="Content" ContentPlaceHolderID="Content" runat="server">
    <h1>Page</h1>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT Forums.forum_id, Forums.forum_name, Forums.forum_desc, Categories.category_id, Categories.category_name, Categories.category_desc FROM Forums INNER JOIN Categories ON Forums.fk_category_id = Categories.category_id WHERE (Categories.category_id = 1)"></asp:SqlDataSource>

    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <HeaderTemplate>
            <ul class="collection with-header">
                <li class="collection-header">
                    <h4>First Person Shooter</h4>
                </li>
        </HeaderTemplate>
        <ItemTemplate>
            <li class="collection-item">
                <div><%# Eval("forum_name") %><a href="#!" class="secondary-content"><i class="material-icons">send</i></a></div>
            </li>
        </ItemTemplate>
        <FooterTemplate>
            </ul>
        </FooterTemplate>
    </asp:Repeater>

    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
</asp:Content>
