<?php

    $aciertos = 0;
    $pregunta1 = $_POST["pregunta1"];
    $pregunta2 = $_POST["pregunta2"];
    $pregunta3 = $_POST["pregunta3"];
    $pregunta4 = $_POST["pregunta4"];
    $pregunta5 = $_POST["pregunta5"];
    $pregunta6 = $_POST["pregunta6"];
    $pregunta7 = $_POST["pregunta7"];
    $pregunta8 = $_POST["pregunta8"];
    $pregunta9 = $_POST["pregunta9"];
    $pregunta10 = $_POST["pregunta10"];

    //valida pregunta 1 1. ¿Pais con más mundiales ganados de la historia?
    echo "<h3>1. ¿Pais con más mundiales ganados de la historia? </h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta1." ---- Correcta = BRASIL</h5>";
    if($pregunta1 == "BRASIL"){
        $aciertos++;
        echo "<img src='correcta.jpg' width='50px'><hr>";
    } else {
        echo "<img src='incorrecta.png' width='50px'><hr>";
    }
    //------FIN de la pregunta 1 ------------------

    //Valido pregunta 2 es la actual campeona del Mundo..
    echo "<h3>2. _____________ es la actual campeona del Mundo.</h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta2." ---- Correcta = Argentina</h5>";
    if(strtoupper($pregunta2) == "ARGENTINA"){
        $aciertos++;
        echo "<img src='correcta.jpg' width='50px'><hr>";
    } else {
        echo "<img src='incorrecta.png' width='50px'><hr>";
    }
    //Fin de la pregunta 2 -----------------------------

    //Pregunta 3 - se deben validar 2 jugadores con mas balones de oro
    echo "<h3>3. ¿Son los dos jugadores con mas balones de oro? (Selecciona 2)</h3>";
    echo "<h5>Repuesta seleccionada ".implode(",", $pregunta3)." ---- Correcta = Messi, CRISTIANO</h5>";
    $p3_respuestas_correctas = 0;

    if(count($pregunta3) == 2){
        for($i=0; $i<count($pregunta3); $i++){
            if($pregunta3[$i] == "cristiano" || $pregunta3[$i] == "messi"){
                $p3_respuestas_correctas ++;
            }
        }
        if($p3_respuestas_correctas == 2){
            $aciertos++;
            echo "<img src='correcta.jpg' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.png' width='50px'><hr>";
        }
    } else {
        echo "<img src='incorrecta.png' width='50px'><hr>";
    }
    //----------FIN pregunta 3 ------------------------------------

    //valida pregunta 4. ¿En que año fue disputado el ultimo mundial en MÉXICO?

        echo "<h3>4. ¿En que año fue disputado el ultimo mundial en MÉXICO?</h3>";
        echo "<h5>Repuesta seleccionada ".$pregunta4." ---- Correcta = MEXICO = 1986;</h5>";
        if($pregunta4 == "MEXICO = 1986;"){
            $aciertos++;
            echo "<img src='correcta.jpg' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.png' width='50px'><hr>";
        }
    //------FIN de la pregunta 4 ------------------

    //Valido pregunta 5 5. es el equipo con más champions league.
        echo "<h3>5. _____________ es el equipo con más champions league.</h3>";
        echo "<h5>Repuesta seleccionada ".$pregunta5." ---- Correcta = real madrid</h5>";
        if(strtoupper($pregunta5) == "REAL MADRID"){
            $aciertos++;
            echo "<img src='correcta.jpg' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.png' width='50px'><hr>";
        }
    //------FIN de la pregunta 5 ------------------
    
        //valida pregunta 6 6. ¿Cuál es el nombre del estadio donde juega el FC Barcelona?
    echo "<h3>6. ¿Cuál es el nombre del estadio donde juega el FC Barcelona? </h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta6." ---- Correcta = CAMP NOU</h5>";
    if($pregunta6 == "CAMP NOU"){
        $aciertos++;
        echo "<img src='correcta.jpg' width='50px'><hr>";
    } else {
        echo "<img src='incorrecta.png' width='50px'><hr>";
    } 

    //------FIN de la pregunta 6 ------------------

    //Pregunta 7 - se deben validar 2 selecciones CAMPEONAS este año
    echo "<h3>7. ¿Son las dos selecciones actuales campeonas de selecciones de sus continentes? (Selecciona 2)</h3>";
    echo "<h5>Repuesta seleccionada ".implode(",", $pregunta7)." ---- Correcta = Argentina, ESPAÑA</h5>";
    $p7_respuestas_correctas = 0;

    if(count($pregunta7) == 2){
        for($i=0; $i<count($pregunta7); $i++){
            if($pregunta7[$i] == "españa" || $pregunta7[$i] == "argentina"){
                $p7_respuestas_correctas ++;
            }
        }
        if($p7_respuestas_correctas == 2){
            $aciertos++;
            echo "<img src='correcta.jpg' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.png' width='50px'><hr>";
        }
    } else {
        echo "<img src='incorrecta.png' width='50px'><hr>";
    }

  //Fin de la pregunta 7 -----------------------------


         //valida pregunta 8 8. ¿Quién es el máximo goleador de la historia de la UEFA Champions League?
         echo "<h3>8. ¿Quién es el máximo goleador de la historia de la UEFA Champions League? </h3>";
         echo "<h5>Repuesta seleccionada ".$pregunta8." ---- Correcta = CRISTIANO RONALDO</h5>";
         if($pregunta8 == "CRISTIANO RONALDO"){
             $aciertos++;
             echo "<img src='correcta.jpg' width='50px'><hr>";
         } else {
             echo "<img src='incorrecta.png' width='50px'><hr>";
         } 
     
       //------FIN de la pregunta 8 ------------------

    //Valido pregunta 9 9. Nuevo jugador francés del real madrid.
    echo "<h3>9. _____________ es el nuevo jugador francés del real madrid.</h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta9." ---- Correcta = Mbappe </h5>";
    if(strtoupper($pregunta9) == "MBAPPE"){
        $aciertos++;
        echo "<img src='correcta.jpg' width='50px'><hr>";
    } else {
        echo "<img src='incorrecta.png' width='50px'><hr>";
    }      
     
            //------FIN de la pregunta 9 ------------------
  

     //Pregunta 10 - se deben validar el color de las 2 tarjetas que usan los arbitros.
     echo "<h3>10. ¿De que color son las tarjetas del arbitro? (Selecciona 2)</h3>";
     echo "<h5>Repuesta seleccionada ".implode(",", $pregunta10)." ---- Correcta = Roja, AMARILLA</h5>";
     $p10_respuestas_correctas = 0;
 
     if(count($pregunta10) == 2){
         for($i=0; $i<count($pregunta10); $i++){
             if($pregunta10[$i] == "amarilla" || $pregunta10[$i] == "roja"){
                 $p10_respuestas_correctas ++;
             }
         }
         if($p10_respuestas_correctas == 2){
             $aciertos++;
             echo "<img src='correcta.jpg' width='50px'><hr>";
         } else {
             echo "<img src='incorrecta.png' width='50px'><hr>";
         }
     } else {
         echo "<img src='incorrecta.png' width='50px'><hr>";
     }
 
   //Fin de la pregunta 10 -----------------------------

    echo "CALIFICACIÓN FINAl = " . ($aciertos * 10) . "%";

?>