<?php require "../layouts/header.php" ; ?>
<?php require "../../config/config.php" ; ?>
<?php 

// if(isset($_SESSION['username'])) {
//   echo "<script>window.location.href='".APPURL."' <script>";
// }
  if(isset($_POST["submit"])) {
    if(empty(trim($_POST["password"])) or empty(trim($_POST["email"]))) {
      echo "<script> alert('one more input are empty')</script>";
    } else {
        $email=trim($_POST["email"]);
        $password=trim($_POST["password"]);

        $login = $conn->query("SELECT * FROM admins WHERE email='$email'");
        $login-> execute();

        $fetch = $login->fetch(PDO::FETCH_ASSOC);

        if($login-> rowCount() > 0) {
          if(password_verify($password, $fetch['mypassword'])) {
            echo "<script> alert('LOGINED IN')</script>";
            $_SESSION['adminname'] = $fetch['adminname'];
            $_SESSION['id'] = $fetch['id'];

            header("location: ".ADMINURL."");
          } else {
            echo "<script> alert('email or password is wrong, or both :)')</script>";
          }
      }
    }
  }

?>
      <div class="row">
        <div class="col">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title mt-5">Login</h5>
              <form method="POST" class="p-auto" action="login-admins.php">
                  <!-- Email input -->
                  <div class="form-outline mb-4">
                    <input type="email" name="email" id="form2Example1" class="form-control" placeholder="Email" />
                   
                  </div>

                  
                  <!-- Password input -->
                  <div class="form-outline mb-4">
                    <input type="password" name="password" id="form2Example2" placeholder="Password" class="form-control" />
                    
                  </div>



                  <!-- Submit button -->
                  <button type="submit" name="submit" class="btn btn-primary  mb-4 text-center">Login</button>

                 
                </form>

            </div>
       </div>
<?php require "../layouts/footer.php" ; ?>