/*************************Afficher la carte******************************** */
  $("#mapid").css({
    'height':'700px'
});  

/*******Create Icons************/
var gameIcon = L.icon({
    iconUrl: './images/GameIcon.png',
    iconSize:     [38, 95], // size of the icon
    shadowSize:   [50, 64], // size of the shadow
    iconAnchor:   [22, 94], // point of the icon which will correspond to marker's location
    shadowAnchor: [4, 62],  // the same for the shadow
    popupAnchor:  [-3, -76] // point from which the popup should open relative to the iconAnchor
});

var wadIcon = L.icon({
    iconUrl: './images/Wad.png',
    iconSize:     [38, 95], // size of the icon
    shadowSize:   [50, 64], // size of the shadow
    iconAnchor:   [22, 94], // point of the icon which will correspond to marker's location
    shadowAnchor: [4, 62],  // the same for the shadow
    popupAnchor:  [-3, -76] // point from which the popup should open relative to the iconAnchor
});

var webIcon = L.icon({
    iconUrl: './images/Web.png',
    iconSize:     [38, 95], // size of the icon
    shadowSize:   [50, 64], // size of the shadow
    iconAnchor:   [22, 94], // point of the icon which will correspond to marker's location
    shadowAnchor: [4, 62],  // the same for the shadow
    popupAnchor:  [-3, -76] // point from which the popup should open relative to the iconAnchor
});

var Icon = L.icon({
    iconUrl: './images/marker-icon.png',
    iconSize:     [20, 40], // size of the icon
    shadowSize:   [50, 64], // size of the shadow
    iconAnchor:   [22, 94], // point of the icon which will correspond to marker's location
    shadowAnchor: [4, 62],  // the same for the shadow
    popupAnchor:  [-3, -76] // point from which the popup should open relative to the iconAnchor
});
/*********************************************************/

var markerArray =[];
var mymap = L.map('mapid').setView([50.8466,4.3528], 12);

L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
                maxZoom: 19,
                attribution: ' <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
                }).addTo(mymap); 
var marker = L.marker([50.8638372, 4.3607629]).addTo(mymap); 
marker.bindPopup("<b>Hello world!</b><br>It's <span id='I3'>Interface3</span> <br> Rue Gaucheret 88, 1030 Schaerbeek <br> <a href ='https://www.interface3.be/'>www.interface3.be</a>").openPopup();
markerArray.push(marker); 





function ConvertAdress(adresse,nomEntreprise,siteWebEntreprise,iCon){
        $.ajax({
            url: "https://nominatim.openstreetmap.org/search", // URL de Nominatim
            type: 'get', // Requête de type GET
            data: "q="+adresse+"&format=json&addressdetails=1&limit=1&polygon_svg=1" // Données envoyées (q -> adresse complète, format -> format attendu pour la réponse, limit -> nombre de réponses attendu, polygon_svg -> fournit les données de polygone de la réponse en svg)
        }).done(function (response) {
            if(response !== ""){
                userlat = response[0]['lat'];
                userlon = response[0]['lon'];
                marker = L.marker([userlat,userlon],{icon: iCon}).addTo(mymap);
                marker.bindPopup("<b>"+ nomEntreprise +"</b><br>"+ adresse +"<br> <a href ='"+siteWebEntreprise+"'><img src='./images/icons8-website-50.png'> Site Web</a>.").openPopup();
                markerArray.push(marker);    
        }                
        }).fail(function (error) {
            alert(error);
        });      
}


function ConvertAdressDefault(adresse,nomEntreprise,siteWebEntreprise){
        $.ajax({
            url: "https://nominatim.openstreetmap.org/search", // URL de Nominatim
            type: 'get', // Requête de type GET
            data: "q="+adresse+"&format=json&addressdetails=1&limit=1&polygon_svg=1" // Données envoyées (q -> adresse complète, format -> format attendu pour la réponse, limit -> nombre de réponses attendu, polygon_svg -> fournit les données de polygone de la réponse en svg)
        }).done(function (response) {
            if(response !== ""){
                userlat = response[0]['lat'];
                userlon = response[0]['lon'];
                marker = L.marker([userlat,userlon]).addTo(mymap);
                marker.bindPopup("<b>"+ nomEntreprise +"</b><br>"+ adresse +"<br> <a href ='"+siteWebEntreprise+"'><img src='./images/icons8-website-50.png'> Site Web</a>.").openPopup();
                markerArray.push(marker);    
        }                
        }).fail(function (error) {
            alert(error);
        });      
}
/******************Fonction pour supprimer les markers*****************/
function DeletMarkers(arr)
{
    for(let i=0; i<arr.length; i++)
        {arr[i].remove();}
        arr=[];
}

let allButtons = document.querySelectorAll("button");

// boucle pour chaque bouton
for (let i=0; i< allButtons.length; i++)
{
   allButtons[i].addEventListener("click", (event) => {
      //console.log(event.target.id);
       // empecher le submit
       //event.preventDefault();
       if(markerArray!==[])
        {DeletMarkers (markerArray);}

       var xhr = new XMLHttpRequest();

       xhr.onreadystatechange = function (){
           if (xhr.readyState === 4 && xhr.status === 200){ 
               // transformer en object
               
               var arrayObjects = JSON.parse(xhr.responseText);
               //console.log (xhr.responseText);
               console.log(event.target.id);
               displayPositions(arrayObjects,event.target.id);
       }
       };
       let maForm = new FormData(); // form vide 
       maForm.append ("choix",event.target.id); // key value indiquant le bouton
       xhr.open("POST","./AfficherEntreprises.php");
       xhr.send(maForm);
       
   });
}

function generate(arrayObjects,Icon){
   // console.log("toto"); 
    for(let i=0; i< arrayObjects.length; i++)
    {         
       ConvertAdressDefault(arrayObjects[i].adresse,arrayObjects[i].nomEntreprise,arrayObjects[i].siteWeb);
    }
}

 function generateWad (arrayObjects,wadIcon)
 {
   // console.log("toto"); 
    for(let i=0; i< arrayObjects.length; i++)
    {         
       ConvertAdress(arrayObjects[i].adresse,arrayObjects[i].nomEntreprise,arrayObjects[i].siteWeb,wadIcon);
    }
}

 function generateWeb (arrayObjects,webIcon)
 {
   // console.log("toto"); 
    for(let i=0; i< arrayObjects.length; i++)
    {         
       ConvertAdress(arrayObjects[i].adresse,arrayObjects[i].nomEntreprise,arrayObjects[i].siteWeb,webIcon);
    }
}

 function generateGame (arrayObjects,gameIcon)
 {
   // console.log("toto"); 
    for(let i=0; i< arrayObjects.length; i++)
    {         
       ConvertAdress(arrayObjects[i].adresse,arrayObjects[i].nomEntreprise,arrayObjects[i].siteWeb,gameIcon);
    }
}


function displayPositions(arrayObjects,btnClick)
{
    
         if(btnClick === "wad")
               {  console.log("wad");
                   generateWad(arrayObjects,gameIcon);
               }
               else{
                   if(btnClick === "web")
               {    console.log("web");
                   generateWeb (arrayObjects,webIcon);
               }
               else
               { if(btnClick ==="game")
                   {console.log("game");
                    generateGame(arrayObjects,gameIcon);
                }
                else{ console.log("All");
                     generateWad(arrayObjects,Icon);
               }
           }
              
           }
}