<!DOCTYPE html>
<html>
    <head>
        <title>User Login</title>
        <script src="sha512.js" type="text/javascript"></script>
        <script src="hash-password.js" type="text/javascript"></script>
    </head>
    <body>
        <?php
            if(empty($_POST["username"]) || empty($_POST["password"]))
            {
                $self = $_SERVER["PHP_SELF"];
                $form = <<< EOF
                    <form method="post" action="$self" id="loginForm" onSubmit="hashPassword()">
                        Username: <input type="text" name="username" /><br />
                        Password: <input type="password" name="password" id="password" /><br />
                        <button type="submit">Login</button>
                    </form>
EOF;
                echo $form;
            }
            else
            {
                $passwordFile = ".passwords";
                $fd = fopen($passwordFile, "rb");
                if($fd === false)
                {
                    echo "bad password file";
                    exit;
                }

                $loggedIn = false;
                while(($line = fgetcsv($fd, 512)) !== false)
                {
                    $user  = $line[0];
                    $hash  = $line[1];
                    $admin = $line[2];

                    if($user == $_POST["username"] && $hash == $_POST["password"])
                    {
                        $loggedIn = true;
                        echo "<p> User $user logged in successfully, ";
                        if($admin == 1)
                        {
                            echo "as admin!</p>";
                        }
                        else
                        {
                            echo "not as admin!</p>";
                        }
                        break;
                    }
                }

                if($loggedIn === false)
                {
                    echo "<p>username/password incorrect</p>";
                }
            }
        ?>
    </body>
</html>
