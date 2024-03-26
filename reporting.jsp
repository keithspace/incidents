<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->

    <head>
        <title>Estates Department Repair Reporting</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style media = "all">
          *,
            *:before,
            *:after {
              padding: 0;
              margin: 0 auto;
              box-sizing: border-box;
            }

            body {
              background-color: #bcbec0;
            }

            .background {
              width: 430px;
              height: 950px;
              position: absolute;
              transform: translate(-50%, -50%);
              left: 50%;
              top: 90%;
            }

            .background .shape {
              height: 300px;
              width: 300px;
              position: absolute;
              border-radius: 50%;
            }

            .shape:first-child {
              background: linear-gradient(#00a651,
                  #66ca97);
              left: -350px;
              top: -180px;
            }

            .shape:last-child {
              background: linear-gradient(to right,
                  #E0181F,
                  #e95d62);
              right: -350px;
              bottom: -80px;
            }

            form {
              height: 800px;
              width: 700px;
              /*background-color: rgba(255, 255, 255, 0.13);*/
              position: absolute;
              transform: translate(-50%, -50%);
              top: 60%;
              left: 50%;
              border-radius: 10px;
              backdrop-filter: blur(10px);
              border: 2px solid rgba(255, 255, 255, 0.1);
              box-shadow: 0 0 40px rgba(8, 7, 16, 0.6);
              padding: 50px 35px;
              background-color: #E7ECEB;
            }

            form * {
              font-family: 'Poppins', sans-serif;
              color: #080710;;
              letter-spacing: 0.5px;
              outline: none;
              border: none;
            }

            form h3 {
              font-size: 32px;
              font-weight: 500;
              line-height: 42px;
              text-align: center;
            }

            label {
              display: block;
              margin-top: 30px;
              font-size: 16px;
              font-weight: 500;
            }

            input {
              display: block;
              height: 50px;
              width: 100%;
              background-color: rgba(255, 255, 255, 0.89);
              border-radius: 3px;
              padding: 0 10px;
              margin-top: 8px;
              font-size: 14px;
              font-weight: 300;
            }

            ::placeholder {
              color: #e5e5e5;
            }

            button {
              margin-top: 50px;
              width: 100%;
              background-color: #ffffff;
              color: #080710;
              padding: 15px 0;
              font-size: 18px;
              font-weight: 600;
              border-radius: 5px;
              cursor: pointer;
            }
            .center{
                width: 50%;
                margin-top: 30px;
                height: 100%; 
            }
        </style>
       
    </head>
    <body>
    <div class="background"> 
    <div class="shape"></div>
    <div class="shape"></div>
    </div>
        <div class="center">
                <form action="Incidents" method="post">
                    <h3>Report an Incident</h3>
                    <p>                  
                        Staff ID: <br>
                        <input type="text" id="StaffID" name="StaffID" readonly><br><br>
                        Department: <br>
                        <input type="text" name="department"><br><br>
                        Room: <br>
                        <input type="text" name="room"><br><br>                     
                        Incident: <br>
                        <input type="text" name="incident"> <br> <br> 
                        Date: <br>
                        <input type="date" name="date"> <br> <br> 
                        <button>Submit</button>
                    </p>
                </form>
         </div>
       <script>
        // Retrieve staff ID from URL parameter
        const urlParams = new URLSearchParams(window.location.search);
        const staffId = urlParams.get('StaffID');
        
        // Log staffId to console
        console.log("Staff ID:", staffId);

        // Autofill staff ID field
        document.getElementById('StaffID').value = staffId;
        </script>   
    </body>
</html>

