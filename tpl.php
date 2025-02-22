
<!DOCTYPE html>
<html lang="en">
    <?php include_once 'regions/head.php'; ?>
    <body>

        <!-- Spinner Start -->
        <div id="spinner" class="show w-100 vh-100 bg-white position-fixed translate-middle top-50 start-50  d-flex align-items-center justify-content-center">
            <div class="spinner-grow text-primary" role="status"></div>
        </div>
        <!-- Spinner End -->
        <?php include_once 'regions/navbar.php'; ?>
        <!-- Hero Start -->
        <div class="container-fluid py-5 mb-5 hero-header">
            <div class="container py-5">
                <div class="row g-5 align-items-center">
                    <div class="col-md-12 col-lg-7">
                        <h1 class="mb-5 display-5 text-primary"><?php print SLOGAN; ?></h1>
                        <div class="position-relative mx-auto">
                            <input class="form-control border-2 border-secondary w-75 py-3 px-4 rounded-pill" type="text" placeholder="Chercher">
                            <button type="submit" class="btn btn-primary border-2 border-secondary py-3 px-4 position-absolute rounded-pill text-white h-100" style="top: 0; right: 25%;">Rechercher</button>
                        </div>
                    </div>
                    <div class="col-md-12 col-lg-5">
                        <div id="carouselId" class="carousel slide position-relative" data-bs-ride="carousel">
                            <div class="carousel-inner" role="listbox">
                                <?php print $sld; ?>
                            </div>
                            <button class="carousel-control-prev" type="button" data-bs-target="#carouselId" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button" data-bs-target="#carouselId" data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Hero End -->


        <!-- Fruits Shop Start-->
        <div id="secprd" class="container-fluid subdiv py-5"><div class="container py-5"><div class="text-center">
            <h1 class="text-center text-primary">Nos articles</h1>
            <div class="row g-4"><?php print $prd; ?></div>
        </div> </div></div>
        <div id="secsrv" class="container-fluid subdiv py-5"><div class="container py-5"><div class="text-center">
            <h1 class="text-center text-primary">Nos Services</h1>
            <div class="row g-4"><?php print $srv; ?></div>
        </div> </div></div>
        <div id="secfrm" class="container-fluid subdiv py-5"><div class="container py-5"><div class="text-center">
            <h1 class="text-center text-primary">Nos Formations</h1>
            <div class="row g-4"><?php print $frm; ?></div>
        </div></div></div>
        
        <!-- Banner Section Start-->
        <div class="container-fluid banner bg-black my-1">
                <div class="text-center">
                    <div class="py-4">
                        <h1 class="display-3 text-white">Canal +</h1>
                        <p class="mb-4 text-secondary">Réabonnement : Access, Evasion, Access+, Evasion+, Tout canal.
                         <span class="fw-bold text-white">Vente de décodeurs et accessoires</span></p>
                    </div>
                </div>
        </div>
        
        
        <div id="seceqp" class="container-fluid testimonial py-5"><div class="container py-5">
            <div class="testimonial-header text-center"><h1 class="text-center text-primary">Notre équipe</h1></div>
            
            
            <div class="owl-carousel testimonial-carousel">
                    <div class="testimonial-item img-border-radius bg-light rounded p-4">
                        <div class="position-relative">
                            <i class="fa fa-quote-right fa-2x text-secondary position-absolute" style="bottom: 30px; right: 0;"></i>
                            <div class="mb-4 pb-4 border-bottom border-secondary">
                                <p class="mb-0">Licence en Sciences Pôlitique à l'Université de N'Gaoundéré, elle met en oeuvre ses 
                                compétences pour servir</p>
                            </div>
                            <div class="d-flex align-items-center flex-nowrap">
                                <div class="bg-secondary rounded">
                                    <img src="img/testimonial-1.jpg" class="img-fluid rounded" style="width: 100px; height: 100px;" alt="">
                                </div>
                                <div class="ms-4 d-block">
                                    <h4 class="text-dark">MASRI ZITA</h4>
                                    <p class="m-0 pb-3">Directrice Générale</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="testimonial-item img-border-radius bg-light rounded p-4">
                        <div class="position-relative">
                            <i class="fa fa-quote-right fa-2x text-secondary position-absolute" style="bottom: 30px; right: 0;"></i>
                            <div class="mb-4 pb-4 border-bottom border-secondary">
                                <p class="mb-0">Etudiant en fin de cycle en Informatique appliquée à la Gestion, il est un jeune qui a su se faire
                                    valoir en acquérant beaucoup de compétences et de savoir faire qu'il met au service des populations à travers
                                    koudji-prest.
                                </p>
                            </div>
                            <div class="d-flex align-items-center flex-nowrap">
                                <div class="bg-secondary rounded">
                                    <img src="img/testimonial-1.jpg" class="img-fluid rounded" style="width: 100px; height: 100px;" alt="">
                                </div>
                                <div class="ms-4 d-block">
                                    <h4 class="text-dark">ASDE ASPECT</h4>
                                    <p class="m-0 pb-3">Formateur et technicien</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="testimonial-item img-border-radius bg-light rounded p-4">
                        <div class="position-relative">
                            <i class="fa fa-quote-right fa-2x text-secondary position-absolute" style="bottom: 30px; right: 0;"></i>
                            <div class="mb-4 pb-4 border-bottom border-secondary">
                                <p class="mb-0">Elève en classe de Terminale, ce garçon a su faire preuve de savoir-faire exceptionnel. 
                                Il est un artiste complet</p>
                            </div>
                            <div class="d-flex align-items-center flex-nowrap">
                                <div class="bg-secondary rounded">
                                    <img src="img/testimonial-1.jpg" class="img-fluid rounded" style="width: 100px; height: 100px;" alt="">
                                </div>
                                <div class="ms-4 d-block">
                                    <h4 class="text-dark">DJIGDE HONNEUR</h4><p class="m-0 pb-3">Technicien</p>
                            </div>
                        </div>
                    </div>
                </div>
            
            
            
        </div></div>
        
        
        <?php include_once 'regions/foot.php'; ?>
    </body>

</html>