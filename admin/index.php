<?php
    require_once '../load.php';

    if (isset($_GET['media'])) {
        $tbl = "tbl_" . trim($_GET["media"]);
        // echo $tbl;
    }

    if(isset($_GET['filter'])){

        $args = array(
            'tbl' => $tbl,
            'tbl2' => 'tbl_decade',
            'tbl3' => 'tbl_mov_decade',
            'col' => 'movies_id',
            'col2' => 'decade_id',
            'col3' => 'decade_name',
            'filter' => $_GET['filter'],
        );

        $results = getMoviesByFilter($args);
        echo json_encode($results);

    } else {
        $results = getAll($tbl);
        echo json_encode($results);
    }


