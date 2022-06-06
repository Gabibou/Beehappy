<?php  if (($_POST['identifiant']=="admin")&&($_POST['mdp']=="admin")) {
	header('location: modif.php');
}
	else{
		header('location: Modification_faux.html');
	}
?>
