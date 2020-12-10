<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="UserRegistrationWebApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1 style="text-align:center">User Registration Form</h1>
    </div>
    <div class="container">
        <asp:Label ID="Label4" runat="server" Text="User ID" style="padding-right: 21px"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Width="170px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Name" style="padding-right: 30px"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Width="170px"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Email" style="padding-right: 33px"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" Width="170px"></asp:TextBox>
        <br />
        <br />
        <div   style="padding-left: 33px">
            <asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click"/>
            <asp:Button ID="Button2" runat="server" Text="Search" OnClick="Button2_Click"/>
            <asp:Button ID="Button3" runat="server" Text="Update" OnClick="Button3_Click"/>
            <asp:Button ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click"/>
        </div>
        <br />
        <div style="padding-left: 33px">
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        </div>
        <br />
        <div  style="padding-left: 33px">
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        </div>
        <br />
        
    </div>

</asp:Content>
