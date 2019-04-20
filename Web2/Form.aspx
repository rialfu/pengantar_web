<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form.aspx.cs" Inherits="Web2.Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
    <title>Form</title>
</head>
<body>
    <nav style="" class="navbar navbar-expand-lg navbar-light bg-success">
        <a class="navbar-brand" style="color:white; margin-left:40px;" href="/Home.aspx">Rema</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link"style="color:white;" href="/Form.aspx"><span class="sr-only">(current)</span></a>
                </li>
            </ul>
        </div>
    </nav>
    <div class="container"style="margin-top:30px;">
        <form id="form1" runat="server">
            <div class="form-group">
                <label>Mata Kuliah</label>
                <input name="matkul" class="form-control"/>
            </div>
            <div class="form-group">
                <label>Dosen</label>
                <input name="dosen" class="form-control"/>
            </div>
            <asp:Button ID="Button1" runat="server" Text="Tambah" CssClass="btn btn-success" OnClick="insert" />
        </form>
    </div>
    
</body>
</html>
