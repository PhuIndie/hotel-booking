<?php require "includes/header.php"; ?>
<?php require "config/config.php"; ?>
<?php 
	if(isset($_GET['id'])){
		$id = $_GET['id'];
		$getRoom = $conn->query("SELECT * FROM rooms WHERE hotel_id = '$id'");

		$getRoom ->execute();
		$getALLRoom = $getRoom -> fetchAll(PDO::FETCH_OBJ);

	}
?>

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
	<section class="ftco-section bg-light">
                <div class="search-dropdown">
					<form id="search_form" class="search_form">
						<input type="search" placeholder="Tìm kiếm" name="search" autocomplete="off" spellcheck="false" />
						<button type="submit">
							<p>Search</p>
						</button>
					</form>
					<ul class="dropdown-menu">
						<li><a href="#">Option 1</a></li>
						<li><a href="#">Option 2</a></li>
						<li><a href="#">Option 3</a></li>
						<li><a href="#">Option 4</a></li>
					</ul>
				</div>
            </div>
        </div>
		</section>	
<?php require "includes/footer.php"; ?>
