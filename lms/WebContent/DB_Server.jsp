<%@page import="java.sql.*"%>
<%
    //Database
    Connection con=null; 
    Statement stmt=null;
    PreparedStatement ps=null;
    ResultSet rs=null;
    String sqlQuery=null;
    
    System.out.println("Logger Test");
    
    try
    {
        //Class.forName("com.mysql.jdbc.Driver");
        Class.forName("com.mysql.cj.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/libmgmt","root","");         
        stmt=con.createStatement();
    }
    catch(Exception e)
    {
    	System.out.println("E"+e.getLocalizedMessage()+""+e.getMessage());
        out.println("<script>console.log('Exception: "+e.toString()+"');</script>");
    }
%>