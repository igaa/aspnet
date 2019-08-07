<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="AspxLearn.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/custom/css/default.css" rel="stylesheet" />
</head>
<body>
    <div class="container-fluid bg">
        <div class="row">
            <div class="col-md-4 col-sm-12"></div>
            <div class="col-md-4 col-sm-12">
                <form runat="server" class="container-form text-white font-weight-bold ">
                    <h3 class="text-center mb-3">Form Login</h3>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Email address</label>
                      <asp:TextBox ID="txtUsername" CssClass="form-control" placeholder="Enter Username" runat="server"></asp:TextBox>
 
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                      <asp:TextBox ID="txtPassword" CssClass="form-control" TextMode="Password" runat="server" placeholder="Password"></asp:TextBox>
                  </div>
                    <asp:Button ID="btn_Login" OnClick="btn_Login_Click" CssClass="btn btn-warning btn-block mt-4" runat="server" Text="Login" />
                    <asp:Label ID="LblWarning" CssClass="text-danger" runat="server" Text=""></asp:Label>
                </form>
            </div>
            <div class="col-md-4 col-sm-12"></div>
            
        </div>

    </div>
    
    <script src="assets/js/bootstrap.min.js"></script>
</body>
</html>
