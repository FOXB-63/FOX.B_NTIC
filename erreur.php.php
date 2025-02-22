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
                <li class="breadcrumb-item"><a href="index.php#secsrv">Services</a></li>
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
                                    <img src="ress/img/srv/<?php print $entite['nodimage']; ?>" class="img-fluid rounded" alt="Image">
                                </div>
                            </div>
                            <div class="col-lg-8">
                                <?php print $entite['nodcontenu']; ?>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-xl-3">
                        <div class="row g-4 subdiv">
                            <div class="col-lg-12">
                                <div class="input-group w-100 mx-auto d-flex mb-4">
                                    <input type="search" class="form-control p-3" placeholder="Chercher" aria-describedby="search-icon-1">
                                    <span id="search-icon-1" class="input-group-text p-3"><i class="fa fa-search"></i></span>
                                </div>
                                <div class="mb-4">
                                    <form action="#">
                                        <h4 class="mb-2 fw-bold">Commentaire ou Témoignage</h4>
                                        <div class="g-4">
                                            <div class="border-bottom rounded py-2 ">
                                                <input type="text" class="form-control border-0 me-4" placeholder="Votre nom *">
                                            </div>
                                            <div class="border-bottom rounded py-2 ">
                                                <input type="email" class="form-control border-0" placeholder="Votre e-mail *">
                                            </div>
                                            <div class="border-bottom rounded py-2">
                                                <textarea name="" id="" class="form-control border-0" cols="30" rows="8" placeholder="Votre texte *" spellcheck="false"></textarea>
                                            </div>
                                            <div class="d-flex justify-content-between py-2 mb-2">
                                                <a href="#" class="btn border border-secondary text-primary rounded-pill px-4 py-3"> Envoyer</a>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <?php include_once 'regions/foot.php'; ?>
        
    </body>

</html>