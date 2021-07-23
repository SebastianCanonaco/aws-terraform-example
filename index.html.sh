#!/bin/bash
sudo yum update -y
sudo yum -y install httpd -y
sudo service httpd start
cat > /var/www/html/index.html << EOF
<!DOCTYPE html>
<html lang="en">
<head>    
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pagina inicial de mercado libre</title>
</head>
<body style="background-color: #ffe600;">
    <div style="width:800px; margin:0 auto;">
        <p>BIENVENIDOS A MERCADO LIBRE</p>   
    </div>
    <br>
    <div style="width:800px; margin:0 auto;">
        <img src="https://anymarket.com.ar/wp-content/uploads/2019/04/1200px-MercadoLibre-1.png" alt="" width=30%>
    </div>
    <br><br><br><br>
    <div style="width:800px; margin:0 auto;">
        Powered by
    </div>
    <div style="width:800px; margin:0 auto;">
        <img src="https://www.developerro.com/assets/uploads/2019/07/hashicorp-terraform.png" width=15% alt="">
    </div>
</body>
</html>
EOF