<?php
    session_start();
    require_once 'vars.php';
    require_once 'inc/common.inc';
    require_once 'inc/Bdd.php';
    $tabelmt = ['Services','Formations'];
    $conbdd = new Bdd();
    //Récupération des contenus
    $alerte = '';
    $indpage = 'index.php';
    
    try {
        $nodid = filter_input(INPUT_GET, 'nodid');
        $sql = "SELECT * FROM kpnoeud WHERE nodid='$nodid'";
        $nodtype = ['<a href="index.php#secsrv">Services</a>','<a href="index.php#secfrm">Formations</a>',''];
        
        //print $sql;
        $rs = $conbdd->Query2Array($sql);
        if (count($rs) == 1) {$entite = $rs[0];$ni = $entite['nodtype'];}
        else {header('Location: erreur.php');exit();}
        
    } catch (Exception $exc) {
        echo $exc->getTraceAsString();
    }
    
    //traiter le formulaire s'il est soumis
    $frm = filter_input(INPUT_POST, 'formenv');
    if ($frm == 'oui') {
        $ksemail = filter_input(INPUT_POST, 'kpmssemail');
        
        //$ss = '0 - ';
        try {
            if (filter_var($ksemail, FILTER_VALIDATE_EMAIL)) {
                $usrid = 0;
                $ksnom = filter_input(INPUT_POST, 'kpmsnom');
                $ksmss = filter_input(INPUT_POST, 'kpmsstexte');
                //Vérifier si l'E-mail existe déjà dans la base
                $nodid = filter_input(INPUT_GET, 'nodid');
                $sql = "SELECT usrid FROM kpusers WHERE usremail='$ksemail'";
                $rs = $conbdd->Query2Array($sql);
                //$ss .= ' 1 - ';
                if (count($rs) == 1) {$usrid = $rs[0]['usrid'];}
                else {
                    $sins = "INSERT INTO kpusers SET usrnom=?, usremail=? ";
                    $tins = [$ksnom,$ksemail];
                    $rs = $conbdd->exeQuery($sins, $tins);
                    //$ss .= $sins . '<br />' . implode('---', $tins);
                    if ($rs) {
                        $usrid = $conbdd->LastInsertId();
                    }
                }
                
                if ($usrid) {
                    $sins = "INSERT INTO kpmessage SET msstitre=?, msscontenu=?, usrid=?, msstype=? , mssref=?";
                    $tins = ['Commentaire',$ksmss,$usrid,$tabelmt[$ni],$nodid];
                    $rs = $conbdd->exeQuery($sins, $tins);
                    $alerte = $sins . ' -- ' . implode("'", $tins);
                    if ($rs) {$alerte = '<div class="alert alert-success">Votre message a été posté, sincèrement merci.</div>';}
                    else {$alerte .= '<div class="alert alert-danger">Désolé, votre message ne peut être posté.</div>';}
                }
                else {$alerte = '<div class="alert alert-danger">Impossible d\'enregistrer votre message</div>';}
                
            }
            else {
                $alerte = '<div class="alert alert-danger">L\'adresse email ' . $ksemail . ' n\'est pas valide.</div>';
            }
        } catch (Exception $exc) {
            $alerte = $exc->getTraceAsString();
        }

    }
?>

<!DOCTYPE html>
<html lang="en">
    <?php include_once 'regions/head.php'; ?>
    <body>

        <!-- Spinner End -->
        <?php include_once 'regions/navbar.php'; ?>
        <!-- Navbar start -->
        
        <!-- Single Page Header start -->
        <div class="container-fluid page-header py-5">
            <h1 class="text-center text-white display-6"> <?php print $entite['nodtitre']; ?></h1>
            <ol class="breadcrumb justify-content-center mb-0">
                <li class="breadcrumb-item"><a href="index.php">Accueil</a></li>
                <li class="breadcrumb-item"><?php print $nodtype[$ni]; ?></li>
            </ol>
        </div>
        <!-- Single Page Header End -->


        <!-- Single Product Start -->
        <div class="container-fluid py-5 mt-5">
            <div class="container py-5">
                <div class="row g-4 mb-5">
                    <div class="col-lg-8 col-xl-9">
                        <div class="row g-4">
                            <div class="col-lg-4">
                                <div class="border rounded">
                                    <img src="ress/img/noeud/<?php print $entite['nodimage']; ?>" class="img-fluid rounded" alt="Image">
                                </div>
                            </div>
                            <div class="col-lg-8">
                                <?php print $entite['nodcontenu']; ?>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-xl-3">
                        <div class="row g-4 subdiv">
                            <div class="col-lg-12"><form action="" method="post">
                                <div class="input-group w-100 mx-auto d-flex mb-4">
                                    <input name="kpcherche" type="search" class="form-control p-3" placeholder="Chercher" aria-describedby="search-icon-1">
                                    <button id="search-icon-1" class="input-group-text p-3"><i class="fa fa-search"></i></button>
                                </div>
                                <?php print $alerte; ?>
                                <div class="mb-4">
                                    <h5 class="mb-2 fw-bold">Commentaire / Témoignage</h5>
                                    <div class="g-4">
                                        <div class="border-bottom border-primary py-2 ">
                                            <input type="text" name="kpmsnom" class="form-control border-0 me-4" placeholder="Votre nom *">
                                        </div>
                                        <div class="border-bottom border-primary py-2 ">
                                            <input type="email" name="kpmssemail" class="form-control border-0" placeholder="Votre e-mail *">
                                        </div>
                                        <div class="border-bottom border-primary py-2">
                                            <textarea name="kpmsstexte" class="form-control border-0" cols="30" rows="8" placeholder="Votre texte *" spellcheck="false"></textarea>
                                        </div>
                                        <div class="d-flex justify-content-between py-2 mb-2">
                                            <input type="submit" class="btn border border-primary text-primary rounded-pill px-4 py-1" value="Envoyer">
                                        </div>
                                    </div>
                                    <input type="hidden" name="formenv" value="oui">
                                </div>
                            </form></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <?php 
            include_once 'regions/foot.php'; 
            try {
                $sins = "UPDATE kpnoeud set nodvu=nodvu+1 WHERE nodid='$nodid'";
                $rss = $conbdd->Query($sins);
                //print $sins;
            } catch (Exception $exc) { }
        ?>
        
    </body>

</html>