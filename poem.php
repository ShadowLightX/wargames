<!DOCTYPE html>
<html>
    <head>
        <title>Latest Poem from Cicero!</title>
    </head>
    <body>
        <h1>Lorem Ipsum</h1>
        <h3>Latest poem from the poet Cicero</h3>
        <hr />
        <p>
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ullamcorper eros in dignissim semper. Aenean suscipit metus et iaculis condimentum. Etiam condimentum sapien enim. Nulla rutrum sed lacus vitae sollicitudin. Proin tellus odio, aliquet vitae cursus ac, laoreet nec enim. Nulla quis nisi vitae nisl interdum fringilla. Mauris faucibus ligula ut tempus blandit. Morbi urna libero, mollis in feugiat eget, ornare ut justo. Cras vel nunc condimentum, dapibus arcu a, aliquam nunc. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi eros tellus, ultricies eu porta ac, eleifend ut ligula. Ut eu urna justo. Nulla facilisi. Nunc volutpat augue sed adipiscing eleifend. Morbi adipiscing eros enim, condimentum varius turpis posuere ac.
        </p>
        <p>
            Cras pellentesque erat accumsan quam faucibus, et iaculis lectus placerat. Donec auctor scelerisque tortor, sed commodo lorem pellentesque at. Morbi et erat pulvinar, hendrerit velit a, pulvinar tellus. Nunc accumsan nulla tempor odio molestie, ut hendrerit turpis iaculis. Donec vel orci eu ligula placerat faucibus vel id nulla. Donec feugiat massa arcu, nec sagittis ipsum molestie ac. Curabitur turpis eros, luctus sit amet hendrerit at, elementum a tellus. Curabitur at leo dictum, viverra enim ut, varius massa. Phasellus rhoncus tincidunt lacus nec elementum. Praesent dictum laoreet metus, ut venenatis nunc gravida ac. Nunc viverra nec velit sit amet interdum. Sed congue, est sed luctus euismod, nisl massa facilisis sem, mollis venenatis ipsum diam in eros. Nunc in feugiat massa. Integer id aliquet purus. Vivamus pulvinar dolor mauris, vel tristique sapien adipiscing molestie.
        </p>
        <p>
            Phasellus auctor massa vel leo porttitor pharetra. Cras aliquet convallis eleifend. In pretium dolor nec elit dictum dictum. Sed vel tellus vel lacus iaculis placerat. Integer eu felis hendrerit, laoreet justo sed, tempus felis. Morbi id luctus mi. Sed suscipit diam et ante interdum consequat. Pellentesque sagittis sapien sed nisl accumsan fringilla. Vestibulum quis quam et lorem luctus tempus id mollis ante. Sed felis quam, accumsan ac libero sed, porta vehicula metus. In vel suscipit tellus, sed placerat nunc. Cras sagittis ut ipsum ut vulputate. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Morbi pharetra elit purus, vitae elementum libero imperdiet ac. Sed sit amet enim quis lacus vehicula molestie aliquet a lorem. Donec mauris mauris, egestas dictum risus ac, vulputate egestas nisl.
        </p>
        <hr />
        <?php
            $commentFile = ".comments";
            if(empty($_POST["comment"]))
            {
                $timestamp = time();
                $self = $_SERVER["PHP_SELF"];
                $form = <<< EOF
                    <h2>Post a Comment</h2>
                    <form method="post" action="$self" id="commentForm">
                        Name: <input type="text" name="author" />
                        <input type="hidden" name="timestamp" value="$timestamp" /><br />
                        <textarea name="comment" rows="8" cols="40"></textarea><br />
                        <button type="submit">Comment</button>
                    </form>
EOF;
                echo $form;
            }
            else
            {
                $fd = fopen($commentFile, "ab");
                if($fd === false)
                {
                    echo "bad comment file";
                    exit;
                }

                $timestamp  = time();
                $postString = $_POST["comment"] . "|" . $_POST["author"] . "|$timestamp\n";
                fwrite($fd, $postString);
                fclose($fd);
            }

            $fd = fopen($commentFile, "rb");
            if($fd === false)
            {
                echo "bad comment file";
                exit;
            }

            while(($line = fgetcsv($fd, 16384, "|")) !== false)
            {
                $comment   = $line[0];
                $author    = $line[1];
                $timestamp = $line[2];
                $date      = date("Y-m-d H:i:s", $timestamp);

                echo "<p><strong>$author</strong><br /><em>$date</em><br/>$comment</p>\n";
            }
        ?>
    </body>
</html>
