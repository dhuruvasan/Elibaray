<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="Elibaray.adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />
    <br />
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img  width="150" src="imgs/adminuser.png" />
                                </center>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Admin login</h3>
                                </center>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                         <div class="row">
                            <div class="col">
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox1" 
                                        runat="server" placeholder="Admin Id"></asp:TextBox>

                                </div>
                                 <div class="form-group">

                                     <asp:TextBox CssClass="form-control" ID="TextBox2"
                                         runat="server" placeholder="password" TextMode="Password"></asp:TextBox>

                                </div>
                                 <div class="form-group">
                                     
                                         <asp:Button CssClass="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                                     
                                </div>
                            </div>
                        </div>
    
                    </div>
                </div>
                <a href="homepage.aspx"> << Home </a>

    <br />
    <br />
    <br />
    <br />
    <br />
                

            </div>
        </div>
    </div>


</asp:Content>
