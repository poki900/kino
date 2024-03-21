<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <script src="script.js"></script>
    <script>
        var tablica = []
        var selected = 0
    </script>
</head>
<body id="body">
    <div id="left">
        <?php
            $con = mysqli_connect('localhost','root','','kino');
            $query = "SELECT * from filmy";
            $result = mysqli_query($con, $query);
            $tab = array();
            foreach($result as $element){
                echo "<div class='film' id='".$element['id']."'>";
                echo $element['nazwa']."<br>";
                echo "<script>tablica[".$element['id']."]='".$element['nazwa']."'</script>";
                echo $element['data']."<br>";
                echo $element['godzina']."<br>";
                echo "</div>";
            };
            mysqli_close($con);
            echo "<script>adding()</script>";
        ?>
        <div class="film" id="dodaj" onclick="dodajFilm()"><p>Dodaj film</p></div>
    </div>
    <div id="right">
        <h1 id="napis">Wybierz seans</h1>
        <table id="siedzenia">
        </table>
        <div id="zarezerwoj">
            <p>
            Imię: <input type="text" id="name">   
            Nazwisko: <input type="text" id="surname">   
            Numer kontaktowy: <input type="tel" id="telefon">   
            <input type="hidden" id="filmid" value=""/>
            <button onclick="dodajElement()">Zarezerwój</button>
        </p>
        </div>
    </div>
</body>
</html>