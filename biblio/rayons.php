<html>
    <body>
        <?php
        @include("connexion.php");
        $requete="select * from rayons";
        $resultat=mysqli_query($conn, $requete);
        ?>        <center><table border="1">
            <tr><td>CodeRayon</td><td>IntituleRayon</td>


        <?php while($enreg=mysqli_fetch_array($resultat))
        {
        ?>
        <tr>
        <td><?php echo $enreg["CodeRayon"];?></td>
        <td><?php echo $enreg["IntituleRayon"];?></td>
        </tr>
        <?php   } ?>
        </table></center>
        <?php
            mysqli_close($conn);
        ?>
</body>
</html>
