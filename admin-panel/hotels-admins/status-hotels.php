<?php require "../layouts/header.php" ; ?>
<?php require "../../config/config.php" ; ?>
<?php 

  if(isset($_GET['id'])) {
    $id = $_GET['id'];
    if(isset($_POST['submit'])) {
    //   if(empty($_POST["status"])){
    //     echo "<script> alert('one more input are empty')</script>";
    // } else {
      $update = $_POST['status'];
      $update = $conn->prepare("UPDATE hotels SET status = :status WHERE id='$id'");
      $update->execute([
      ":status"=> $status,
    ]);

    header("location : show-hotel.php");
    }
   //}
  }

?>


       <div class="row">
        <div class="col">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title mb-5 d-inline" >Update Status</h5>
          <form method="POST" action="status-hotels.php?id=<?php echo $id;?> " enctype="multipart/form-data">
                <!-- Email input -->
                <select name="status" style="margin-top: 15px;" class="form-control">
                    <option>Choose Status</option>
                    <option value="1">1</option>
                    <option value="0">0</option>
                </select>

      
                <!-- Submit button -->
                <button style="margin-top: 10px;" type="submit" name="submit" class="btn btn-primary  mb-4 text-center">update</button>

          
              </form>

            </div>
          </div>
        </div>
      </div>
<?php require "../layouts/footer.php" ; ?>
