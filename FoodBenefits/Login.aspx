<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FoodBenefits.Login" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
    <head>
        <link href="Content/login.css" rel="stylesheet" />
    </head>
    <body>      
            <form>                 
                     <img src="Image/login2.png"
                       <ui></ui>
                <div class="inner-addon left-addon">
                    <i class="glyphicon glyphicon-user"></i>
                    <div class="input">
                        <asp:TextBox ID="TxtUserName" runat="server" placeholder="Enter username" Class="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ErrorMessage="User name is required" ControlToValidate="TxtUserName" ForeColor="yellow"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="inner-addon left-addon">
                    <i class="glyphicon glyphicon-lock"></i>
                    <div class="input">
                        <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" placeholder="Enter password" Class="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Password is required" ControlToValidate="TxtPassword" ForeColor="yellow"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <asp:Button ID="button" runat="server" CssClass="btn btn-primary" Text="Login" OnClick="button_Click" />
                <br />
                <a href="#">Forget password?</a>             
            </form>
    </body>
</asp:Content>

