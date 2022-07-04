<%-- 
    Document   : navbar
    Created on : Jul 3, 2022, 6:08:30 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title >Navbar</title>
    </head>
    <body>
        <header>
  <!-- Fixed navbar -->
  <nav class="navbar navbar-expand-md navbar-dark relative-top bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="index">StorageMV</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav me-auto mb-2 mb-md-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="index">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="create">Input</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">contact</a>
          </li>
        </ul>
        <form class="d-flex" role="search">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
      </div>
    </div>
  </nav>
</header>
    </body>
</html>
