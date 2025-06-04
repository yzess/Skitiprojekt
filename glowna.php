<!DOCTYPE html>
<html lang="pl">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Moj plan</title>
    <link rel="stylesheet" href="styl.css">
    <script type="text/javascript" id="MathJax-script" async
  src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-chtml.js">
</script>
</head>

<body>
    <?php
        $con = mysqli_connect('localhost', 'root', '', 'tydzien');
    ?>
    <header>

        <svg width="150" height="105" xmlns="http://www.w3.org/2000/svg">
  <rect width="100%" height="100%" fill="black" />
  <rect width="95%" height="95%" fill="white" />
  <text x="75" y="60" font-size="30" text-anchor="middle" fill="red">Planer</text> 
  Sorry, your browser does not support inline SVG.  
</svg> 

        <h1>Mój plan</h1>
        <form action="glowna.php" method="post">
            <select name="dzien">
            <option value="poniedzialek">Poniedziałek</option>
            <option value="wtorek">Wtorek</option>
            <option value="sroda">Środa</option>
            <option value="czwartek">Czwartek</option>
            <option value="piatek">Piątek</option>
            <option value="sobota">Sobota</option>
            <option value="niedziela">Niedziela</option>
            </select>
            <button name="submit">WYŚWIETL</button>
        </form>
        <?php
        if (isset($_POST['usuwanie'])) {
            $id = $_POST['usuwanie'];
            $q = "DELETE FROM zadania WHERE id = $id";
             mysqli_query($con, $q);
            }
         ?>
        <div id="dodawanie">
        <form action="glowna.php" method="post">
        <h3>Dodaj nowe zadanie:</h3>
    Dzień:
    <select name="dzien">
        <option value="poniedzialek">Poniedziałek</option>
        <option value="wtorek">Wtorek</option>
        <option value="sroda">Środa</option>
        <option value="czwartek">Czwartek</option>
        <option value="piatek">Piątek</option>
        <option value="sobota">Sobota</option>
        <option value="niedziela">Niedziela</option>
    </select><br>
    Godzina: <input type="time" name="czas" required><br>
    Temat: <input type="text" name="temat" required><br>
    Opis: <input type="text" name="opis"><br>
    <button type="submit" name="dodaj">Dodaj zadanie</button>
</form>
</div>

    </header>
    <main>
        <div id="lewoglowny">
            <script src="oblicz.js"></script>
            <h2>Ile czasu ci to zajmie?</h2>
            <label>
                Podaj liczbę zadań do zrobienia (1 zadanie = 120min) <br>
                <input type="number" id="liczbazad" min="0">
            </label>
            <br>
            <button type="button" name="oblicz" onclick="oblicz()">Oblicz</button>
            <p id="wynik"></p>
            <br>
             <b>Przypominajka wzoru na kolosa z matmy! </b><br>
        Gdy \(a \ne 0\), są dwa rozwiązania dla \(ax^2 + bx + c = 0\) i są to: <br>
        $$x = {-b \pm \sqrt{b^2-4ac} \over 2a}.$$
      
        </div>

       
        
        <div id="glowny">
        <?php
        if(isset($_POST['dzien'])){
        $dzien = $_POST['dzien'];
        $q = "SELECT id, dzien, czas, temat, opis FROM zadania WHERE dzien = '$dzien' ORDER BY czas";
        $res = mysqli_query($con, $q);
         echo "<h2>Dzień: $dzien</h2>";
        while ($row = mysqli_fetch_array($res)) {
            echo "
                <h2>Godzina: $row[czas]</h2> 
                <h4>Temat: $row[temat]</h4>
                <p>$row[opis]</p>
                <form method='post'>
                <input type='hidden' name='usuwanie' value='$row[id]'>
                <button type='submit'>Usuń</button>
                </form>
                ";
        }
        }
        if (isset($_POST['dodaj'])) {
             $dzien = $_POST['dzien'];
             $czas = $_POST['czas'];
             $temat = $_POST['temat'];
             $opis = $_POST['opis'];
             $q = "INSERT INTO zadania (dzien, czas, temat, opis) VALUES ('$dzien', '$czas', '$temat', '$opis')";
             mysqli_query($con, $q);
             header("Location: glowna.php");
            }
        
        ?>
        </div>
       
        
    </main>
    <footer> 
            <marquee behavior="ALTERNATE"  scrollamount="25"><p><b>Autorem planera tygodnia jest s202407</b></p></marquee>
    </footer>
</body>
</html>