<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>

</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="form-row">
                <hr />
                <br />
                <div class="container">
                    <table class="nav-justified">
                        <tr>
                            <td><asp:TextBox ID="txtSearch" runat="server" class="form-control" placeholder="Search"></asp:TextBox></td>
                            <td><asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" class="btn btn-outline-success" /></td>
                        </tr>
                        <tr><td>&nbsp;</td></tr>
                        <tr>
                            <td><a href="WebForm1.aspx"><h5>Add New Customer</h5></a></td>
                        </tr>
                    </table>
                </div>
                <hr />
                <br />
                <div class="form-group col-md-10">
                    <asp:GridView ID="GridView1" runat="server" class="table table-bordered table-condensed table-responsive table-hover ">
                        <Columns>
                            <asp:ImageField DataImageUrlField="CustomerPhoto" ControlStyle-Width="50" HeaderText="Photo" />
                        </Columns>
                    </asp:GridView>
                </div>
                
                <div class="form-group col-md-2">
                    <table class="table table-sm table table-bordered table-condensed table-responsive table-hover">
                  <tr>
                      <td><p>Number of customers</p></td>
                      <td><asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
                  </tr>
                  <tr>
                      <td><p>Average of age</p></td>
                      <td><asp:Label ID="Label2" runat="server" Text=""></asp:Label></td>
                  </tr>
                  <tr>
                      <td><p>Max Age</p></td>
                      <td><asp:Label ID="Label3" runat="server" Text=""></asp:Label></td>
                  </tr>
              </table>
                </div>
                <hr />
                <br />
            </div>
        </div>
    </form>
</body>
</html>
