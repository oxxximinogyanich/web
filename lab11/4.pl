#!/usr/bin/perl
use CGI "param";
use CGI::Carp qw(fatalsToBrowser);

$name = param("name");
$age  = param("age");

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

print "Content-type: text/html\n\n";

print <<END_DOC;
<html>
<head>
    <meta charset="UTF-8">
    <title>Результат</title>
</head>
<body>
    <h2>Результат</h2>
    <p>$text</p>
</body>
</html>
END_DOC

Способ 3 — стиль с функцией, отдельное присваивание