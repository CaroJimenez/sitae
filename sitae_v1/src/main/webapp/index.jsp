<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Registro de talleres</title>
</head>
<body>
<center>
    <h1>Upload File Form</h1>
    <form action="FileUploadHandler" enctype="multipart/form-data" method="post">
      <input type="hidden" name="file_name"><br>
        Select<input type="file" name="file2" /><br>
        <input type="submit" value="upload" />
    </form>

</center>
</body>
</html>
</html>
