<html>
<head>
<title>Exercise 8-7</title>
</head>
<body>
<h1>Simple Calendar using Loops</h1>

<table border="1">
<?php
  echo "<tr><th colspan = '7'>".date("M")."</th></tr>"
?>
<tr>
  <th>Sun</th><th>Mon</th><th>Tue</th><th>Wed</th><th>Thu</th><th>Fri</th><th>Sat</th>
</tr>
<?php 
  $day = 0;
  while ($day<= cal_days_in_month(CAL_GREGORIAN, date('m'),date('Y'))) {
    //when we need a new row go ahead.
    if ($day%7==0) {
    echo "</tr><tr>";
    }
    echo "<td>".($day+1)."</td>";
    $day++;
   }
?>

</table>


</body>
</html>
