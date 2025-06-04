function oblicz(){
    let liczbazad = document.getElementById("liczbazad").value;
    let wynik = document.getElementById("wynik");
    let minuty=0;
    let godziny=0;
    minuty=liczbazad * 120;
    godziny=minuty / 60;
    wynik.innerHTML = "Czas do poświęcenia w minutach: "+minuty+", natomiast w godzinach: "+godziny+"h";
}