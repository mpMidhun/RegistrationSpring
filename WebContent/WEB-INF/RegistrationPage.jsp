<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration Form</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script>  
function validateform(){  
var name=document.submitForm.name.value;  
var age=document.submitForm.age.value;
var age=document.submitForm.address.value;
  
if (name==null || name==""){  
  alert("Name can't be blank");  
  return false;  
}
if (address==null || address==""){  
	  alert("Address can't be blank");  
	  return false; 
}
if (age==null || age==""){  
	  alert("Age can't be blank");  
	  return false;;  
} 

return true;
}  
</script>  
</head>

<body>
	<div class="content-fluid" >
		<div class="row" align="center" style="font-size: 15px;  ">	
			<h1>Registration Form</h1>
				<form:form name="submitForm" method="POST" onsubmit="return validateform()">
					<div>Name:</div>
					<div><input type="text" id="name" name="name"  placeholder="Name" style="height: 40px; margin-top: 10px;" required="">  </div>
					<div>Age:</div>
					<div><input type="number" id="age"  name="age" placeholder="Age" style="height: 40px; margin-top: 10px;" required=""> </div>
					<div>Address:</div>
					<div><input type="text" id="address" name="address"  placeholder="Address"  style="height: 40px; margin-top: 10px; " required="">  </div>
					<div>File</div>
					<div><input type="file"  id="file" style=" margin-left: 100px; margin-top: 10px;"> </div>	
					<input type="submit" class=" btn btn-success btn-lg" value="Register" style="height: 40px; margin-top: 10px;"  />				
				</form:form>
				<div style="color: red">${error}</div>
		</div>
	</div>		
</body>
</html>