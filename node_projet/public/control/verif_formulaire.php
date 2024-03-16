<?php
$email_err= '';
$password_err = '';

//if ($_SERVER['REQUEST_METHOD'] === 'POST'){
if (isset($_POST['submit']))  {
    $email = $_POST['email'];
    $password = $_POST['password'];

    if(empty($email) || empty($password)){
        echo '<script>alert("Veuillez remplir tous les champs."); history.back();</script>';
        exit;
    }
    if (!strpos($email, '@cesi.com')){
        echo '<script>alert("L\'e-mail doit être une email cesi."); history.back();</script>';
        exit;
    }

    if(!preg_match('/^(?=.*[A-Z])(?=.*[!@#$%^&_]).{8,}$/', $password)){
        $password_err = 'Le mot de passe doit respecter le format (1 caractère spécial, 1 majuscule, 8 caractères minimum).';
    }

    if(!empty($password_err)){
        echo '<script>alert("' .$password_err. '"); history.back();</script>';
        exit;
    }
}
?>
