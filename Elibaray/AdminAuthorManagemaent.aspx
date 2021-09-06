<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminAuthorManagemaent.aspx.cs" Inherits="Elibaray.AdminAuthorManagemaent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">
        $(document).ready(function () {

            $(document).ready(function () {
            $('.table').DataTable();
             });

            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
            $('.table').DataTable();
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br /><br /><br /><br /><br />

    <%-- container --%>
    <div class="container">
        <div class="row">

            <%-- col cart 1 --%>
            <div class="col-md-6">

                <%-- cart --%>
                <div class="card">
                    <div class="card-body">
                        <center>
                        <h3>Author Managment</h3>
                        </center>

                        <%-- img --%>
                        <div class="row">
                            <div class="col">
                                <center>
                                <img width="150" src="imgs/writer.png" />
                                    </center>
                            </div>
                        </div>

                          <div class="row">
                            <div class="col">
                               <hr />
                            </div>
                        </div>

                        <%--id,authorname btn-go  --%>
                      <div class="row">
                            <div class="col-md-4">
                                <label>Author ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                       <asp:LinkButton CssClass="btn btn-primary mr-1" 
                                               ID="LinkButton4" runat="server" OnClick="LinkButton4_Click"><i class="fas fa-search"></i></asp:LinkButton>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-8">
                                <label>Author Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control"
                                        ID="TextBox2" runat="server" placeholder="Author Name"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <%-- btn-add,update,delete --%>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <asp:Button CssClass="btn btn-success btn-block btn-lg" 
                                        ID="Button2" runat="server" Text="Add" OnClick="Button2_Click" />
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                     
                                 <asp:Button CssClass="btn btn-primary btn-block btn-lg" 
                                        ID="Button3" runat="server" Text="Update" OnClick="Button3_Click"  />
                               </div>
                            </div>

                            <div class="col-md-4">
                                 <div class="form-group">
                                     <asp:Button CssClass="btn btn-danger btn-block btn-lg" 
                                         ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" />
                                 </div>   
                            </div>
                        </div>

                    </div>

                </div>

            </div>

            <%-- col cart 2 --%>
            <div class="col-md-6">

                <%-- card --%>
                <div class="card">
                    <div class="card-body">
                        <center>
                        <h3>Author List</h3>
                        </center>

                        <div class="row">
                            <div class="col">
                               <hr />
                            </div>
                        </div>

                        <%-- gridview --%>
                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [author_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped" 
                                    ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="author_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="author_id" HeaderText="Author Id" ReadOnly="True" SortExpression="author_id" />
                                        <asp:BoundField DataField="author_name" HeaderText="Author Name" SortExpression="author_name" />  
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </div>
    <br /><br /><br /><br /><br />

</asp:Content>
