<footer class="w3l-footer-29-main">
        <div class="footer-29-w3l py-3">
            <div class="container ">
                <div class="row footer-top-29 ">
                    <div class="col-lg-12 col-sm-6">
                        <div class="address-grid">
                            <h5 style="font-size: 15px;">Votre Classeur de documents gratuit, sauvegardant tous les documents en toute sécurité</h5>
                            <h5  style="font-size: 15px;">Alimenté par <a href="#">Odette </a> &nbsp;&nbsp;&nbsp;
                            Phone:&nbsp;<a href="tel:+25772154668">+25772154668 </a> &nbsp;&nbsp;&nbsp;
                            E-mail:&nbsp;<a href="mailto:belostishimwe@gmail.com">odete@gmail.com </a></h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <button onclick="topFunction()" id="movetop" title="Go to top">
        <span class="fas fa-level-up-alt" aria-hidden="true"></span>
    </button>
    <script>
        window.onscroll = function () {
            scrollFunction()
        };

        function scrollFunction() {
            if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                document.getElementById("movetop").style.display = "block";
            } else {
                document.getElementById("movetop").style.display = "none";
            }
        }
        function topFunction() {
            document.body.scrollTop = 0;
            document.documentElement.scrollTop = 0;
        }
    </script>
    <script src="assets/js/jquery-3.3.1.min.js"></script>
    <script src="assets/js/theme-change.js"></script>
    <script>
        $(window).on("scroll", function () {
            var scroll = $(window).scrollTop();

            if (scroll >= 80) {
                $("#site-header").addClass("nav-fixed");
            } else {
                $("#site-header").removeClass("nav-fixed");
            }
        });
        $(".navbar-toggler").on("click", function () {
            $("header").toggleClass("active");
        });
        $(document).on("ready", function () {
            if ($(window).width() > 991) {
                $("header").removeClass("active");
            }
            $(window).on("resize", function () {
                if ($(window).width() > 991) {
                    $("header").removeClass("active");
                }
            });
        });
    </script>
    <script>
        $(function () {
            $('.navbar-toggler').click(function () {
                $('body').toggleClass('noscroll');
            })
        });
    </script>
    <script src="assets/js/bootstrap.min.js"></script>
</body>

</html>