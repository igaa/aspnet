<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="AspxLearn.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <title>Home Page</title>
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
              <asp:Repeater ID="RptTampilExp" runat="server">
                  <HeaderTemplate>
                       <table id="myTable" class="table table-striped table-hover table-borderless">
                        <thead>
                            <tr>
                                <th>Id User</th>
                                <th>Title</th>
                                <th>Start Date</th>
                                <th>End Date</th>
                                <th>Position</th>
                                <th>Description</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                  </HeaderTemplate>
                  <ItemTemplate>
                       <tr>
                            <td><%# Eval ("Id_user") %></td>
                            <td><%# Eval ("Title") %></td>
                            <td><%# Eval ("Y_start") %></td>
                            <td><%# Eval ("Y_end") %></td>
                            <td><%# Eval ("Position") %></td>
                            <td><%# Eval ("Description") %></td>
                            <td>
                                <a id="Edit_Exp" class="btn btn-warning btn-sm" data-target="#MEdit" data-id="<%# Eval ("Id_exp") %>"
                                    data-user="<%# Eval ("Id_user") %>" data-title="<%# Eval ("Title") %>"     data-y_start="<%# Eval ("Y_start") %>"
                                     data-y_end="<%# Eval ("Y_End") %>"  data-position="<%# Eval ("Position") %>"  data-description="<%# Eval ("Description") %>"
                                    
                                     data-toggle="modal">Edit</a>


                                <a id="Soft_del" class="btn btn-danger btn-sm" data-target="#Mdel" data-id="<%# Eval ("Id_exp") %>"
                                  data-k_del="<%# Eval ("K_Del") %>" 

                                    
                                     data-toggle="modal">Delete</a>

                                 <a id="contact" class="btn btn-info btn-sm" data-target="#Mcon" data-id="<%# Eval ("Id_user") %>"
                                  
                                     data-toggle="modal">View</a>
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
                            <asp:TextBox ID="txtId_user" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                         <div class="form-group">
                          <asp:Label ID="Label2" runat="server" Text="Title"></asp:Label>
                            <asp:TextBox ID="txtTitle" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                         <div class="form-group">
                          <asp:Label ID="Label3" runat="server" Text="Start Date"></asp:Label>
                            <asp:TextBox ID="txtY_start" CssClass="form-control" TextMode="Date" runat="server"></asp:TextBox>
                        </div>
                       <div class="form-group">
                          <asp:Label ID="Label4" runat="server" Text="End Date"></asp:Label>
                            <asp:TextBox ID="txtY_end" CssClass="form-control" TextMode="Date" runat="server"></asp:TextBox>
                        </div>
                          <div class="form-group">
                          <asp:Label ID="Label5" runat="server" Text="Position"></asp:Label>
                            <asp:TextBox ID="txtPosition" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                          <div class="form-group">
                          <asp:Label ID="Label6" runat="server" Text="Description"></asp:Label>
                            <asp:TextBox ID="txtDescription" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <asp:Button ID="btnSave" OnClick="btnSave_Click" CssClass="btn btn-primary" runat="server" Text="Save"></asp:Button>
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
                          <asp:Label ID="Label13" runat="server" Text="Id Exp"></asp:Label>
                            <asp:TextBox ClientIDMode="Static"  ID="txtEid_exp" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                          <asp:Label ID="Label7" runat="server" Text="Id User"></asp:Label>
                            <asp:TextBox ClientIDMode="Static" ID="txtEId_user" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                         <div class="form-group">
                          <asp:Label ID="Label8" runat="server" Text="Title"></asp:Label>
                            <asp:TextBox ClientIDMode="Static" ID="txtETitle" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                         <div class="form-group">
                          <asp:Label ID="Label9" runat="server" Text="Start Date"></asp:Label>
                            <asp:TextBox ClientIDMode="Static" ID="txtEY_start" CssClass="form-control" TextMode="date" runat="server"></asp:TextBox>
                        </div>
                       <div class="form-group">
                          <asp:Label ID="Label10" runat="server" Text="End Date"></asp:Label>
                            <asp:TextBox ClientIDMode="Static" ID="txtEY_end" CssClass="form-control" TextMode="date" runat="server"></asp:TextBox>
                        </div>
                          <div class="form-group">
                          <asp:Label ID="Label11" runat="server" Text="Position"></asp:Label>
                            <asp:TextBox ClientIDMode="Static" ID="txtEPosition" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                          <div class="form-group">
                          <asp:Label ID="Label12" runat="server" Text="Description"></asp:Label>
                            <asp:TextBox ClientIDMode="Static" ID="txtEDescription" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="modal-footer">
                        <asp:Button data-dismis="modal" CssClass="btn btn-secondary" runat="server" Text="Cancel"></asp:Button>
                        <asp:Button ID="btnEdit" OnClick="btnEdit_Click" CssClass="btn btn-primary" runat="server" Text="Save"></asp:Button>
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
                          <div class="form-group">
                          <asp:Label ID="Label14" runat="server" Text="Id Exp"></asp:Label>
                            <asp:TextBox ClientIDMode="Static"  ID="txtDelId_exp" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                          <asp:Label ID="Label15" runat="server" Text="Alasan"></asp:Label>
                            <asp:TextBox ClientIDMode="Static" ID="txtDelK_del" CssClass="form-control" runat="server" ></asp:TextBox>
                        </div>
                        
                      </div>
                      <div class="modal-footer">
                        <asp:Button data-dismis="modal" CssClass="btn btn-secondary" runat="server" Text="Cancel"></asp:Button>
                        <asp:Button ID="S_del" OnClick="S_del_Click" CssClass="btn btn-danger" runat="server" Text="Delete"></asp:Button>
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
            var _title = $(this).data("title");
            var _y_start = $(this).data("y_start");
            var _y_end = $(this).data("y_end");
            var _position = $(this).data("position");
            var _description = $(this).data("description");

            $("#MEdit  #txtEid_exp").val(_id);
            $("#MEdit  #txtEId_user").val(_user);
            $("#MEdit  #txtETitle").val(_title);
            $("#MEdit  #txtEY_start").val(_y_start);
            $("#MEdit  #txtEY_end").val(_y_end);
            $("#MEdit  #txtEPosition").val(_position);
            $("#MEdit  #txtEDescription").val(_description);
            $("#MEdit  #txtEid_exp").attr("ReadOnly", true);;



        })
        $(document).on("click", "#Soft_del", function () {
            var _id = $(this).data("id");
            var _k_del = $(this).data("k_del");
           

            $("#Mdel  #txtDelId_exp").val(_id);
            $("#Mdel  #txtDelK_del").val(_k_del);
            $("#Mdel  #txtDelId_exp").attr("ReadOnly", true);;
        })


    </script>
</body>
</html>
