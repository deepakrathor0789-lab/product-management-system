<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="menu.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Product Table</title>

<style>
body{
    padding-top:80px;
    font-family:'Poppins',sans-serif;
    background:linear-gradient(135deg,#1e3c72,#2a5298);
}

/* Search Box */


/* Table */
table{
    border-collapse:collapse;
    margin:auto;
    width:85%;
    background:white;
    border-radius:12px;
    overflow:hidden;
    box-shadow:0 8px 25px rgba(0,0,0,0.2);
    animation:fadeIn 0.7s ease;
}

th,td{
    padding:14px 18px;
    text-align:center;
}

th{
    background:linear-gradient(to right,#00c6ff,#0072ff);
    color:white;
    cursor:pointer;
    transition:0.3s;
}

th:hover{
    background:linear-gradient(to right,#0072ff,#00c6ff);
}

tr:nth-child(even){
    background:#f2f2f2;
}

tr:hover{
    background:#dff6ff;
    transform:scale(1.01);
    transition:0.2s;
}

/* Animation */
@keyframes fadeIn{
    from{opacity:0; transform:translateY(20px);}
    to{opacity:1; transform:translateY(0);}
}

</style>
</head>

<body onload="makeActive('list')">



<table id="productTable">
<thead>
<tr>
    <th onclick="sortTable(0)">Product Id ⬍</th>
    <th onclick="sortTable(1)">Product Name ⬍</th>
    <th onclick="sortTable(2)">Product Brand ⬍</th>
    <th onclick="sortTable(3)">Product Price ⬍</th>
</tr>
</thead>

<tbody>
<c:forEach var="product" items="${products}">
<tr>
    <td>${product.pid}</td>
    <td>${product.name}</td>
    <td>${product.brand}</td>
    <td>&#8377; ${product.price}</td>
</tr>
</c:forEach>
</tbody>
</table>

<script>

/* 🔍 Search Function */
function searchTable(){
    let input=document.getElementById("searchInput").value.toLowerCase();
    let rows=document.querySelectorAll("#productTable tbody tr");

    rows.forEach(row=>{
        let text=row.innerText.toLowerCase();
        row.style.display=text.includes(input)?"":"none";
    });
}

/* 🔼 Sort Function */
function sortTable(columnIndex){
    let table=document.getElementById("productTable");
    let switching=true;
    let dir="asc";

    while(switching){
        switching=false;
        let rows=table.rows;

        for(let i=1;i<rows.length-1;i++){
            let x=rows[i].getElementsByTagName("TD")[columnIndex];
            let y=rows[i+1].getElementsByTagName("TD")[columnIndex];
            let shouldSwitch=false;

            if(dir==="asc" && x.innerHTML.toLowerCase()>y.innerHTML.toLowerCase()){
                shouldSwitch=true;
                break;
            }

            if(dir==="desc" && x.innerHTML.toLowerCase()<y.innerHTML.toLowerCase()){
                shouldSwitch=true;
                break;
            }
        }

        if(shouldSwitch){
            rows[i].parentNode.insertBefore(rows[i+1],rows[i]);
            switching=true;
        }else{
            if(dir==="asc"){
                dir="desc";
                switching=true;
            }
        }
    }
}

</script>

</body>
</html>
