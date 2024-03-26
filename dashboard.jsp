<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="jakarta.servlet.http.HttpSession"%>


<!DOCTYPE html>
<html lang="en">
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" href="egertonuniversity-logo_thumb.png">

    <title>Dashboard</title>
    <style>
        body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f0f0f0; /* Light gray background */
        color: #000; /* Black text */
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        
    }
    
    .container {
        width: 300px; /* Adjust width as needed */
        padding: 30px;
        background-color: #fff; /* White container background */
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        text-align: center;
    }
    
    h1 {
        margin-bottom: 20px;
    }
    
    .buttons {
        display: flex;
        justify-content: center;
    }
    
    .buttons a {
        background-color: #28a745; /* Green color for buttons */
        color: #fff; /* White text */
        padding: 10px 20px;
        border: 1px solid black;
        border-radius: 5px;
        cursor: pointer;
        margin: 0 20px; /* Adjust spacing between buttons */
        text-decoration: none;
    }
    /* Button style on hover */
    button:hover {
        background-color: #45a049; /* Darker green */
    }
    
    .buttons a.active {
        background-color: #dc3545; /* Red color for active button */
    } 
    </style>
    <script>
      function redirectToReportingPage() {      
         // Retrieve the staff ID from the session
        var staffId = '<%= session.getAttribute("StaffID") %>';
      
        window.location.href = "reporting.html?StaffID=" + staffId;
        }
</script>
   </head>
   <body>
    <div class="container">
        <h1>Repair Report Dashboard</h1>
        <div class="buttons">
            <button onclick="redirectToReportingPage()" class="active">
                Report an Incident </button>
             <form action="IncidentServlet" method="get">
           <input type="submit" value="View Reported Incidents">
             </form>
        </div>
        <div id="bar-chart" class="chart"></div>
    </div>
  
</body>
</html>
