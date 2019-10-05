<%@page import="java.nio.charset.Charset"%>
<%@ page language="java" contentType="text/html;charset=UTF-8" %>

    <%@page
          import = "java.util.*,java.io.*,java.nio.file.*"%>
          
           <%
            
        		    
        		   String folder = "E:\\Projects\\3rd yr 2nd sem\\Eclipse Projects\\Tool\\WebContent";
        		   Path path = Paths.get(folder,"sample");
        		   Charset charset = Charset.forName("UTF-8");
        		   
        		   BufferedReader reader;
        		   reader = Files.newBufferedReader(path,charset);
        		   String line = reader.readLine();
        		   
        		   int count = 0;
        		   int count2 = 1;
        		   int totalComplexity = 0;
        		   int complexity;
        		   while((line = reader.readLine()) != null){
        			   if(!(line.contains("//"))){
        				   if(line.contains("implements")){
                            	 String ancesstors[] = line.split("implements");
                            	   String[] result = ancesstors[1].split(",");
                  				 
                  				 for(String r : result){
                  					
                  					 count++;
                  					 
                  					 
                  				 }
                  				
                  				 out.println("No of Ancesstor classes for class"+ count2 + ":"+count);
                  				     
                                complexity = count + 1;
                  				out.println("Complexity of class"+ count2 + ":"+complexity);
                  				totalComplexity = totalComplexity + complexity;
                  				count2++;
         		        	 }
        			       if(line.contains("extends")){
        			    	   out.println("No of Ancesstor classes for class"+ count2 + ":"+ 1);
        			    	  
        			    	    complexity = 2;
                 				out.println("Complexity of class"+ count2 + ":"+complexity);
                 				 count2++;
                 				totalComplexity = totalComplexity + complexity;
        			       }
                             
        			   }
        			   
        		     
        			   }
        			   out.print("Total Complexity of the program is:" + totalComplexity);
        			   
        		 
        		   
        	
           %>
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           