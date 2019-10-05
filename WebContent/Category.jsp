<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Catergories</title>
<style type="text/css">
       
       
        H1{
            color: blue;
        }
</style>
</head>
<body bgcolor="grey">
        <div>
                     <img src="image2.png" width="1550px" height="400px">
                    
      </div>
       <div style="color:black ; background-color:#d3d3d3">
              
              
               
               
                  <a href="HomePage.jsp">&nbsp&nbspHome</a>  
                 
                  
                  
                
                  
                 </div>               
                     
       
      <H1 align="center">Select a Category to measure the complexity</H1>
  
      <table align="center">
            <tr>
                <td><a href = "SizeHome.jsp"><input class ="btn"type="button"style="background-color:blue;color:white;width:250px; height:40px;align-content: center;" value ="Complexity due to size"name="button"></a></td>
            </tr>
             <tr>
                <td><a href = "CStructuresHome.jsp"><input class ="btn"type="button"style="background-color:blue;color:white;width:250px; height:40px;align-content: center;font:bold;" value ="Complexity due to control structures"></a></td>
            </tr>
             <tr>
                <td><a href = "inheritance.jsp"><input class ="btn"type="button"style="background-color:blue;color:white;width:250px; height:40px;align-content: center;font:bold;" value ="Complexity due to inheritance"></a></td>
            </tr>
             <tr>
                <td><a href = "IterationHome.jsp"><input class ="btn"type="button" style="background-color:blue;color:white;width:250px; height:40px;align-content: center;font:bold;"value ="Complexity due to iteration"></a></td>
            </tr>
      </table>
</body>
</html>