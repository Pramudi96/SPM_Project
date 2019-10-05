<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

 

<%@page import = "java.util.*,java.io.*,java.nio.*,java.nio.file.Files,java.nio.file.Path,java.nio.file.Paths, java.nio.charset.Charset"%>


<%
		String folderPath = "E:\\Projects\\3rd yr 2nd sem\\Eclipse Projects\\complexityTool\\src\\complexityTool";
		Path path = Paths.get(folderPath, "Sample.java");
		Charset charset = Charset.forName("UTF-8");

	
		try{
			BufferedReader reader;
			reader = Files.newBufferedReader(path , charset);
			String line = reader.readLine();
			int count = 0;
			int count1 = 0;
		
			while ((line = reader.readLine()) != null ) {
				String[] lineVariables = line.split(" ");
				
				if(!(line.contains("//"))){
					
					for(int i =0;i<lineVariables.length;i++){
						 
						if(lineVariables[i].contains("for")||lineVariables[i].contains("while")||lineVariables[i].contains("do-while")){
							count = count + 1;
						}
					}
				 }
			}
			out.print("Loop count is: "+count);
			
%><br>
				
<%	    } catch (IOException e) {
		    System.err.println(e);
		}
		
%>

</body>
</html>