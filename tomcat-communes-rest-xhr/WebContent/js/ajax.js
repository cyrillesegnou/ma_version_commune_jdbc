let xhr1 = new XMLHttpRequest();
let xhr2 = new XMLHttpRequest();
let commune = null;

/*
*  initialisation de XHR
*    - onreadystatechange
*/
xhr1.onreadystatechange = function(){
    console.log("xhr1 : "+xhr1.readyState); // affichage des étapes de réceptions de la réponse
    if(xhr1.readyState==4 && xhr1.status==200){
    	console.log("=> "+xhr1.responseText);
    	let communes = JSON.parse(xhr1.responseText);
    	show(communes);
    }

}

xhr2.onreadystatechange = function(){
	console.log("xhr2 : "+xhr2.readyState);
	if(xhr2.readyState == 4 && xhr2.status == 200){
		let weather = JSON.parse(xhr2.responseText);
		console.log(weather);
		let div = document.getElementById("weather");
		div.innerHTML = `<h2 class="infos">${commune}</h2><h3>Temp. : ${weather.main.temp} °C</h3>`;
	}
};

function showWeather(lat,lng){
    let uri = `https://api.openweathermap.org/data/2.5/weather?lat=${lat}&lon=${lng}&units=metric&appid=5d16b4bc887fc4f2634cb0b1d6aee59b`;
    xhr2.open("GET",uri);
    xhr2.send();
    console.log(`requête vers ${uri}`);
}

function lancerRequete(){
	let cp = document.getElementById("cp").value.trim();
	if(cp.length == 0){
		return;
	}
    let uri = `rest/communes/cp/${cp}`;
    xhr1.open("GET",uri);
    xhr1.send();
    console.log(`requête vers ${uri}`);
}

function show(communes){
	let ul = document.getElementById("view");
	ul.innerHTML = "";
	clearEvents("li");
	for(let i=0 ; i<communes.length ; i++){
		let c = communes[i];
		console.log(c.nom);
		let line = `<li data-latitude='${c.latitude}' data-longitude='${c.longitude}' data-nom=${c.nom}>${c.codePostal} - ${c.nom}</li>`;
		ul.innerHTML += line;
	}
	addEvents("li");
}

function showInfos(event){
	let lat = parseFloat(event.target.dataset.latitude);
	let lng = parseFloat(event.target.dataset.longitude);
	commune = event.target.dataset.nom;
	console.log(`lat : ${lat} - lng : ${lng}`)
	initMap({lat: lat, lng: lng});
	showWeather(lat, lng);
}

function clearEvents(name){
	let elts = document.getElementsByTagName(name);
	for(let i=0 ; i<elts.length ; i++){
		elts[i].removeEventListener("click",showInfos);
	}
}

function addEvents(name){
	let elts = document.getElementsByTagName(name);
	for(let i=0 ; i<elts.length ; i++){
		elts[i].addEventListener("click",showInfos);
	}
}

function automatique(){
	let cp = document.getElementById("cp").value.trim();
	if(cp.length < 2){
		return;
	}
	lancerRequete();
}


document.addEventListener("DOMContentLoaded",function(){
    document.getElementById("b1").addEventListener("click",lancerRequete);
    document.getElementById("cp").addEventListener("keyup",automatique);
});