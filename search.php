<?php require "includes/header.php"; ?>
<?php require "config/config.php"; ?>
<?php
	$hotel = $conn->query("SELECT * FROM hotels WHERE status = 1");
	$hotel->execute();
	$allhotels = $hotel->fetchAll(PDO::FETCH_OBJ);

	$room = $conn->query("SELECT * FROM rooms WHERE status = 1");
	$room->execute();
	$allRooms = $room->fetchAll(PDO::FETCH_OBJ);	
 ?>
<div>
    <section class="hero-wrap hero-wrap-2" style="background-image: url('images/image_2.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
          	<p class="breadcrumbs mb-2"><span class="mr-2"><a href="index.html">Home <i class="fa fa-chevron-right"></i></a></span> <span>Rooms <i class="fa fa-chevron-right"></i></span></p>
            <h1 class="mb-0 bread">Apartment Room</h1>
          </div>
        </div>
      </div>
    </section>	
	<?php 
		$conn = mysqli_connect("localhost", "root", "","hotel-booking");
		if(isset($_GET["search"]) && !empty($_GET["search"])) {
			$key = $_GET["search"];
			$sql = "SELECT * FROM rooms WHERE (name LIKE '%$key%' OR price LIKE '%$key%' OR num_person LIKE '%$key%'
        	OR size LIKE '%$key%' OR num_beds LIKE '%$key%' OR hotel_name LIKE '%$key%') AND status = 1";
		} else {
			$sql = "SELECT * FROM rooms WHERE status = 1";
		}
		$result = mysqli_query($conn, $sql);
		// if(isset($result)) {
		// 	echo "done";
		// }
	?>
	<section class="ftco-section bg-light">
		<form action="" method="get">
			<input type="text" name="search" placeholder="Enter the rooms you like" value="<?php if(isset($_GET["search"])) {echo $_GET["search"];} ?>" >
			<input type="submit" value="Search">
		</form>
	</section>
	<section class="ftco-section bg-light">
	<div class="container-fluid px-md-0">
    <div class="row">
        <?php
        $cards_per_row = 3; // Number of cards to display per row
        $card_counter = 0; // Initialize card counter
        // ini_set('display_errors', 0);
        while ($row = mysqli_fetch_assoc($result)) {
            $id = $row["id"];
            $name = $row["name"];
            $price = $row["price"];
            $image = $row["image"];
            $num_person = $row["num_person"];
            $view = $row["view"];
            $size = $row["size"];
            $num_beds = $row["num_beds"];
            $hotel_name = $row["hotel_name"];
            ?>
            <div class="col-lg-4">
                <div class="room-wrap d-md-flex">
                    <a href="#" class="img" style="background-image: url(images/<?php echo $image; ?>);"></a>
                    <div class="half left-arrow d-flex align-items-center">
                        <div class="text p-4 p-xl-5 text-center">
                            <p class="star mb-0"><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span></p>
                            <p class="mb-0"><span class="price mr-1">$<?php echo $price; ?></span> <span class="per">per night</span></p>
                            <h3 class="mb-3"><a href="rooms/room-single.php?id=<?php echo $id; ?>"><?php echo $name; ?></a></h3>
                            <ul class="list-accomodation">
                                <li><span>Max:</span> <?php echo $num_person; ?> Persons</li>
                                <li><span>Size:</span> <?php echo $size; ?> m2</li>
                                <li><span>View:</span> <?php echo $view; ?></li>
                                <li><span>Bed:</span> <?php echo $num_beds; ?></li>
                            </ul>
                            <p class="pt-1"><a href="rooms/room-single.php?id=<?php echo $id; ?>" class="btn-custom px-3 py-2">View Room Details <span class="icon-long-arrow-right"></span></a></p>
                        </div>
                    </div>
                </div>
            </div>
            <?php
            // Increment card counter
            $card_counter++;
            // If the number of cards displayed reaches the limit, close the current row and start a new one
            if ($card_counter % $cards_per_row == 0) {
                echo '</div><div class="row">';
            }
        }
        ?>
    </div>
</div>
	</section>

</div>


<?php require "includes/footer.php"; ?>
