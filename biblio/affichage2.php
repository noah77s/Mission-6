<html>
    <body>
        <?php
        @include("connexion.php");
        $requete="select * from ouvrage";
        $resultat=mysqli_query($conn, $requete);
        ?>        
        <center>


        <?php 
        $i=1;
        while($enreg=mysqli_fetch_array($resultat))
        {  echo $i;?>,
        <?php echo $enreg["CodeOuvrage"];?>,
        <?php echo $enreg["TitreOuvrage"];?>,
        <?php echo $enreg["CodeRayon"];
        $i++;
         ?> <br>
        <?php  }?>
        </center>
        <?php
            mysqli_close($conn);?>
</body>
</html>
