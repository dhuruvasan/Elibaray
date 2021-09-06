<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="Elibaray.userlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br /><br />
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150" src="imgs/generaluser.png" />
                                </center>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <center>
                                    <h3>User login</h3>
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
                                        runat="server" placeholder="User Id"></asp:TextBox>

                                </div>
                                 <div class="form-group">

                                     <asp:TextBox CssClass="form-control" ID="TextBox2"
                                         runat="server" placeholder="password" TextMode="Password"></asp:TextBox>

                                </div>
                                 <div class="form-group">
                                     
                                         <asp:Button CssClass="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                                     
                                </div>
                                <div class="form-group">
                                     
                                    <a href="usersignup.aspx">
                                        <input id="Button2" class="btn btn-primary btn-block btn-lg"type="button" value="Sign up" /></a>
                                  
                                </div>
                            </div>
                        </div>
    
                    </div>
                </div>
                <a href="homepage.aspx"> << Home </a>
                <br />
                <br /><br /><br />
            </div>
        </div>
    </div>

</asp:Content>
