<?php
    try {
        require 'config.php';
        
        $record_per_page = 5;
        $page = '';
        //data from table in html format
        $output = '';
        if (isset($_POST['page'])) {
            $page = $_POST['page'];
        } else {
            $page = 1;
        }

        $start_from = ($page - 1) * $record_per_page;
        $sql = "SELECT * FROM destinations ORDER BY id DESC LIMIT ?, ?";
        $stmt = $connect->prepare($sql);
        // We use bindParam since if we use it with prepared statements; in perpared statements paramenters will be considered as string
        // ie: LIMIT 10, 20 Will be converted to LIMIT "10", "20"
        $stmt->bindParam(1, $start_from, PDO::PARAM_INT);
        $stmt->bindParam(2, $record_per_page, PDO::PARAM_INT);
        $stmt->execute();
        $output .= "<table class='table'>
                    <caption><a href='#' data-role='add'>Neue Reiseziele hinzufügen</a></caption>
                    <thead>
                        <tr>
                            <th>Titel</th>
                            <th>Beschreibung</th>
                            <th>Foto</th>
                            <th>Gallery link</th>
                        </tr>
                        </thead>
                    <tbody>";
        $count = 0;
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $count++;
            $output .= '
                <tr>
                    <td>'.$count.'</td>
                    <td data-target="titel">'.$row['title'].'<td>
                    <td data-target="description">'.$row['text'].'</td>
                    <td data-target="thumbnail">'.$row['thumbnail'].'</td>
                    <td><a href="#" data-role="update" data-id="'.$row['id'].'">Update</a></td>
                </tr>';
        }
        $output .= '</table><br /><div align="center">';
        $count = $connect->query("SELECT COUNT(*)  FROM destinations ORDER BY id DESC")->fetchColumn();
        $total_pages = ceil($count/$record_per_page);

        for ($i = 1; $i<=$total_pages; $i++) {
            $output .="<span class='pagenation_link' 
                            style='cursor:pointer; padding: 5px; border:1px solid #ccc;' 
                            id ='".$i."'>".$i."</span>";
        }
        echo $output;
    } catch (Exception $e) {
        echo $e->getMessage();
    }
