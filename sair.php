Learn more or give us feedback
<?php
session_start();
session_destroy();
header("location: index.php");
