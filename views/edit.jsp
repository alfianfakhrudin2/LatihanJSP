<%-- 
    Document   : edit
    Created on : Jul 4, 2022, 12:28:57 AM
    Author     : User
--%>
<%@page import="Helper.StringHelper"%>
<%@page import="Controller.ProductController"%>
<%@page import="java.sql.ResultSet"%>
<%--<%@ taglib prefix="c" uri="http://java.sun/com/jstl/core" %>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <jsp:include page='layouts/head.jsp'>
            <jsp:param name="title" value="Homepage"/>
        </jsp:include>
        <style>
            .input-group-append{
                cursor:pointer;
            }
        </style>
        <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="https://unpkg.com/js-datepicker/dist/datepicker.min.css"> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Page</title>
    </head>
    <body class="d-flex flex-column h-100">
        <jsp:include page='layouts/navbar.jsp'></jsp:include>
        <%
            String id = request.getParameter("id");
            if (id == null || id.equals("")) {
                response.sendRedirect("index");
            }

            ProductController pc = new ProductController();
            ResultSet rs = pc.getById(id);
            
            System.out.println(rs);
            
            if (!rs.isBeforeFirst()) {
                response.sendRedirect("index");
            }
            
        %>
        <% while(rs.next()) { %>
        <!--page content-->
        <main class="flex-shrink-0">
            <div class="container">
                <h1 class="mt-5">Edit Produk - <%= rs.getString("name") %></h1>
                <p class="lead">Edit produk <%= rs.getString("name")  %> pada sistem aplikasi produk</p>
                <div class="row pt-5">
                    <div class="col-12">
                        <form method="POST" action="edit">
                            <input type="hidden" name="id" value="<%= rs.getString("id")%>" />
                            <div class="mb-3">
                                <label class="form-label">Nama Produk</label>
                                <input type="text" class="form-control" 
                                       placeholder="Masukkan nama produk..." name="name" required
                                       value="<%= rs.getString("name")%>"
                                       >
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Jenis Produk</label>
                                <select class="form-select" aria-label="Default select example" name="type" required>
                                    <option value="Alat Mandi" 
                                            <%= rs.getString("product_type") == "Alat Mandi" ? "selected" : ""%>
                                            >Alat Mandi</option>
                                    <option value="Alat Bersih-bersih"
                                            <%= rs.getString("product_type") == "Alat Bersih-bersih" ? "selected" : ""%>
                                            >Alat Bersih-bersih</option>
                                    <option value="Alat Makan"
                                            <%= rs.getString("product_type") == "Alat Makan" ? "selected" : ""%>
                                            >Alat Makan</option>
                                </select>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Harga Produk</label>
                                <input type="number" min="0" class="form-control" 
                                       placeholder="Masukkan harga..." name="price" required
                                       value="<%= rs.getString("price") %>"
                                       >
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Stok Produk</label>
                                <input type="number" min="0" class="form-control" 
                                       placeholder="Masukkan stok..." name="stock" required
                                       value="<%= rs.getString("stock") %>"
                                       >
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Tanggal Expired</label>
                                <div class="input-group date" id="datepicker">
                                    <input type="text" class="form-control" id="date" name="expired" required
                                           value="<%= StringHelper.modifyDateIntoDatepicker(rs.getString("expired")) %>"
                                    />
                                    <span class="input-group-append">
                                        <span class="input-group-text bg-light d-block">
                                            <i class='bx bxs-calendar'></i>
                                        </span>
                                    </span>
                                </div>
                            </div>
                            <div class="mb-3">
                                <button type="submit" class="btn btn-primary btn-small btn-rounded">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </main>
        <% } %>


        <jsp:include page='layouts/footer.jsp'></jsp:include>
        <jsp:include page='layouts/scripts.jsp'></jsp:include>
        <script src="https://unpkg.com/js-datepicker"></script> 
        <script>
            const picker = datepicker('#date', {
                formatter: (input, date, instance) => {
                    input.value = date.toLocaleDateString(); // => '1/1/2099'
                }
            });
        </script>

    </body>
</html>
