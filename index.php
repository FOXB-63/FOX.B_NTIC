<?php
    session_start();
    require_once 'vars.php';
    require_once 'inc/common.inc';
    require_once 'inc/Bdd.php';
    
    $conbdd = new Bdd();
    
    //Récupération des contenus
    $sql = "SELECT * FROM kpnoeud WHERE nodactif='1' ORDER BY nodid DESC";
    $frm = '';
    $srv = '';
    $prd = '';
    $sld = '';
    
    try {
        $rs = $conbdd->Query2Array($sql);

        $icpt = 0;
        foreach ($rs as $vl) {
            $tp = $vl['nodtype'];
            $ni = 'ress/img/noeud/' . $vl['nodimage'];
            $tr = $vl['nodtitre'];
            $hr = 'noeud.php?nodid=' . $vl['nodid'];
            $elmt = '<div class="col-md-6 col-lg-4 col-xl-3">
                <div class="rounded position-relative subdiv-item">
                        <div class="subdiv-img">
                            <img src="' . $ni. '" class="img-fluid w-100 rounded-top">
                        </div>
                        <div class="p-4 border border-secondary border-top-0 rounded-bottom">
                            <h4>' . $tr . '</h4><p>' . $vl['nodresume'] . '</p>
                            <div class="d-flex justify-content-between flex-lg-wrap">
                                <p class="text-dark fs-5 fw-bold mb-0"><i class="fa fa-eye"></i> ' . $vl['nodvu'] . '</p>
                                <a href="' . $hr . '" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-plus me-2 text-primary"></i> Détails</a>
                            </div>
                        </div>
                    </div></div>';
            $clact = (!$icpt) ? "active" : "";
            $sld .= '<div class="carousel-item ' . $clact . ' rounded">
                        <img src="' . $ni. '" class="img-fluid w-100 h-100 rounded" alt="">
                        <div class="carousel-caption"><a href="' . $hr . '" class="h4 p-3 w-100">' . $tr . '</a></div>
                    </div>';
            
            if ($tp == 2) {$prd .= $elmt;}
            elseif ($tp == 1) {$frm .= $elmt;}
            elseif ($tp == 0) {$srv .= $elmt;}
            $icpt++;
        }
    } catch (Exception $exc) {
        echo $exc->getTraceAsString();
    }
    
    //Créer la variable de contenu à afficher
    $contenu = "";
    //Affichage des services
    require_once 'tpl.php';
    
    
    /*
     * <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active" data-bs-interval="10000">
      <img src="..." class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item" data-bs-interval="2000">
      <img src="..." class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="..." class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
     */