<!doctype html>
<html lang="fr">
<head>
   <meta charset="utf-8">
	<link rel="stylesheet" media="screen" href="style.css">
	<link rel="icon" type="image/ico" href="images/efftet.jpg">
	
	<title>
			Modifications
	</title>
	
	<link id="avast_os_ext_custom_font" href="chrome-extension://eofcbnmajmjmplflapaojjnihcjkigck/common/ui/fonts/fonts.css" rel="stylesheet" type="text/css">
</head>
	
<header style="position:relative; height:300px">
	<div style="position:absolute;z-index:1">
		<img src="images/baniere2.jpg" height="280" width="1903" alt="baniere">
	</div>
	<div style="position:absolute;top:140px; width:1900px; z-index:2;font-size:200%">
		<center class="titre"><b> Modifications </b></center>
    </div> 
</header>


<div id="menu">
	
<!-- menu   !-->
	<a href="index.html" class="lien_norm index_norm other">Accueil</a>
	<a href="Boutique.html" class="lien_norm index_norm other">Boutique</a>
	<a href="Données.html" class="lien_norm index_norm other">Données</a>
	<a href="Modification.html" class="lien_cour index_cour first">Modification</a>
	<a href="Contact.html" class="lien_norm index_norm other">Nous contacter</a>


	
</div>

<body>


	</br>
	</br>

	
	
	<div style="width:783px; height:auto; margin:5px auto 0 auto; padding:15px; background-color:#E2DBD5;">



	<!-- contenu   !-->
	

	<section >


		<article >
			<form style="text-align:center;" action='actions.php' method='post'>
				<input type="hidden" name="action" value="add">
					<p align="right" >
						<label>Nombre de point en une heure : </label>
						<br>
						<input type="number" name="NbrHeure" max="255" min="0">
						<br>

						<label>Nombre de point par mesure: </label>
						<br>
						<input type="number" name="NbrMesure" max="255" min="0">
						<br>

						<label>Choix voie active: </label>
						<br>
						<input type="checkbox" name="Voie1">
						<input type="checkbox" name="Voie2">
						<input type="checkbox" name="Voie3">
						<input type="checkbox" name="Voie4">
						<br>
						<label>1    2    3    4</label>
						<br>

						<label>Choix des voix a tarrer: </label>
						<br>
						<input type="checkbox" name="Tar1">
						<input type="checkbox" name="Tar2">
						<input type="checkbox" name="Tar3">
						<input type="checkbox" name="Tar4">
						<br>
						<label>1  2  3  4</label>

					</p>
					<input type="submit" value="Envoie données" class="bouton" >
			</form>
		</article>



	</section>

	
	<br>
	<br>

	<div style="text-align:center; margin:auto ; width: 200px;">
	<?php
		// 1/3 -> CONNEXION
		//                   SERVER      LOGIN   PASSWD  DBNAME
		$c = mysqli_connect("localhost", "admin", "admin", "ruche");
					mysqli_set_charset($c, "utf8");

		// 2/3 -> REQUETE
		$sql = "SELECT * FROM `modif`";
		$result = mysqli_query($c,$sql);



		// 3/3 -> AFFICHAGE
		// Récupère chaque ligne de la BD dans un tableau "$row"
		echo "<table>";
		while($row = mysqli_fetch_assoc($result)){
			if($row["Nombre"][1] == 4){
				$valeur =  hexdec(substr($row["Nombre"],6));
				echo "<tr>";
				echo "<th>" . "Nombre de point par heure" . "</th>";
				echo "</tr>";
				echo "<tr>";
				echo "<td>" . $valeur . "</td>";
				echo "</tr>";
			}
			if($row["Nombre"][1] == 2){
				$valeur =  hexdec(substr($row["Nombre"],6));
				echo "<tr>";
				echo "<th>" . "Nombre de mesures par point" . "</th>";
				echo "</tr>";
				echo "<tr>";
				echo "<td>" . $valeur . "</td>";
				echo "</tr>";
			}
			if($row["Nombre"][1] == 1){
				$valeur =  hexdec(substr($row["Nombre"],6));
				if(($row["Nombre"][5]) == 1){
					echo "<tr>";
					echo "<th>". "La balance numéro " . $valeur ." vient d'etre activer !". "</th>";
					echo "</tr>";
				}
				else{
					echo "<tr>";
					echo "<th>". "La balance numéro " . $valeur ." vient d'etre desactiver !". "</th>";
					echo "</tr>";
				}
			}
			if($row["Nombre"][1] == 3){
				$valeur =  hexdec(substr($row["Nombre"],6));
				if(($row["Nombre"][5]) == 1){
					echo "<tr>";
					echo "<th>". "La balance numéro " . $valeur ." vient d'etre tarrer !". "</th>";
					echo "</tr>";
				}
				else{
					echo "<tr>";
					echo "<th>". "La balance numéro " . $valeur ." n'a pas été tarrer !". "</th>";
					echo "</tr>";
				}
			}
		}
		echo "</table>";

		?>
	</div>

<br>

	<!-- buton deco   !-->
    <form style="text-align:center;" action="Modification.html">
        <input type="submit" value="Déconnecter" />
    </form>

    <br>


	</section>

<footer>Copyrigh © : PERRINr
<div id="scroll_to_top"> 
    <a href="#top"><img src="images/to_top.png" alt="Retourner en haut" /></a> 
</div>

</footer>   
</div>

</body>
</html>s