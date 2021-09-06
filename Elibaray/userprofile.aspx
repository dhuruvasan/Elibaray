<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="Elibaray.userprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%-- container --%>
    <div class="container-fluid">

        <%-- row  --%>
        <div class="row">
            <%-- 1st column --%>
            <div class="col-md-5">
                
                <%-- card --%>
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img  width="100" src="imgs/generaluser.png" />
                                </center>
                            </div>
                        </div>

                        <%-- row- user tittle --%>
                         <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Your profile</h3>
                                    <span>Account status -</span>
                                    <asp:Label  class="badge rounded-pill bg-success text-white" ID="Label1" runat="server" Text="Active"></asp:Label>
                                </center>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <%--  row- name ,date --%>
                        <div class="row">
                            <div class="col-md-6">
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox1" 
                                        runat="server" placeholder="user name"></asp:TextBox>
                               </div>
                            </div>
       
                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2"
                                        runat="server" placeholder="Date of Birth" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <%--  row- contact , email  --%>
                        <div class="row">
                            <div class="col-md-6">
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox3"
                                       runat="server" placeholder="Contact" TextMode="Number"></asp:TextBox>
                               </div>
                            </div>
       
                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4"
                                        runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <%--  row- state, city, pincode  --%>
                        <div class="row">
                            <div class="col-md-4">
                               <div class="form-group">
                                   <asp:DropDownList CssClass="form-control"
                                       ID="DropDownList1" runat="server">
                                       <asp:ListItem Text="Select" Value="select" />
                                        <asp:ListItem Text="Select" Value="select" />
                              <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh" />
                              <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh" />
                              <asp:ListItem Text="Assam" Value="Assam" />
                              <asp:ListItem Text="Bihar" Value="Bihar" />
                              <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh" />
                              <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                              <asp:ListItem Text="Goa" Value="Goa" />
                              <asp:ListItem Text="Gujarat" Value="Gujarat" />
                              <asp:ListItem Text="Haryana" Value="Haryana" />
                              <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh" />
                              <asp:ListItem Text="Jammu and Kashmir" Value="Jammu and Kashmir" />
                              <asp:ListItem Text="Jharkhand" Value="Jharkhand" />
                              <asp:ListItem Text="Karnataka" Value="Karnataka" />
                              <asp:ListItem Text="Kerala" Value="Kerala" />
                              <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh" />
                              <asp:ListItem Text="Maharashtra" Value="Maharashtra" />
                              <asp:ListItem Text="Manipur" Value="Manipur" />
                              <asp:ListItem Text="Meghalaya" Value="Meghalaya" />
                              <asp:ListItem Text="Mizoram" Value="Mizoram" />
                              <asp:ListItem Text="Nagaland" Value="Nagaland" />
                              <asp:ListItem Text="Odisha" Value="Odisha" />
                              <asp:ListItem Text="Punjab" Value="Punjab" />
                              <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                              <asp:ListItem Text="Sikkim" Value="Sikkim" />
                              <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu" />
                              <asp:ListItem Text="Telangana" Value="Telangana" />
                              <asp:ListItem Text="Tripura" Value="Tripura" />
                              <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh" />
                              <asp:ListItem Text="Uttarakhand" Value="Uttarakhand" />
                              <asp:ListItem Text="West Bengal" Value="West Bengal" />
             
                                   </asp:DropDownList>
                               </div>
                            </div>
                            
                            <div class="col-md-4">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5"
                                        runat="server" placeholder="City"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6"
                                        runat="server" placeholder="Pincode" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <%--  row- address --%>
                        <div class="row">
                            <div class="col">
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox7"
                                       runat="server" placeholder="Address" TextMode="MultiLine"></asp:TextBox>
                               </div>
                            </div>
                        </div>
                        
                        <%-- row- tag --%>
                        <div class="row">
                            <div class="col">
                               <div class="form-group">
                                   <center>
                                  <span class="badge rounded-pill bg-primary text-white">Login info</span>
                                   </center>
                               </div>
                            </div>
                            </div>

                        <%--  row- name,password --%>
                        <div class="row">
                            <div class="col-md-4">
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox8"
                                       runat="server" placeholder="user name" ReadOnly="True"></asp:TextBox>
                               </div>
                            </div>
       
                            <div class="col-md-4">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9"
                                        runat="server" placeholder="old-password" TextMode="Password" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox10"
                                        runat="server" placeholder="new-password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <%--  row- update --%>
                        <div class="row">
                            <div class="col-8 mx-auto">
                                <center>
                                    <div class="form-group">
                                        <asp:Button class="btn btn-success btn-block btn-lg" 
                                            ID="Button1" runat="server" Text="Update" />
                                    </div>
                                </center>
                            </div>
                        </div>
                    </div>
                </div>

                <a href="homepage.aspx" class="align-content-lg-around" > << Home </a>
            </div>

            <%--  2nd column  --%>
            <div class="col-md-7">
                     
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img  width="100" src="imgs/books1.png" />
                                </center>
                            </div>
                        </div>

                        <%-- row- user tittle --%>
                         <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Your issued books</h3>
        
                                    <asp:Label  class="badge rounded-pill bg-info text-white" ID="Label2" runat="server" Text="info about book due"></asp:Label>
                                </center>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col">
                                <hr />
                            </div>

                             <div class="row">
                            <div class="col">
                                <asp:GridView CssClass="table table-striped table-bordered table-dark"
                                    ID="GridView1" runat="server"></asp:GridView>
                            </div>

                         </div>

                    </div>
                </div>


                 </div>

            
        </div>

        </div>
    </div>



</asp:Content>
