function hashPassword()
{
    var formElement   = document.getElementById("password");
    var clearText     = formElement.value;
    var sha512        = new jsSHA(clearText, "TEXT");
    var sha512hash    = sha512.getHash("SHA-512", "HEX");
    formElement.value = sha512hash;
}
