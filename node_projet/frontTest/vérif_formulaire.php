<?php
$email_err= '';
$password_err = '';

if ($_SERVER['REQUEST_METHOD']=== 'POST'){
    $email = $_POST['email'];
    $password = $_POST['password'];

    if(empty($email)|| empty($password)){
        echo '<script>alert("veuillez remplir tous les champs."); history.back();</script>';
        exit;
    }
    if (!strpos($email, '@cesi.com')){
        echo '<script>alert("l\'e-mail doit être une email cesi"); history.back();</script>';
        exit;
    }

    if(strlen($password)<8 && !preg_match('/^(?=.*[A-Z])(?=.*[!@#$%^&_]).{8,}$/', $password)){
        $password_err = 'Le mot doit passe ne respecte pas le format(1 caractére spécial 1 majuscule 8 caractéres';
    }

    if(!empty($password_err)){
        echo '<script>alert("' .$password_err. '"); history.back();</script>';
        exit;
    }
}
