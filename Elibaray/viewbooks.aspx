<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="viewbooks.aspx.cs" Inherits="Elibaray.viewbooks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col">

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
                            <div class="col">
                                <asp:GridView CssClass="table table-striped table-bordered" 
                                    ID="GridView1" runat="server"></asp:GridView>
                            </div>
                        </div>
                    </div>

                </div>
                </div>
        </div>
    </div>

</asp:Content>
