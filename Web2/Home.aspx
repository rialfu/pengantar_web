<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Web2.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
    <title>Home</title>
</head>
<body>
    <nav style=" " class="navbar navbar-expand-lg navbar-light bg-success">
        <a class="navbar-brand" style="color:white; margin-left:40px;" href="/Home.aspx">Home</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link"style="color:white;" href="/Form.aspx">Form<span class="sr-only">(current)</span></a>
                </li>
            </ul>
        </div>
    </nav>
    <div class="container"style="margin-top:50px;">
        <h1 class="text-center">Home</h1>
        <h2 class="text-center">Biodata</h2>
        <table class="table table-bordered"style="border:1px solid black; width:50%;">
            <tbody style="">
               <% Response.Write(table()); %>
            </tbody>

        </table>
        <h2 class="text-center">Jadwal</h2>
        <div class="row">
            <div class="col-6 offset-3">
                <table class="table table-bordered">
                <tbody style="">
                    <tr>
                        <td>Nama</td>
                        <td>Mata Kuliah</td>
                    </tr>
                   <% Response.Write(dosen()); %>
                </tbody>

                </table>
            </div>
        </div>
        
    </div>
    
</body>
</html>
