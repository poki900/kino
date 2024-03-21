function clicking(which){
    if(document.getElementById(which).classList.contains("click")){
        document.getElementById(which).classList.remove("click")
    } else {
        document.getElementById(which).classList.add("click")
    }
}
function make(dane){
    //console.log(dane[0].miejsce)
    var k=1;
    document.getElementById("siedzenia").innerHTML = ""
    for(var i=0; i<10; i++){
        var tr = document.createElement("tr")
        for(var j=0; j<20;j++){
            var el = document.createElement("td")
            el.setAttribute("id",k)
            el.classList.add("siedzenie")
            dane.forEach(element => {
                if(element.miejsce==k){
                    el.classList.add("zajente")
                }
            });
            if(el.classList.contains("zajente")){

            }else{
                el.setAttribute("onclick","clicking("+k+")")
            }
            el.innerHTML = k
            tr.append(el)
            k++
        }
        document.getElementById("siedzenia").append(tr)
    }
}
async function selFilm(film){
    document.getElementById("napis").innerHTML = ""
    document.getElementById("napis").innerHTML = tablica[film]
    document.getElementById("filmid").value = film;
    try{
        var res = await fetch('sel.php?id='+film)
        var el  = await res.json()
        make(el)
    }
    catch(err){console.log(err)}
}
function adding(){
    var tab = document.getElementsByClassName("film")
    for(var i=0; i<tab.length; i++){
        tab[i].setAttribute("onclick", "selFilm("+tab[i].getAttribute("id")+")")
        tab[i].setAttribute("id", tablica[i])
    }
}
async function dodajElement(){
    if(document.getElementsByClassName("click")[0]){
        var miejsca = []
        for( var i=0; i<document.getElementsByClassName("click").length;i++) {
            miejsca.push(document.getElementsByClassName("click")[i].getAttribute("id"))
        }
        if(document.getElementById("name").value != ""&&document.getElementById("surname").value != ""){
            if(document.getElementById("telefon").value != ""){
                for(var i = 0; i<miejsca.length; i++){
                    try{
                    fetch('reserv.php?miejsca='+miejsca[i]+'&name='+document.getElementById("name").value+'&tel='+document.getElementById("telefon").value+'&film='+document.getElementById("filmid").value+'&surname='+document.getElementById("surname").value)
                    }
                    catch(err){console.log(err)}
                }
                alert("Zarezerwowano pomyślnie!")
                location.reload();
            } else{
                alert("Wpisz numer telefonu")
            }
        }else{
            alert("Wpisz imię i nazwisko")
        }
    }else{
        alert("Wybierz miejsca")
    }
}
function kasuj(){
    document.getElementsByClassName("dodaj")[0].remove()
}
function dodajFilm(){
    var div = document.createElement("div")
    div.classList.add("dodaj")
    div.innerHTML = "<div id='x' onclick='kasuj()'><p>X</p></div><h1>Dodawanie filmu</h1><input class='nwm' type='text' id='nazwafilmu'><br><input class='nwm' type='date' id='datafilmu'><br><input class='nwm' type='time' id='godzinafilmu'><br><button  class='nwm' onclick='dodawanieFilmu()'>Dodaj!</button>"
    document.getElementById("body").append(div)
}
function dodawanieFilmu(){
    try{
        fetch('addfilm.php?name='+document.getElementById("nazwafilmu").value+'&date='+document.getElementById("datafilmu").value+'&hour='+document.getElementById("godzinafilmu").value)
    }
    catch(err){console.log(err)}
    alert("Dodano film pomyślnie!")
    location.reload();
}