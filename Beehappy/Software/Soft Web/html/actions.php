<?php

//Conection 
$c = mysqli_connect("localhost", "admin", "admin", "ruche");
mysqli_set_charset($c, "utf8");

$sql = "SELECT * FROM `modif`";
		$result = mysqli_query($c,$sql);






if (isset($_POST["action"])) {
	if ($_POST["action"] == "add") {

		$Tar1 = $_POST["Tar1"];
		$Tar2 = $_POST["Tar2"];
		$Tar3 = $_POST["Tar3"];
		$Tar4 = $_POST["Tar4"];

		$Voie1 = $_POST["Voie1"];
		$Voie2 = $_POST["Voie2"];
		$Voie3 = $_POST["Voie3"];
		$Voie4 = $_POST["Voie4"];

		$NbrMesure = $_POST["NbrMesure"];
		$NbrHeure = $_POST["NbrHeure"];

		$sql = "DELETE FROM `modif`";
		mysqli_query($c,$sql);

		if($Tar1 == true){
			$envoie = '03000101';
		}
		else{
			$envoie = '03000001';
		}
		$sql = "INSERT INTO `modif`
		    VALUES (NULL,'$envoie');";
		mysqli_query($c, $sql);


		if($Tar2 == true){
			$envoie = '03000102';
		}
		else{
			$envoie = '03000002';
		}
		$sql = "INSERT INTO `modif`
		    VALUES (NULL,'$envoie');";
		mysqli_query($c, $sql);

	

		if($Tar3 == true){
			$envoie = '03000103';
		}
		else{
			$envoie = '03000003';
		}
		$sql = "INSERT INTO `modif`
		    VALUES (NULL,'$envoie');";
		mysqli_query($c, $sql);	


		if($Tar4 == true){
			$envoie = '03000104';
		}
		else{
			$envoie = '03000004';
		}
		$sql = "INSERT INTO `modif`
		    VALUES (NULL,'$envoie');";
		mysqli_query($c, $sql);	


		if($Voie1 == true){
			$envoie = '01000101';
		}
		else{
			$envoie = '01000001';
		}
		$sql = "INSERT INTO `modif`
		    VALUES (NULL,'$envoie');";
		mysqli_query($c, $sql);	


		if($Voie2 == true){
			$envoie = '01000102';
		}
		else{
			$envoie = '01000002';
		}
		$sql = "INSERT INTO `modif`
		    VALUES (NULL,'$envoie');";
		mysqli_query($c, $sql);	


		if($Voie3 == true){
			$envoie = '01000103';
		}
		else{
			$envoie = '01000003';
		}
		$sql = "INSERT INTO `modif`
		    VALUES (NULL,'$envoie');";
		mysqli_query($c, $sql);			



		if($Voie4 == true){
			$envoie = '01000104';
		}
		else{
			$envoie = '01000004';
		}
		$sql = "INSERT INTO `modif`
		    VALUES (NULL,'$envoie');";
		mysqli_query($c, $sql);	


		$envoie = '020000' . dechex($NbrMesure);
		$sql = "INSERT INTO `modif`
		VALUES (NULL,'$envoie');";
		mysqli_query($c, $sql);	

		$envoie = '040000' . dechex($NbrHeure);
		$sql = "INSERT INTO `modif`
		VALUES (NULL,'$envoie');";
		mysqli_query($c, $sql);	
		}
	}


header("Location:modif.php");