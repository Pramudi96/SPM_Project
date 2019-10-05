<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page
	import="java.sql.*,java.util.*,java.io.*,java.nio.charset.Charset, java.nio.file.Files, java.nio.file.Path,java.nio.file.Paths"%>

<%
	String folderPath = "E:\\Projects\\3rd yr 2nd sem\\Eclipse Projects\\Tool";
	Path path = Paths.get(folderPath, "Tool");
	Charset charset = Charset.forName("UTF-8");
	
	int weight = 0;
	
	int weight1 = 0;
	int weight2 = 0;
	int weight3 = 0;
	int weight4 = 0;
	
	int noOfSwitch = 0;
	int totalWeight = 0;

	try{
		BufferedReader reader;
		reader = Files.newBufferedReader(path , charset);
		String line = reader.readLine();
		
		
		while ((line = reader.readLine()) != null ){
			
			String[] lineVariables = line.split(" ");
			
			
			
			if(!(line.contains("//"))){
			    
			    for(int i =0;i<lineVariables.length;i++){
			   		
			    	if(lineVariables[i].contains("if") && lineVariables[i].length() == 2 ){
			    		if(i>1 && (!lineVariables[i].contains("else if"))){
						weight = weight +1;
			    		
			    		}
					}
					
			    	/*if(lineVariables[i].contains("if")){
						
						
						if(lineVariables[i].contains("if")){
							weight1 = weight1 +2;
						}
						
					}*/
					
			    	/*else if(lineVariables[i].contains("else if")){
						weight2 = weight2 +1;
					}*/
					
					else if(lineVariables[i].contains("&&") || lineVariables[i].contains("&") ){
						weight3 = weight3 +1;
					}
					
					else if(lineVariables[i].contains("||") || lineVariables[i].contains("|") ){
						weight4 = weight4 +1;
					}
					
					else if(lineVariables[i].contains("case")){
						noOfSwitch = noOfSwitch +1;
					}
					
					else if(lineVariables[i].contains("default")){
						noOfSwitch = noOfSwitch +1;
					}
					
					

			
		}
			    
			}
			
		}
		
		totalWeight = weight + noOfSwitch;

		%>
		
			
		
		
		
		<%
		
			out.println("Number of Switch Case    :"+noOfSwitch);%><br>
			<%out.println("Number of if  	:"+weight);%><br>
			<% out.println("Total Weight is "+ totalWeight);%><br>
<%		
	
		} catch (IOException e) {
		System.err.println(e);
	}
%>