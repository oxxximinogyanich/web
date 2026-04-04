#!/usr/bin/perl
use CGI qw(param);
use CGI::Carp qw(fatalsToBrowser);

$name = param("name");
$age  = param("age");

print "Content-type: text/html\n\n";

if ($age <= 30)
{
    $text = "Привет! $name.";
}
elsif ($age > 30 && $age < 50)
{
    $text = "Привет! $name. У Вас прекрасный возраст.";
}
else
{
    $text = "Привет! $name. Вы старейшина.";
}

print <<END_DOC;
<html>
<head>
    <meta charset="UTF-8">
    <title>Приветствие</title>
</head>
<body>
    <h2>Результат</h2>
    <p>$text</p>
</body>
</html>
END_DOC