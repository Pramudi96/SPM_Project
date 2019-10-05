

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Code Complexity Tool</title>
</head>
<body>


   <h1>Measuring the Complexity of a Program Statement with Iterative Control Structure</h1>
   	<table width="43%" border="0">
        <tr>
            <td bgcolor="#90ee90">
            	<table class="table">
                    <thead>
                    <tr style="background-color: #36c94e">
                        <th>Program Statements</th>
						<th>Count</th>
                        
                    </tr>
                    </thead>
                    <tbody>
                   
                        <tr style="background-color: #8fcafe">
                            <td><%@ include file = "IterationJavaFile.jsp"%> </td>
                           <td><jsp:include page="Iteration.jsp" /></td>
                       
                        </tr>
                        
               		</tbody>
               		
                </table>
                
              </td>  
            </tr>
       
  </table>

</body>
</html>