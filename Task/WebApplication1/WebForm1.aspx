<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

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
             <div>
            <br />
            <hr />
                 <h3>Add New Customer</h3>
            <br />
             </div>
             <div class="container">
                 <div class="form-row">
                     <div class="form-group col-md-6">
                         <label>Name</label>
                         <asp:TextBox ID="TextBox1" runat="server" type="text" class="form-control" placeholder="name" ></asp:TextBox>
                     </div>
                     <div class="form-group col-md-6">
                         <label>Age</label>
                         <asp:TextBox ID="TextBox2" runat="server" type="number" class="form-control" placeholder="age" ></asp:TextBox>
                     </div>
                 </div>
                 
                 <div class="form-row">
                     <div class="form-group col-md-6">
                         <label>Email</label>
                       <asp:TextBox ID="TextBox3" runat="server" type="Email" class="form-control" placeholder="email" ></asp:TextBox>
                     </div>
                     
                     <div class="form-group col-md-6">
                         <label>Phone number</label>
                         <asp:TextBox ID="TextBox4" runat="server" type="number" class="form-control" placeholder="Phone" ></asp:TextBox>
                     </div>
                 </div>
                 
                 <div class="form-group col-md-6">
                     <label>City</label>
                     <asp:DropDownList ID="DropDownList1" runat="server" class="form-control"></asp:DropDownList>
                 </div>
                 
                 <div class="form-group col-md-6">
                     <label>Upload image</label>
                     <asp:FileUpload class="form-control" ID="FileUpload1" runat="server" />
                 </div>
                 
                 <div class="form-group col-md-6">
                     <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" />
                 </div>
              </div>
         </div>
            <br />
            <hr />
            
            <div>
                <asp:GridView ID="GridView1" runat="server" class="table table-bordered table-condensed table-responsive table-hover ">
                    <Columns>
                        <asp:ImageField DataImageUrlField="CustomerPhoto" ControlStyle-Width="50" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
