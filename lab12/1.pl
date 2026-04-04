#!/usr/bin/perl
use CGI qw(param);
use CGI::Carp qw(fatalsToBrowser);

$code  = param("code");
$color = param("color");

# добавляем # к коду
$hex = "#$code";

# русские названия
if ($color eq "red")       { $name = "красный"; }
elsif ($color eq "yellow") { $name = "желтый"; }
elsif ($color eq "brown")  { $name = "каштановый"; }
elsif ($color eq "green")  { $name = "зеленый"; }
elsif ($color eq "blue")   { $name = "синий"; }

print "Content-type: text/html\n\n";

print <<END_DOC;
<html>
<head>
    <meta charset="UTF-8">
    <title>Сравнение цветов</title>
</head>
<body>

<h2>СРАВНЕНИЕ ЦВЕТОВ</h2>

<p style="color:$hex; font-size:30px;">$hex</p>

<p style="color:$color; font-size:30px;">$name</p>

<a href="../colors.html">ВОЗВРАТ</a>

</body>
</html>
END_DOC