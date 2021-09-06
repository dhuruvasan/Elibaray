<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminpublishermanagement.aspx.cs" Inherits="Elibaray.adminpublishermanagement" %>
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
    <div class="container">
        <div class="row">

            <%-- col cart 1 --%>
            <div class="col-md-6">

                <div class="card">
                    <div class="card-body">
                        <center>
                        <h3>Publisher Managment</h3>
                        </center>

                        <div class="row">
                            <div class="col">
                                <center>
                                <img width="150" src="imgs/publisher.png" />
                                    </center>
                            </div>
                        </div>

                          <div class="row">
                            <div class="col">
                               <hr />
                            </div>
                        </div>

                      <div class="row">
                            <div class="col-md-4">
                                <label>Publisher ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                       <asp:LinkButton CssClass="btn btn-primary mr-1" 
                                               ID="LinkButton4" runat="server" OnClick="LinkButton4_Click"><i class="fas fa-search"></i></asp:LinkButton>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-8">
                                <label>Publisher Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control"
                                        ID="TextBox2" runat="server" placeholder="Publisher Name"></asp:TextBox>
                                </div>
                            </div>
                        </div>

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
                                        ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" />
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

                <div class="card">
                    <div class="card-body">
                        <center>
                        <h3>Publisher List</h3>
                        </center>

                        <div class="row">
                            <div class="col">
                               <hr />
                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString2 %>" SelectCommand="SELECT * FROM [publisher_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView CssClass="table table-striped table-bordered"
                                    ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="publisher_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="publisher_id" HeaderText="publisher_id" ReadOnly="True" SortExpression="publisher_id" HeaderStyle-BorderStyle="Solid" />
                                        <asp:BoundField DataField="publisher_name" HeaderText="publisher_name" SortExpression="publisher_name" />
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
