<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Week4_WebApplication.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome to Kai-Ann's Login Page</title>
    <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />

    <script>
        window.AddEventListener('pageshow', function (event) { 
            var form = document.getElementById("form1");
            form.reset();
        })
    </script>
    <style type="text/css">
        #form1 {
            height: 214px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 128px">
            <p>Welcome to Kai-Ann's Login Page</p>
            <br />
            <asp:Label ID="UserNameLabel" runat="server" Text="User Name: "></asp:Label>
            <asp:RequiredFieldValidator ID="UserNameValidator" runat="server" ErrorMessage="User Name is Required" ControlToValidate="UserName"></asp:RequiredFieldValidator>
            <asp:TextBox ID="UserName" runat="server" MaxLength="10"></asp:TextBox>
            <br />
            <asp:Label ID="PasswordLabel" runat="server" Text="Password: "></asp:Label>
            <asp:RequiredFieldValidator ID="PasswordValidator" runat="server" ErrorMessage="Password is Required" ControlToValidate="Password"></asp:RequiredFieldValidator>
&nbsp;
            <asp:TextBox ID="Password" runat="server" TextMode="Password" MaxLength="20"></asp:TextBox>
            <br />
            <br />
            <br />
        </div>
    &nbsp;
        <br />
        <br />
        <asp:Label ID="MessageLabel" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="LoginButton" runat="server" Text="Login" OnClick="Login_OnClick"/>
        <br />
        <asp:SqlDataSource ID="UserLogin" runat="server" ConnectionString="<%$ ConnectionStrings:user_data_2ConnectionString %>" ProviderName="<%$ ConnectionStrings:user_data_2ConnectionString.ProviderName %>" SelectCommand="SELECT [ID], [User_id], [PlainTextPassword] FROM [user_data] WHERE ([User_id] = ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="UserName" Name="User_id" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </form>
</body>
</html>
