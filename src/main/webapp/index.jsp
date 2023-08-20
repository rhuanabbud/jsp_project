<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <title>Curso JSP</title>
    <style type="text/css">
      form {
        position: absolute;
        top: 40%;
        left: 33%;
        right: 33%;
      }

      h5 {
        position: absolute;
        top: 30%;
        left: 33%;
      }
      
      .msg {
        position: absolute;
        top: 70%;
        left: 33%;
        font-size: 15px;
        color: red;
      }
    </style>
  </head>
  <body>
    <h5>Bem vindo ao curso de JSP</h5>
    <form action="ServletLogin" method="post" class="row g-3">
      <input type="hidden" value="<%=request.getParameter("url")%>" name="url">
      <div class="col-md-6">
        <label class="form-label">Login:</label>
        <input class="form-control" name="login" type="text">
      </div>
      <div class="col-md-6">
        <label class="form-label">Senha:</label>
        <input class="form-control" name="senha" type="password">
      </div>
      <input type="submit" value="Acessar" class="btn btn-primary">
    </form>
    <h3 class="msg">${msg}</h3>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  </body>
</html>