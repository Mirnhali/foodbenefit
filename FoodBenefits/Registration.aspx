<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="FoodBenefits.Registration" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            left: 0px;
            top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <header>
        <link href="Content/Regis.css" rel="stylesheet" />
        </header>
    <body>
        <form>
            <panel><asp:Label ID="registrationMessage" runat="server" Class="lblMessagebox" Text=" "></asp:Label></panel>
                <table>
                    <legend>Registration Form <i class="fa fa-pencil pull-right"></i></legend>
              
                  
                <%--<div class="inner-addon left-addon">
                    <i class="glyphicon glyphicon-user"></i>--%>
            <tr><td style="color: #FFFFFF; font-size: 16px">First Name:</td><td>
                <div class="inner-addon left-addon">
                    <i class="glyphicon glyphicon-user"></i>
                <asp:TextBox ID="TextBoxFname" runat="server" placeholder="Enter first name"></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="First Name is required" ControlToValidate="TextBoxFname" ForeColor="Red"></asp:RequiredFieldValidator></td></tr>
                    </div>

                <%--<div class="inner-addon left-addon">
                    <i class="glyphicon glyphicon-user"></i>--%>
            <tr><td style="color: #FFFFFF; font-size: 16px">Last Name:</td><td>
                <div class="inner-addon left-addon">
                    <i class="glyphicon glyphicon-user"></i>
                <asp:TextBox ID="TextBoxLname" runat="server" placeholder="Enter last name"></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Last Name is required" ControlToValidate="TextBoxLname" ForeColor="Red"></asp:RequiredFieldValidator></td></tr>
                    </div>
               
                <%--<div class="inner-addon left-addon">
                    <i class="glyphicon glyphicon-user"></i>--%>
            <tr><td style="color: #FFFFFF; font-size: 16px">User Name:</td><td>
                <div class="inner-addon left-addon">
                    <i class="glyphicon glyphicon-user"></i>
                <asp:TextBox ID="TextBoxUname" runat="server" placeholder="Enter user name"></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="User Name is required" ControlToValidate="TextBoxUname" ForeColor="Red"></asp:RequiredFieldValidator></td></tr>
                    </div>

                <%--<div class="inner-addon left-addon">
                    <i class="glyphicon glyphicon-lock"></i>--%>
            <tr><td style="color: #FFFFFF; font-size: 16px">Password: </td><td>
                <div class="inner-addon left-addon">
                    <i class="glyphicon glyphicon-lock"></i>
                <asp:TextBox ID="TextBoxPassword" runat="server" placeholder="Enter password" TextMode="Password" MaxLength="10"></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Password is required" ControlToValidate="TextBoxPassword" ForeColor="Red"></asp:RequiredFieldValidator></td></tr>
                    </div>

               <%-- <div class="inner-addon left-addon">
                    <i class="glyphicon glyphicon-lock"></i>--%>
            <tr><td style="color: #FFFFFF; font-size: 16px">Confirm Password:</td><td>
               <div class="inner-addon left-addon">
                    <i class="glyphicon glyphicon-lock"></i>
                <%--<asp:TextBox ID="TextBoxConfirmPassword" runat="server" placeholder="Confirm password" TextMode="Password" MaxLength="10"></asp:TextBox>--%>
                    <asp:TextBox ID="TextBoxConfirmPassword" runat="server" placeholder="Confirm password" TextMode="Password" MaxLength="10"></asp:TextBox>
                    </td><td><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Confirm Password is required" ControlToValidate="TextBoxConfirmPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPassword" ControlToValidate="TextBoxConfirmPassword" ErrorMessage="Booth password must be same" ForeColor="Red"></asp:CompareValidator>
                </td></tr>
                    </div>
                <%--<div class="radio">--%>
                    <tr>
                        <td style="color: #FFFFFF; font-size: 16px">Gender:</td>

                        <td style="color: #FFFFFF; font-size: 12px; position: relative;" aria-atomic="False" aria-orientation="horizontal">
                            <asp:RadioButtonList ID="RadioButtonListGender" runat="server" Font-Overline="False" TextAlign="Left">
                                <asp:ListItem>  Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:RadioButtonList>
                           
                        </td>
                    </tr>
                    </div>
                   

                <%--<div class="inner-addon left-addon">
                    <i class="glyphicon glyphicon-home"></i>--%>
                    <tr>
                        <td style="color: #FFFFFF; font-size: 16px">Address:</td>
                        <td>
                            <div class="inner-addon left-addon">
                                <i class="glyphicon glyphicon-pencil"></i>
                                <asp:TextBox ID="TextBoxAddress" runat="server" placeholder="address"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" placeholder="address" ErrorMessage="Address is required" ControlToValidate="TextBoxAddress" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                    </div>
       
                <%--<div class="inner-addon left-addon">
                    <i class="glyphicon glyphicon-email"></i>--%>
             <tr><td style="color: #FFFFFF; font-size: 16px">EmailID:</td><td>
                 <div class="inner-addon left-addon">
                    <i class="glyphicon glyphicon-envelope"></i>
                 <asp:TextBox ID="TextBoxEmailID" runat="server" placeholder="e-mail"></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="E-mailId is required" ControlToValidate="TextBoxEmailID" ForeColor="Red"></asp:RequiredFieldValidator>
                 <br />
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmailID" ErrorMessage="Valid email id is required" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                 </td></tr>
                    </div>                  
        <div>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Submit" OnClick="Button1_Click"></asp:Button></td>
            </tr>
        </div>
                </table>
            
            <script src="js/jquery.js" type="text/javascript"></script>
            <script src="js/bootstrap.min.js" type="text/javascript"></script>
            <script src="js/jquery.backstretch.js" type="text/javascript"></script>
            <script type="text/javascript">
        
        $.backstretch(
        [
            "Image/warm01.jpg",
            "Image/peaches_spices1.jpg",
            "Image/strawberry_plate3.jpg",
            "Image/honey_flowers1.jpg"

        ],

        {
            duration: 4500,
            fade: 1500
        }
    );
            </script>

        </form>
    </body>
</asp:Content>
