<!DOCTYPE html>
<html lang="en">
    <?php include_once 'regions/head.php'; ?>
    <body>

        <!-- Spinner End -->
        <?php include_once 'regions/navbar.php'; ?>
        <!-- Navbar start -->
        
        <!-- Single Page Header start -->
        <div class="container-fluid page-header py-5">
            <h1 class="text-center text-white display-6"> Page non trouvée</h1>
            <ol class="breadcrumb justify-content-center mb-0">
                <li class="breadcrumb-item"><a href="index.php">Accueil</a></li>
                <li class="breadcrumb-item"><a href="index.php#secsrv">Services</a></li>
                <li class="breadcrumb-item"><a href="index.php#secsrv">Formations</a></li>
            </ol>
        </div>
        <!-- Single Page Header End -->


        <div class="container-fluid py-5">
            <div class="container py-5 text-center">
                <div class="row justify-content-center">
                    <div class="col-lg-6">
                        <i class="bi bi-exclamation-triangle display-1 text-secondary"></i>
                        <h1 class="display-1">404</h1>
                        <h1 class="mb-4">Page trouvée</h1>
                        <p class="mb-4">Désolé, nous ne parvenons pas à trouver la page que vous demandez. Assurez-vous que vous avez saisi correctement l'adresse !</p>
                        <a class="btn border-secondary rounded-pill py-3 px-5" href="index.php">Aller à l'accueil</a>
                    </div>
                </div>
            </div>
        </div>
        
        <?php include_once 'regions/foot.php'; ?>
        
    </body>

</html>