<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="cache-control" content="no-store, no-cache, must-revalidate, Post-Check=0, Pre-Check=0">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Expires" content="-1">

    <!-- Jquery and Ajax Libraries -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    <!-- Personal Styling -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,400i,700,900&display=swap" rel="stylesheet">

    <!-- Fontawesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

    <title>Appod ADD</title>

    <style type="text/css">
    </style>

</head>

<body>

<div class="container-fluid">

  <div class="row justify-content-center">
    <div class="col-6">
      <?php
        include 'inc/database.php';
        $conn	= db();

        if (isset($_GET['action'])) {
          if ($_GET['action'] == 'add_podcast') {
            $title = $_POST['title'];
            $publisher = $_POST['publisher'];
            $link = $_POST['link'];
            $query	= $conn->prepare("INSERT INTO podcast (title, id_publisher, url, id_user) VALUES ('$title', '$publisher', '$link', '0') ");
            $query->execute();

            echo '<h2 class="text-center my-3 text-success"><br>Podcast added!</h2>';
          }
          else if ($_GET['action'] == 'add_publisher') {
            $title = $_POST['title'];
            $query	= $conn->prepare("INSERT INTO publisher (title) VALUES ('$title') ");
            $query->execute();

            echo '<h2 class="text-center my-3 text-success"><br>Publisher added!</h2>';
          }
        }

      ?>
    </div>
  </div>

  <div class="row justify-content-center">
    <div class="col-6 py-5">
      <h1>Add Podcast</h1>
      <form action="?action=add_podcast" method="post" class="text-left">
        <label>Name:</label><br>
        <input type="text" name="title" class="col-12 form-control" value=""><br>
        <label>Publisher:</label><br>
        <select class="col-12 form-control" name="publisher">
          <?php
            foreach($conn->query(" SELECT * FROM publisher") as $row) {
              $title_pod = $row['title'];
              $id_publisher_pod = $row['id'];
              echo '<option value="'.$id_publisher_pod.'">'.$title_pod.'</option>';
            }
          ?>
        </select><br>
        <label>Link:</label><br>
        <input type="text" name="link" class="col-12 form-control" value=""><br>
        <input type="hidden" name="id_user" class="col-12 form-control" value="0"><br>
        <input type="submit" name="submit" value="Add" class="btn btn-primary">
      </form>
    </div>
  </div>

  <hr>

  <div class="row justify-content-center">
    <div class="col-6 py-5">
      <h1>Add Publisher</h1>
      <form action="?action=add_publisher" method="post" class="text-left">
        <label>Name:</label><br>
        <input type="text" name="title" class="col-12 form-control" value=""><br>
        <input type="submit" name="submit" value="Add" class="btn btn-primary">
      </form>
    </div>
  </div>

</div>
<?php $conn	= NULL; ?>


</body>
</html>
