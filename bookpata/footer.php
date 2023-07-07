<footer class="w3l-footer-29-main">
        <div class="footer-29-w3l py-3">
            <div class="container ">
                <div class="row footer-top-29 ">
                    <div class="col-lg-3 col-sm-6">
                        <div class="address-grid">
                            <h5>Your free document store, Your AKABATI saving all document safe and secure, the first in Burundi</h5>
                            <h5 class="mt-sm-5 mt-4">Powered by <a href="https://abrahamuller.github.io/">Abraham Muller</a></span></h5>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6 mt-sm-0 mt-4">
                        <div class="address-grid">
                            <h5 class="top-bold">Phone</h5>
                            <h5 class="phone-number-text mt-2"><a href="tel:+257 000 000">+257 000 000</a></h5>
                        </div>
                        <div class="address-grid mt-sm-5 mt-4">
                            <h5 class="top-bold">E-mail</h5>
                            <h5 class="email-cont-text mt-1"> <a href="mailto:email@mail.com"
                                    class="mail">email@mail.com</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-6 col-sm-5 footer-list-menu ps-lg-0 mt-lg-0 mt-sm-5 mt-4">
                        <div class="address-grid">
                            <h5 class="mb-sm-4 mb-3 pb-lg-2 top-bold">Support Links</h5>
                            <ul>
                                <li><a href="signin">signin</a></li>
                                <li><a href="signup">signup</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="address-grid col-lg-4 col-md-6 col-sm-7 mt-lg-0 mt-sm-5 mt-4 w3l-footer-16-main">
                        <h5 class="top-bold">Subscribe Here</h5>
                        <form action="#" class="subscribe d-flex mt-sm-4 mt-3 pt-lg-2 mb-4" method="post">
                            <input type="email" name="email" placeholder="Email Address" required="">
                            <button><span class="fa fa-paper-plane" aria-hidden="true"></span></button>
                        </form>
                        <p>Subscribe to our mailing list and get updates to your email inbox.</p>
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