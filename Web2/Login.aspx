<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Web2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
    <title>Login</title>
</head>
<body>
    <nav style="" class="navbar navbar-expand-lg navbar-light bg-success">
        <a class="navbar-brand" style="color:white; margin-left:40px;" href="#">Rema<a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link"style="color:white;" href="#"><span class="sr-only">(current)</span></a>
                </li>
            </ul>
        </div>
    </nav>
    <div class="container" style="margin-top:40px;">
        <h1 class="text-center"style="margin-bottom:30px;">Login gan</h1>
        <form id="form1" runat="server">
            <div class="form-group row">
                <label class="col-sm-3 col-form-label">Username</label>
                <div class="col-sm-5">
                    <input  class="form-control" name="user" id="Text1" type="text" />
                </div>
            
            </div>
            <div class="form-group row">
                <label class="col-sm-3 col-form-label">Password</label>
                <div class="col-sm-5">
                    <input  class="form-control" id="Text2" name="pass"type="password" />
                </div>
            
            </div>
                <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn-success" OnClick="login" />

            </form>
    </div>
    
    
        
    
    
        
</body>
</html>
