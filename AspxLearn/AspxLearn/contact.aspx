<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="AspxLearn.contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <title>Contact</title>
    <link href="assets/custom/css/default.css" rel="stylesheet" />
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/custom/css/jquery.dataTables.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
         <header>
             <nav class="navbar navbar-expand-lg navbar-light bg-danger">
                 <!--brand-->
              <a class="navbar-brand" href="#">Net.Bootstrap</a>
                 <!--togle-->
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
                 <!--menubar-->
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                  <li class="nav-item active">
                    <a class="nav-link" href="home.aspx">Home <span class="sr-only">(current)</span></a>
                  </li>
                 
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      Category
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <a class="dropdown-item" href="#">Action</a>
                      <a class="dropdown-item" href="#">Another action</a>
                      <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                  </li>
                 
                </ul>
                <div class="form-inline my-2 my-lg-0">
                  <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                  <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
                </div>
              </div>
                 <!--/menubar-->

            </nav>
         </header>
        <main role="main">
            <div class="container mt-5 mb-5">
           <asp:Repeater ID="ContactRpt" runat="server">
               <HeaderTemplate>
                       <table id="myTable" class="table table-striped table-hover table-borderless">
                        <thead>
                            <tr>
                                <th>Id User</th>
                                <th>Name</th>
                                <th>Mobile</th>
                                <th>Address</th>
                                <th>Action</th>
                                
                            </tr>
                        </thead>
                        <tbody>
                  </HeaderTemplate>
                  <ItemTemplate>
                       <tr>
                            <td><%# Eval ("Id_User") %></td>
                            <td><%# Eval ("Name") %></td>
                            <td><%# Eval ("Mobile") %></td>
                            <td><%# Eval ("Address") %></td>
                          
                            <td>
                                <a id="Edit_Exp" class="btn btn-warning btn-sm" data-target="#MEdit" data-id="<%# Eval ("Id_contact") %>"
                                    data-user="<%# Eval ("Id_User") %>" data-name="<%# Eval ("Name") %>"     data-mobile="<%# Eval ("Mobile") %>"
                                     data-address="<%# Eval ("address") %>"
                                    
                                     data-toggle="modal">Edit</a>
                               


                            </td>
                        </tr>
                  </ItemTemplate>
                  <FooterTemplate>
                        </tbody>
                      </table>
                  </FooterTemplate>
           </asp:Repeater>
           <button class="btn btn-primary" type="button" data-target="#MTambah" data-toggle="modal">Tambah Data</button>
            </div>
            
            <!-- Modal -->
                <div class="modal fade" id="MTambah" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                  <div class="modal-dialog" role="document">
                    <div class="modal-content">
                      <div class="modal-header alert-primary">
                        <h5 class="modal-title" id="exampleModalLabel">Form Tambah Data</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                      </div>
                      <div class="modal-body">
                        
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="Id User"></asp:Label>
                            <asp:TextBox ID="txtUId" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                           <div class="form-group">
                            <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                            <asp:TextBox ID="txtName" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                           <div class="form-group">
                            <asp:Label ID="Label3" runat="server" Text="Mobile"></asp:Label>
                            <asp:TextBox ID="txtMobile" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                           <div class="form-group">
                            <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
                            <asp:TextBox ID="txtAddress" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>

                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <asp:Button ID="btnCoSave" OnClick="btnCoSave_Click" CssClass="btn btn-primary" runat="server" Text="Save"></asp:Button>
                      </div>
                    </div>
                  </div>
                </div>
            <!-- Modal Edit -->
                <div class="modal fade" id="MEdit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                  <div class="modal-dialog" role="document">
                    <div class="modal-content">
                      <div class="modal-header alert-primary">
                        <h5 class="modal-title" id="exampleModalLabel">Form Edit Data</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                      </div>
                      <div class="modal-body">
                          <div class="form-group">
                          <asp:Label ID="Label8" runat="server" Text="Id Contact"></asp:Label>
                            <asp:TextBox ClientIDMode="Static"  ID="txtEIdcon" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                         <div class="form-group">
                          <asp:Label ID="Label13" runat="server" Text="Id User "></asp:Label>
                            <asp:TextBox ClientIDMode="Static"  ID="txtEUId" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                          <div class="form-group">
                          <asp:Label ID="Label5" runat="server" Text="Name"></asp:Label>
                            <asp:TextBox ClientIDMode="Static"  ID="txtEName" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                          <div class="form-group">
                          <asp:Label ID="Label6" runat="server" Text="Mobile "></asp:Label>
                            <asp:TextBox ClientIDMode="Static"  ID="txtEMobile" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                          <div class="form-group">
                          <asp:Label ID="Label7" runat="server" Text="Address"></asp:Label>
                            <asp:TextBox ClientIDMode="Static"  ID="txtEAddres" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="modal-footer">
                        <asp:Button data-dismis="modal" CssClass="btn btn-secondary" runat="server" Text="Cancel"></asp:Button>
                        <asp:Button ID="btnEditCon"   OnClick="btnEditCon_Click" CssClass="btn btn-primary" runat="server" Text="Save"></asp:Button>
                      </div>
                    </div>
                  </div>
                </div>
             <!-- Modal Soft Delete-->
                <div class="modal fade" id="Mdel" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                  <div class="modal-dialog" role="document">
                    <div class="modal-content">
                      <div class="modal-header alert-danger">
                        <h5 class="modal-title" id="exampleModalLabel">Kenapa Menghapus Data!</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                      </div>
                      <div class="modal-body">
                         
                        
                      </div>
                      <div class="modal-footer">
                        <asp:Button data-dismis="modal" CssClass="btn btn-secondary" runat="server" Text="Cancel"></asp:Button>
                        <asp:Button ID="S_del"  CssClass="btn btn-danger" runat="server" Text="Delete"></asp:Button>
                      </div>
                    </div>
                  </div>
                </div>
             <!-- Modal view contact by Id -->
                <div class="modal fade" id="Mcon" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                  <div class="modal-dialog" role="document">
                    <div class="modal-content">
                      <div class="modal-header alert-primary">
                        <h5 class="modal-title" id="exampleModalLabel">Contact Detail</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                      </div>
                      <div class="modal-body">
                       
                        
                      </div>
                      <div class="modal-footer">
                       
                      </div>
                    </div>
                  </div>
                </div>
        </main>
        <footer>

        </footer>
    </form>
    
    <script src="assets/custom/js/jquery-3.3.1.slim.min.js"></script>
    <script src="assets/custom/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/custom/js/jquery.dataTables.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#myTable').DataTable();
        });

        $(document).on("click", "#Edit_Exp", function () {
            var _id = $(this).data("id");
            var _user = $(this).data("user");
            var _name = $(this).data("name");
            var _mobile = $(this).data("mobile");
            var _address = $(this).data("address");

            $("#MEdit  #txtEIdcon").val(_id);
            $("#MEdit  #txtEUId").val(_user);
            $("#MEdit  #txtEName").val(_name);
            $("#MEdit  #txtEMobile").val(_mobile);
            $("#MEdit  #txtEAddres").val(_address);
            $("#MEdit  #txtEIdcon").attr("ReadOnly", true);;



        })


    </script>
</body>
</html>