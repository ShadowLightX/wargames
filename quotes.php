<!DOCTYPE html>
<html>
    <head>
        <title>Quote Generator</title>
    </head>
    <body>
        <h1>Quote Generator</h1>
        <?php
            if(empty($_POST["type"]))
            {
                $self = $_SERVER["PHP_SELF"];
                $form = <<< EOF
                <p>Select the type of quote you'd like to see.</p>
                <form method="post" action="$self">
                    <input type="checkbox" name="type[]" value="computers"> Computers<br />
                    <input type="checkbox" name="type[]" value="linux"> Linux<br />
                    <input type="checkbox" name="type[]" value="startrek"> Star Trek<br />
                    <input type="checkbox" name="type[]" value="disclaimer"> Legal Disclaimers<br />
                    <input type="checkbox" name="type[]" value="ubuntu-server-tips"> Ubuntu Server Tips<br />
                    <button type="submit">Generate Quotes</button>
                </form>
EOF;
                echo $form;
            }
            else
            {
                $types = implode(" ", $_POST["type"]);
                passthru("/usr/games/fortune $types");
            }
        ?>
    </body>
</html>