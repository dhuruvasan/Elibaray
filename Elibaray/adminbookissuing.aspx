<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookissuing.aspx.cs" Inherits="Elibaray.adminbookissuing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%-- container --%>
    <br /><br />
    <div class="container-fluid">
        <div class="row">

            <%-- col cart 1 --%>
            <div class="col-md-5">

                <%-- cart --%>
                <div class="card">
                    <div class="card-body">
                        <center>
                        <h3>Book issuing</h3>
                        </center>

                        <%-- img row --%>
                        <div class="row">
                            <div class="col">
                                <center>
                                <img width="150" src="imgs/books1.png" />
                                    </center>
                            </div>
                        </div>

                        <%-- line div --%>
                          <div class="row">
                            <div class="col">
                               <hr />
                            </div>
                        </div>

                        <%-- member id book id --%>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" 
                                        ID="TextBox1" placeholder="Member Id" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <div class="input-group">
                                         <asp:TextBox CssClass="form-control" 
                                             ID="TextBox2"  placeholder="Book Id"  runat="server"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button03" runat="server" Text="Go" />
                                    </div>
                                </div>
                            </div>

                        </div>

                        <%-- member name biik name --%>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" 
                                        ID="TextBox3" runat="server" placeholder="Member name"  ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4"
                                        placeholder="Book Name" runat="server" ReadOnly="True"></asp:TextBox>

                                </div>

                            </div>

                        </div>

                        <%-- start date end date --%>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Start Date</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" 
                                        ID="TextBox5" runat="server" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>End Date</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" 
                                        ID="TextBox6" runat="server" TextMode="Date"></asp:TextBox>
                                </div>

                            </div>

                        </div>

                        <%-- btn issue,return --%>
                         <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:Button CssClass="btn btn-block btn-lg btn-primary"
                                        ID="Button1" runat="server" Text="Issue" />
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                     <asp:Button CssClass="btn btn-block btn-lg btn-success"
                                        ID="Button2" runat="server" Text="Return" />
                                </div>

                            </div>

                        </div>

                    </div>

                </div>

            </div>

            <%-- col cart 2 --%>
            <div class="col-md-7">

                <%-- cart --%>
                <div class="card">
                    <div class="card-body">
                        <center>
                        <h3>Issued Book List</h3>
                        </center>

                        <%-- line spc --%>
                          <div class="row">
                            <div class="col">
                               <hr />
                            </div>
                        </div>

                        <%-- grid view --%>
                        <div class="row">
                            <div class="col">
                                <asp:GridView CssClass="table table-striped table-bordered"
                                    ID="GridView1" runat="server"></asp:GridView>
                            </div>
                        </div>

                    </div></div></div>


        </div>

    </div>
    <br /><br />           


</asp:Content>
