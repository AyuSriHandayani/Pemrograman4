<%@page import="java.sql.Time"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.*,java.text.*" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql_rt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tampilan tanggal dan waktu sekarang</title>
        
        
    <center>
        <h1>Tanggal dan Waktu</h1>
    </center>
    <%
   Date dNow = new Date( );
   SimpleDateFormat dt = new SimpleDateFormat ("E yyyy.MM.dd ");
   SimpleDateFormat ft = new SimpleDateFormat ("hh:mm:ss");
   out.print( "<h2 align=\"center\">Hari dan tanggal saat ini " + dt.format(dNow) + "</h2>");
   out.print( "<h2 align=\"center\">Waktu saat ini " + ft.format(dNow) + "</h2>");
    %>
    
<h1>
Input Data Pada Form
</h1>
<p><a href="./formInput.html">Klik Disini</a></p>

<h2>DAFTAR PRODUK</h2>
<sql:setDataSource  var="snapshot" 
                     driver="com.mysql.jdbc.Driver"
                     url="jdbc:mysql://localhost/produk"
                     user="root" password=""/>
 
<sql:query dataSource="${snapshot}" var="result"> 
    SELECT * FROM produk_barang
</sql:query>
 
<table border="1" width="100%">
<tr>
   <th>ID</th>
   <th>Kode</th>
   <th>Nama</th>
   <th>Harga</th>
   <th>Teakhir Update</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.id}"/></td>
   <td><c:out value="${row.kode}"/></td>
   <td><c:out value="${row.nama}"/></td>
   <td>Rp. <c:out value="${row.harga}"/></td>
   <td><c:out value="${row.terakhir_update}"/></td>
</tr>
</c:forEach>
</table>
    
    </head>
    
</html>
