<!DOCTYPE html>
<html>
    <head>
        <title>Planet Search</title>
    </head>
    <body>
        <?php
            if(empty($_POST["search"]))
            {
                $self = $_SERVER["PHP_SELF"];
                $form = <<< EOF
                    <form method="post" action="$self">
                        Search planets: <input type="text" name="search" /><br />
                        <button type="submit">Search</button>
                    </form>
EOF;
                echo $form;
            }
            else
            {
                $mysql = mysql_connect("localhost", "wargames_team2", "ilovesecurepasswords");
                mysql_select_db("wargames_team2", $mysql);
                $query  = "SELECT name, division FROM planet WHERE name LIKE '%" . $_POST["search"] . "%'";
                $result = mysql_query($query, $mysql);
                if(!$result)
                {
                    echo "Invalid query: " . mysql_error();
                    exit;
                }
                
                echo "<table border=\"1\"><tr><th>Name</th><th>Division</th></tr>";
                while($row = mysql_fetch_assoc($result))
                {
                    echo "<tr><td>" . $row["name"] . "</td><td>" . $row["division"] . "</td></tr>";
                }
                echo "</table>";
            }
        ?>
    </body>
</html>
