<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

 


<%@page import = "java.util.*,java.io.*,java.nio.*,java.nio.file.Files,
java.nio.file.Path,
java.nio.file.Paths, java.nio.charset.Charset"%>

<%

		String folderPath = "E:\\Projects\\3rd yr 2nd sem\\NEW ECLIPSE PROJECTS\\Tool";
		Path path = Paths.get(folderPath, "Tool");
		Charset charset = Charset.forName("UTF-8");

		
	
	
		try{
			BufferedReader reader;
			reader = Files.newBufferedReader(path , charset);
			String line = reader.readLine();
			int count1 = 0;
			int count2 = 0;
			int count3 = 0;
			int count4 = 0;
			int count5 = 0;
			int count6 = 0;
			int count7 = 0;
			int count8 = 0;
			int count9 = 0;
			int count10 = 0 ;
			int count11 = 0 ;
			int count12 = 0 ;
			int count13 = 0;
			int count14 = 0 ;
			
			
			while ((line = reader.readLine()) != null ) {
			
				
				String[] lineVariables = line.split(" ");
				
					if(!(line.contains("//"))){
					    
						    for(int i =0;i<lineVariables.length;i++){
						    	
						    			if(lineVariables[i].contains("+")||lineVariables[i].contains("-")||lineVariables[i].contains("*")||lineVariables[i].contains("-")||lineVariables[i].contains("++")||lineVariables[i].contains("--")){
						    					count1 = count1 + 1;
						    					
						    					
						    					
						  				}
						    			
						    			else if(lineVariables[i].contains("==")||lineVariables[i].contains("!=")||lineVariables[i].contains(">")||lineVariables[i].contains("<")||lineVariables[i].contains(">=")||lineVariables[i].contains("<=")){
						    				 count2 = count2 + 1 ;
						    			}
						   				 else if(lineVariables[i].contains("&&")||lineVariables[i].contains("||")||lineVariables[i].contains("!")){
						   					count3 = count3 +1 ;
						   				 }
						    			
						   				 else if(lineVariables[i].contains("|")||lineVariables[i].contains("^")||lineVariables[i].contains("~")||lineVariables[i].contains("&")||lineVariables[i].contains("<<")||lineVariables[i].contains(">>")||lineVariables[i].contains(">>>")||lineVariables[i].contains("<<<")){
						   					count4 = count4 +1 ;
						   				  }
						    
						    			else if(lineVariables[i].contains(",")||lineVariables[i].contains("->")||lineVariables[i].contains(".")||lineVariables[i].contains("::")){
						    				
 
						    				count5 = count5 + 1 ;
						    				 
						    			}
						    			
						    			else if(lineVariables[i].contains("+=")||lineVariables[i].contains("-=")||lineVariables[i].contains("*=")||lineVariables[i].contains("/=")||lineVariables[i].contains("=")||lineVariables[i].contains(">>>=")||lineVariables[i].contains("|=")||lineVariables[i].contains("&=")||lineVariables[i].contains("%=")||lineVariables[i].contains("<<=")||lineVariables[i].contains(">>=")||lineVariables[i].contains("^=")){
						    				count6 = count6 + 2;
						    			}
						    			
						    			else if(lineVariables[i].contains("void")||lineVariables[i].contains("double")||lineVariables[i].contains("int")||lineVariables[i].contains("String")||lineVariables[i].contains("float")||lineVariables[i].contains("boolean")||lineVariables[i].contains("long")||lineVariables[i].contains("short")||lineVariables[i].contains("byte")||lineVariables[i].contains("printf")||lineVariables[i].contains("println")||lineVariables[i].contains("cout")||lineVariables[i].contains("cin")||lineVariables[i].contains("if")||lineVariables[i].contains("for")||lineVariables[i].contains("while")||lineVariables[i].contains("do-while")||lineVariables[i].contains("switch")||lineVariables[i].contains("Switch")||lineVariables[i].contains("Case")){
						    				count7 = count7 + 1;
						    			}
						    			
						    			else if(lineVariables[i].contains("endln")||lineVariables[i].contains("\n")){
						    				count8 = count8 + 1;
						    			}
						    			
						    			 else if(lineVariables[i].contains("\"")){
						    				 
						    				 
						    				 count10 = count10 +1;
						    			 }
						    			
						    			 else if(lineVariables[i].contains("\"")){
						    				
						    			            if(lineVariables[i].contains("new")||lineVariables[i].contains("delete")||lineVariables[i].contains("throw")||lineVariables[i].contains("throws")){
						    			            
						    			            	count9 = count9 + 0;
						    			            } 
						    			            
						    			 }
						    			 
						    			 else if(lineVariables[i].contains("()")){
						    				 count11 = count11 + 1;
						    			 }
						    			 
						    			 else if(lineVariables[i].contains("[]")){
						    				 count12 = count12 +1;
						    			 }
						    			 else if(lineVariables[i].contains("class")|| lineVariables[i].contains("Class")){
						    				 count13 = count13 + 1;
						    			 }
						    		  
						    			 else if(lineVariables[i].contains("new")||lineVariables[i].contains("delete")||lineVariables[i].contains("throw")||lineVariables[i].contains("throws")){
						    				 count14 = count14 + 2;
						    			 
						    			 }
						    			
						    			

						    			
						    				
						    				
						    }
						  
					}
					
					
			}
			
		%>
		
		
					
					 	<%out.print("Arithmetic Operator count is :"+count1); %><br>
					 	<%out.print("Relation  Operator count is :"+count2); %><br>
					 	
					 	<% out.println("Logical Operators count is :"+count3);%><br>
					 	<% out.println("Bitwise Operators count is 		 		 :"+count4);%><br>
						<%out.println("Miscellaneous Operators count is         :"+count5);%><br>
						<%out.println("Assignment Operators count is            :"+count6);%><br>
						<%out.println("Keyword count is    			         :"+count7);%><br>
						<%out.println("Manipulators count  is    				 :"+count8);%><br>
						<%out.println("Numeric value count is 					 :"+count9);%><br>
						<%out.println("Double Queotes count is 					 :"+count10);%><br>
						<%out.println("Methods count is 					 :"+count11);%><br>
						<%out.println("Array count is 					 :"+count12);%><br>
						<%out.println("Class count is 					 :"+count13);%><br>
						
						<%
							int TotalOpertorCount =  count1+count2+count3+count4+count5+count6+count7+count8+count9+count10+count11+count12+count13+count14;
							out.println("Total Count is     :"+TotalOpertorCount); %>
					
					    
					    
					    
					    
				<%	    
					    
			 
				
					
			
		} catch (IOException e) {
		    System.err.println(e);
		}
		
		%>

</body>
</html>