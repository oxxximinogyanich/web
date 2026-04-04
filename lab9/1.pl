#!/usr/bin/perl
use CGI qw(param);
use CGI::Carp qw(fatalsToBrowser);

$a = param("a");
$n = param("n");

$b = $a ** $n;

print "Content-type: text/html\n\n";

print <<END_DOC;
<html>
<head>
    <meta charset="UTF-8">
    <title>Результат</title>
</head>
<body>
    <h2>Результат вычисления</h2>
    <p>$a <sup>$n</sup> = $b</p>
</body>
</html>
END_DOC