<?php require "../layouts/header.php" ; ?>
<?php require "../../config/config.php" ; ?>
<?php 

  if (!isset($_SESSION["adminname"])) {
    echo "<script> window.location.href='".ADMINURL."/admins/login-admins.php'</script>";
  }
  if(isset($_POST["submit"])) {
    if(empty($_POST["adminname"]) or empty(trim($_POST["password"])) or empty(trim($_POST["email"]))) {
      echo "<script> alert('one more input are empty')</script>";
  } else {
      $adminname = trim($_POST["adminname"]);
      $password = password_hash($_POST["password"], PASSWORD_DEFAULT); 
      $email = trim($_POST["email"]);

      $insert = $conn -> prepare("INSERT INTO admins(adminname, email, mypassword) VALUE (:adminname, :email, :mypassword)");

      $insert -> execute([
        ":adminname" => $adminname,
         ":email" => $email,
         ":mypassword" => $password,
      ]);
      ini_set('display_errors', 0);
      header("location: admins.php");
    }
  }
?>
       <div class="row">
        <div class="col">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title mb-5 d-inline">Create Admins</h5>
          <form method="POST" action="create-admins.php" enctype="multipart/form-data">
                <!-- Email input -->
                <div class="form-outline mb-4 mt-4">
                  <input type="email" name="email" id="form2Example1" class="form-control" placeholder="email" />
                 
                </div>

                <div class="form-outline mb-4">
                  <input type="text" name="adminname" id="form2Example1" class="form-control" placeholder="username" />
                </div>
                <div class="form-outline mb-4">
                  <input type="password" name="password" id="form2Example1" class="form-control" placeholder="password" />
                </div>

               
            
                
              


                <!-- Submit button -->
                <button type="submit" name="submit" class="btn btn-primary  mb-4 text-center">create</button>

          
              </form>

<?php require "../layouts/footer.php" ; ?>           