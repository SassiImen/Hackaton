<?php
 try{
include"./config/config.php";
$bdd = new PDO(DBDRIVER.':host='.DBHOST.';port='.DBPORT.
';dbname='.DBNAME.';charset='
.DBCHARSET,DBUSER,DBPASS); 
}
 catch(Exception $e)
{
 echo $e->getMessage();
 die();
}

//var_dump($_POST);
if($_POST["choix"] == "wad"){
    $sql= "SELECT * FROM `entreprise` JOIN `stage` ON stage.idEntreprise = entreprise.idEntreprise JOIN `user` ON stage.idUser = user.idUser JOIN `formation` On user.idFormation = formation.idFormation WHERE formation.idFormation=1";
}
else
{ 
    if($_POST["choix"] == "web"){
     $sql= "SELECT * FROM `entreprise` JOIN `stage` ON stage.idEntreprise=entreprise.idEntreprise JOIN `user` ON stage.idUser=user.idUser JOIN `formation` ON user.idFormation=formation.idFormation WHERE formation.idFormation=3";
       
      }
     else {
      if($_POST["choix"] == "all"){
      $sql= "SELECT * FROM entreprise";
    }
 else {
          $sql= "SELECT * FROM `Entreprise` JOIN `Stage` ON Stage.idEntreprise = Entreprise.idEntreprise JOIN `User` ON User.idUser = stage.idUser JOIN `Formation` ON user.idFormation=formation.idFormation WHERE Formation.idFormation = 2";
      }
}
}
$statement = $bdd->prepare($sql);  

//var_dump($statement);
$statement-> execute();
// obtenir les données dans un tab associatif
$resultat = $statement->fetchAll(PDO::FETCH_ASSOC);
//var_dump($resultat);
echo json_encode ($resultat);
?>

