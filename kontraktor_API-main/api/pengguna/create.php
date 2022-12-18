<?php
header("Access-Control-Allow-Origin:*");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

include "../../database/database.php";

$data = json_decode(file_get_contents("php://input"));
$nama = $data->nama;
$alamat = $data->alamat;
$no_tlp = $data->no_tlp;
$perkerjaan = $data->perkerjaan;
$luas_tanah = $data->luas_tanah;
$no_npwp = $data->no_npwp;


$hasil["success"] = false;
$hasil["data"] = array();

$insert_sql = "INSERT INTO pengguna VALUES (NULL,'$nama','$alamat','$no_tlp','$perkerjaan','$luas_tanah','$no_npwp')";
$result = mysqli_query($connection,$insert_sql);
if($result){
    $hasil["success"] = true;
    $hasil["data"] = $data;
}

echo json_encode($hasil);

