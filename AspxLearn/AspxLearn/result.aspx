<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="result.aspx.cs" Inherits="AspxLearn.result" %>

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
              <asp:Repeater ID="RptJoinTab" runat="server">
             <HeaderTemplate>
                       <table id="myTable" class="table table-striped table-hover table-borderless" >
                        <thead>
                            <tr>
                               
                                <th>Name </th>
                                <th>Mobile</th>
                                <th>Address</th>
                                <th>Company</th>
                                <th>Start Date </th>
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
                           
                            <td><%# Eval ("Name") %></td>
                            <td><%# Eval ("Mobile") %></td>
                            <td><%# Eval ("Address") %></td>
                           <td><%# Eval ("Title") %></td>
                           <td><%# Eval ("Y_start") %></td>
                           <td><%# Eval ("Y_end") %></td>
                           <td><%# Eval ("Position") %></td>
                           <td><%# Eval ("Description") %></td>
                          
                            <td>
                              
                              <a id="Soft_del" class="btn btn-danger btn-sm" data-target="#Mdel" data-id="<%# Eval ("Id_exp") %>"
                                  data-k_del="<%# Eval ("K_Del") %>" data-toggle="modal" > Delete</a>

                            </td>
                        </tr>
                  </ItemTemplate>
                  <FooterTemplate>
                        </tbody>
                      </table>
                  </FooterTemplate>
        </asp:Repeater>

             <a href="home.aspx">experience</a>
             <a href="contact.aspx">contact</a>
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
