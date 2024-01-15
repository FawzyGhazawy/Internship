<!DOCTYPE html>
<html>
<head>
    <title>User Info Page</title>
    <script type="text/javascript">
        function checkRequired() {
            if (
                document.getElementById("name_id").value == "" ||
                document.getElementById("password_id").value == "" ||
                document.getElementById("age_id").value == "" ||
                (document.getElementById("male_id").checked == false && document.getElementById("female_id").checked == false) ||
                document.getElementById("address_id").value == ""
            ) {
                alert("All fields are required!!!");
                return false;
            }
            return true;
        }
    </script>
    <style type="text/css">
    .label{
    font-weight: bold;
    font-size: 20px;
    color: #FF0000; 
    }
    
    </style>
</head>
<body>
    <form action="exe04submit.jsp" method="post" onsubmit="return checkRequired();">
        <label for="name" class="label">Name:</label>
        <input type="text" id="name_id" name="name_name"><br><br>

        <label for="password" class="label">Password:</label>
        <input type="password" id="password_id" name="password_name"><br><br>
        
        <label for="age" class="label">Age:</label>
        <input type="age" id="age_id" name="age_name"><br><br>

        <label for="sex" class="label">Sex:</label>
        <input type="radio" id="male_id" name="sex_name" value="male">Male
        <input type="radio" id="female_id" name="sex_name" value="female">Female<br><br>

        <label for="address" class="label">Address:</label>
        <textarea name="address_name" id="address_id" rows="4" cols="50" placeholder="Enter your address"></textarea><br><br>

        <input type="submit" value="Submit">
    </form>
</body>
</html>
