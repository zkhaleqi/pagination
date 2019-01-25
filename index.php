<?php
    require 'config.php';
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Gallery</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
    <!-- CK Editor -->
    <script src="https://cdn.ckeditor.com/4.11.1/standard/ckeditor.js"></script>
</head>
<body>
    <div class="container">
        <table class="table" id="paginated">
    </div>
</body>
<script>
    $(document).ready(function(){
        load_data();
        // Pagination
        function load_data(page) {
            
            $.ajax({
                url: "pagination.php",
                method: "POST",
                data: {page: page},
                success: function(data) {
                    $("#paginated").html(data);
                }
            })
        }
        
        $(document).on('click', '.pagenation_link', function() {
            var page = $(this).attr("id");
            load_data(page);
        });

    }); // document ready
    
	
</script>
</html>