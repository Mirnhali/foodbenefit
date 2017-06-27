<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="FoodBenefits.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Content/GrideView.css" rel="stylesheet" />
  
     <%--<legend>Welcome to User Database</legend>--%>
     <div class="container">
    <div id="headline" class="header">Welcome to User Database</div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="User_ID" DataSourceID="SqlDataSource1" ShowFooter="True" OnRowDataBound="GridView1_RowDataBound">
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="User_ID" InsertVisible="False" SortExpression="User_ID">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("User_ID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("User_ID") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                        <asp:LinkButton ValidationGroup="INSERT" OnClick="lblInsert_Click" ID="lbInsert" runat="server">Insert</asp:LinkButton>
                    </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="FirstName" SortExpression="FirstName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("FirstName") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvFname" runat="server" ErrorMessage="First Name is required" ControlToValidate="TextBox1" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("FirstName") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                        <asp:TextBox ID="txtFname" runat="server" class="footer-box"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvInsertFname" runat="server" ErrorMessage="First Name is required" ControlToValidate="txtFname" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="LastName" SortExpression="LastName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("LastName") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("LastName") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                        <asp:TextBox ID="txtLname" runat="server" class="footer-box"></asp:TextBox>
                         <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvInsertLname" runat="server" ErrorMessage="Last Name is required" ControlToValidate="txtLname" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="UserName" SortExpression="UserName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("UserName") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("UserName") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtUname" runat="server" class="footer-box"></asp:TextBox>
                    <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvInsertUname" runat="server" ErrorMessage="User Name is required" ControlToValidate="txtUname" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Password" SortExpression="Password">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Password") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Password") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtPass" runat="server" class="footer-box"></asp:TextBox>
                    <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvInsertPass" runat="server" ErrorMessage="Password is required" ControlToValidate="txtPass" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="ConfirmPassword" SortExpression="ConfirmPassword">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("ConfirmPassword") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("ConfirmPassword") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtCpass" runat="server" class="footer-box"></asp:TextBox>
                    <asp:CompareValidator ValidationGroup="INSERT" ID="CVInsertCpass" runat="server" ControlToCompare="txtPass" ControlToValidate="txtCpass" ErrorMessage="Booth password must be same" ForeColor="Red"></asp:CompareValidator>
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Gender" SortExpression="Gender">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server"> <%--SelectedValue='<%# Bind("Gender") %>'--%>
                        <asp:ListItem>Select Gender</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvEditGender" runat="server" ErrorMessage="Gender is required"
                        ControlToValidate="DropDownList1" Text="*" ForeColor="Red" InitialValue="Select Gender">
                    </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>Select Gender</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvInsertGender" runat="server" ErrorMessage="Gender is required"
                        ControlToValidate="DropDownList2" ValidationGroup="INSERT" Text="*" ForeColor="Red" InitialValue="Select Gender">
                    </asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Address" SortExpression="Address">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtAdds" runat="server" class="footer-box"></asp:TextBox>
                    <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvInsertAdds" runat="server" ErrorMessage="Address is required" ControlToValidate="txtAdds" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="EmailID" SortExpression="EmailID">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("EmailID") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("EmailID") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtEmail" runat="server" class="footer-box"></asp:TextBox>
                    <asp:RegularExpressionValidator ValidationGroup="INSERT" ID="RegularExpInsertEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Valid email id is required" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </FooterTemplate>
            </asp:TemplateField>

            <asp:CheckBoxField DataField="IsAdmin" HeaderText="IsAdmin" SortExpression="IsAdmin" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>

     <asp:ValidationSummary ValidationGroup="INSERT" ID="ValidationSummary1" ForeColor="Red" runat="server" Height="91px" />
    <asp:ValidationSummary ID="ValidationSummary2" ForeColor="Red" runat="server" Height="91px" />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FoodBenefitsConnectionString %>" DeleteCommand="DELETE FROM [Registrations] WHERE [User_ID] = @User_ID" InsertCommand="INSERT INTO [Registrations] ([FirstName], [LastName], [UserName], [Password], [ConfirmPassword], [Gender], [Address], [EmailID], [IsAdmin]) VALUES (@FirstName, @LastName, @UserName, @Password, @ConfirmPassword, @Gender, @Address, @EmailID, @IsAdmin)" SelectCommand="SELECT * FROM [Registrations]" UpdateCommand="UPDATE [Registrations] SET [FirstName] = @FirstName, [LastName] = @LastName, [UserName] = @UserName, [Password] = @Password, [ConfirmPassword] = @ConfirmPassword, [Gender] = @Gender, [Address] = @Address, [EmailID] = @EmailID, [IsAdmin] = @IsAdmin WHERE [User_ID] = @User_ID">
        <DeleteParameters>
            <asp:Parameter Name="User_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="ConfirmPassword" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="EmailID" Type="String" />
            <asp:Parameter Name="IsAdmin" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="ConfirmPassword" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="EmailID" Type="String" />
            <asp:Parameter Name="IsAdmin" Type="Boolean" />
            <asp:Parameter Name="User_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource> 
        </div> 
</asp:Content>




