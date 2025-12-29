jQuery(document).ready(function ($) {
    $(".burger-inner img").click(function () {
        if ($(".hide-menu").length > 0) {
            $(".burger-menu").removeClass("hide-menu");
            $(".burger-menu").addClass("active-menu");
            $("body").addClass("hide-page");
            $(".ellipse").css("box-shadow", "unset");
            $(".ellipse").css("background", "unset");
        } else {
            $(".burger-menu").removeClass("active-menu");
            $(".burger-menu").addClass("hide-menu");
            $("body").removeClass("hide-page");
        }
    });

    $(".burger-menu-header .close").click(function () {
        $(".burger-menu").removeClass("active-menu");
        $(".burger-menu").addClass("hide-menu");
        $("body").removeClass("hide-page");
    });

    $(".burger-sub-p img").click(function () {
        if ($(".close-sub").length > 0) {
            $(".burger-sub").removeClass("close-sub");
            $(".burger-sub").addClass("active-sub");

            $(".sub-menu-second").show();
        } else {
            $(".burger-sub").addClass("close-sub");
            $(".burger-sub").removeClass("active-sub");

            $(".sub-menu-second").hide();
        }
    });

    $(".price-container-ul .arrow-down img").click(function () {
        if (
            $(this).closest(".level-menu-first-p").find(".price-menu-hide")
                .length > 0
        ) {
            $(this).closest(".arrow-down").hide();
            $(this).closest(".price-container-ul").find(".arrow-up").show();
            $(this)
                .closest(".level-menu-first-p")
                .find(".price-menu")
                .addClass("price-menu-active");
            $(this)
                .closest(".level-menu-first-p")
                .find(".price-menu")
                .removeClass("price-menu-hide");
        }
    });

    $(".price-container-ul .arrow-up img").click(function () {
        if (
            $(this).closest(".level-menu-first-p").find(".price-menu-active")
                .length > 0
        ) {
            $(this).closest(".arrow-up").hide();
            $(this).closest(".price-container-ul").find(".arrow-down").show();
            $(this)
                .closest(".level-menu-first-p")
                .find(".price-menu")
                .removeClass("price-menu-active");
            $(this)
                .closest(".level-menu-first-p")
                .find(".price-menu")
                .addClass("price-menu-hide");
        }
    });

    $(".record").click(function () {
        $(".pop-it-record").show();
        $(".pop-helper").hide();
        $("body").addClass("hide-page");
        $(".ellipse").css("box-shadow", "unset");
        $(".ellipse").css("background", "unset");
    });

    $(".footer-whatsapp").click(function (e) {
        e.preventDefault();
        $(".pop-it-record").show();
        $(".pop-helper").hide();
        $("body").addClass("hide-page");
        $(".ellipse").css("box-shadow", "unset");
        $(".ellipse").css("background", "unset");
    });

    $(".btn-round").click(function () {
        $(".pop-it-record").show();
        $(".pop-helper").hide();
        $("body").addClass("hide-page");
        $(".ellipse").css("box-shadow", "unset");
        $(".ellipse").css("background", "unset");
    });

    $(document).mouseup(function (e) {
        var container = $(".pop-it-record");
        if (container.has(e.target).length === 0) {
            container.hide();
            $(".pop-it-record").hide();
            $("body").removeClass("hide-page");
            $(".ellipse").css(
                "box-shadow",
                "0px 5px 100px 100px rgb(253 253 253) inset"
            );
            $(".ellipse").css("background", "rgba(254, 204, 0, 0.0784313725)");

            $(".burger-menu").removeClass("active-menu");
            $(".burger-menu").addClass("hide-menu");
            $("body").removeClass("hide-page");
        }
    });

    $(".record-header .close img").click(function () {
        $(".pop-it-record").hide();
        $("body").removeClass("hide-page");
        $(".ellipse").css(
            "box-shadow",
            "0px 5px 100px 100px rgb(253 253 253) inset"
        );
        $(".ellipse").css("background", "rgba(254, 204, 0, 0.0784313725)");
    });

    $(".header-question").click(function () {
        $(this).siblings(".pop-helper").show();
        $(".pop-it-record").hide();
    });

    $(".footer-question").click(function () {
        $(this).siblings(".pop-helper").show();
        $(".pop-it-record").hide();
    });

    $(".helper-header .close img").click(function () {
        $(".pop-helper").hide();
    });

    // Инициализация кастомной карусели сертификатов
    $(".icones-carousel").each(function () {
        const $carousel = $(this);
        const $items = $carousel.find(".item");

        // Добавляем навигационные стрелки, если их нет
        if ($carousel.siblings(".carousel-nav").length === 0) {
            $carousel.after(
                '<div class="carousel-nav"><button class="carousel-prev">‹</button><button class="carousel-next">›</button></div>'
            );
        }

        const $prevBtn = $carousel
            .siblings(".carousel-nav")
            .find(".carousel-prev");
        const $nextBtn = $carousel
            .siblings(".carousel-nav")
            .find(".carousel-next");

        // Функция прокрутки влево
        $prevBtn.on("click", function () {
            const currentScroll = $carousel.scrollLeft();
            const itemWidth = $items.first().outerWidth(true);
            $carousel.animate(
                {
                    scrollLeft: currentScroll - itemWidth,
                },
                300
            );
        });

        // Функция прокрутки вправо
        $nextBtn.on("click", function () {
            const currentScroll = $carousel.scrollLeft();
            const itemWidth = $items.first().outerWidth(true);
            $carousel.animate(
                {
                    scrollLeft: currentScroll + itemWidth,
                },
                300
            );
        });

        // Обновление состояния кнопок при прокрутке
        $carousel.on("scroll", function () {
            const currentScroll = $carousel.scrollLeft();
            const maxScroll = $carousel[0].scrollWidth - $carousel.outerWidth();

            $prevBtn.toggleClass("disabled", currentScroll <= 0);
            $nextBtn.toggleClass("disabled", currentScroll >= maxScroll);
        });

        // Инициализация состояния кнопок
        $carousel.trigger("scroll");
    });

    // Функциональность для просмотра сертификатов в полном размере
    $(".doctor-certificates .item").on("click", function () {
        const imgSrc = $(this).find("img").attr("src");
        const imgAlt = $(this).find("img").attr("alt");

        // Создаем модальное окно, если его еще нет
        if ($("#certificate-modal").length === 0) {
            $("body").append(`
                <div id="certificate-modal" style="display: none;">
                    <div class="modal-overlay"></div>
                    <div class="modal-content">
                        <button class="modal-close">&times;</button>
                        <img src="" alt="" class="modal-image">
                    </div>
                </div>
            `);

            // Добавляем стили для модального окна
            if ($("#certificate-modal-styles").length === 0) {
                $("head").append(`
                    <style id="certificate-modal-styles">
                        #certificate-modal {
                            position: fixed;
                            top: 0;
                            left: 0;
                            width: 100%;
                            height: 100%;
                            z-index: 9999;
                            display: flex;
                            align-items: center;
                            justify-content: center;
                        }
                        
                        .modal-overlay {
                            position: absolute;
                            top: 0;
                            left: 0;
                            width: 100%;
                            height: 100%;
                            background: rgba(0, 0, 0, 0.8);
                        }
                        
                        .modal-content {
                            position: relative;
                            max-width: 90%;
                            max-height: 90%;
                            z-index: 10;
                        }
                        
                        .modal-image {
                            width: 100%;
                            height: auto;
                            max-height: 90vh;
                            object-fit: contain;
                            border-radius: 8px;
                        }
                        
                        .modal-close {
                            position: absolute;
                            top: -40px;
                            right: -40px;
                            background: white;
                            border: none;
                            width: 40px;
                            height: 40px;
                            border-radius: 50%;
                            font-size: 24px;
                            cursor: pointer;
                            display: flex;
                            align-items: center;
                            justify-content: center;
                            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.3);
                        }
                        
                        @media (max-width: 768px) {
                            .modal-content {
                                max-width: 95%;
                                max-height: 95%;
                            }
                            
                            .modal-close {
                                top: -35px;
                                right: 0;
                            }
                        }
                    </style>
                `);
            }

            // Обработчики событий для модального окна
            $(document).on(
                "click",
                "#certificate-modal .modal-overlay, #certificate-modal .modal-close",
                function () {
                    $("#certificate-modal").fadeOut();
                }
            );

            $(document).on(
                "click",
                "#certificate-modal .modal-content",
                function (e) {
                    e.stopPropagation();
                }
            );

            // Закрытие модального окна по клавише Escape
            $(document).on("keydown", function (e) {
                if (
                    e.keyCode === 27 &&
                    $("#certificate-modal").is(":visible")
                ) {
                    $("#certificate-modal").fadeOut();
                }
            });
        }

        // Заполняем модальное окно и показываем его
        $("#certificate-modal .modal-image")
            .attr("src", imgSrc)
            .attr("alt", imgAlt);
        $("#certificate-modal").fadeIn();
    });

    $(".owl-carousel").owlCarousel({
        items: 3,
        margin: 50,
        autoPlay: 3000,
        itemsDesktop: [1515, 2],
        itemsDesktopSmall: [900, 1],
        itemsTablet: [600, 1],
        navigation: false,
        pagination: false,
        center: true,
    });

    // Инициализация слайдера отзывов
    if ($(".reviews-slider").length > 0) {
        const reviewsSwiper = new Swiper(".reviews-slider", {
            // Базовые настройки
            slidesPerView: 1,
            spaceBetween: 30,
            loop: true,
            autoHeight: true, // Включаем автоматическую высоту для адаптации под контент
            autoplay: {
                delay: 5000,
                disableOnInteraction: false,
            },

            // Настройки для разных размеров экрана
            breakpoints: {
                // Когда ширина экрана >= 576px
                576: {
                    slidesPerView: 2,
                    spaceBetween: 20,
                },
                // Когда ширина экрана >= 768px
                768: {
                    slidesPerView: 2,
                    spaceBetween: 30,
                },
                // Когда ширина экрана >= 1024px
                1024: {
                    slidesPerView: 3,
                    spaceBetween: 30,
                },
                // Когда ширина экрана >= 1200px
                1200: {
                    slidesPerView: 3,
                    spaceBetween: 40,
                },
            },

            // Навигация
            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
            },

            // Пагинация
            pagination: {
                el: ".swiper-pagination",
                clickable: true,
                dynamicBullets: true,
            },

            // Эффекты
            effect: "slide",
            speed: 800,

            // Дополнительные настройки для выравнивания
            grabCursor: true,
            watchOverflow: true,
            preventClicks: true,
            preventClicksPropagation: true,
            centeredSlides: false,
            slidesPerGroup: 1,
            allowTouchMove: true,
            simulateTouch: true,

            // События
            on: {
                init: function () {
                    console.log("Слайдер отзывов инициализирован");
                    // Принудительно обновляем слайдер после инициализации
                    this.update();
                    this.updateSize();
                    this.updateSlides();
                    this.updateProgress();
                    this.updateSlidesClasses();
                },
                resize: function () {
                    // Обновляем слайдер при изменении размера окна
                    this.update();
                    this.updateSize();
                    this.updateSlides();
                },
                slideChange: function () {
                    console.log("Активный слайд: " + this.activeIndex);
                },
            },
        });
    }

    // Функциональность для модального окна отзыва
    function openReviewModal(reviewTextElement) {
        const fullText = reviewTextElement.data("full-text");
        const reviewerName = reviewTextElement.data("reviewer-name");
        const reviewDate = reviewTextElement.data("review-date");
        const reviewRating = parseInt(reviewTextElement.data("review-rating"));
        const reviewService = reviewTextElement.data("review-service");

        // Получаем аватар из родительской карточки
        const avatarSrc =
            reviewTextElement
                .closest(".review-card")
                .find(".reviewer-avatar img")
                .attr("src") ||
            "https://picsum.photos/seed/default/100/100.jpg";

        // Заполняем модальное окно данными
        $("#modalAvatar").attr("src", avatarSrc).attr("alt", reviewerName);
        $("#modalName").text(reviewerName);
        $("#modalDate").text(reviewDate);
        $("#modalReviewText").html(fullText);

        // Заполняем рейтинг
        const ratingHtml = generateStars(reviewRating);
        $("#modalRating").html(ratingHtml);

        // Заполняем услугу, если она есть
        if (reviewService) {
            $("#modalService").html(
                '<span class="service-tag">' + reviewService + "</span>"
            );
        } else {
            $("#modalService").empty();
        }

        // Показываем модальное окно
        $("#reviewModal").addClass("active");
        $("body").css("overflow", "hidden"); // Блокируем прокрутку страницы
    }

    function closeReviewModal() {
        $("#reviewModal").removeClass("active");
        $("body").css("overflow", ""); // Возвращаем прокрутку страницы
    }

    function generateStars(rating) {
        let starsHtml = "";
        for (let i = 1; i <= 5; i++) {
            if (i <= rating) {
                starsHtml += '<span class="star filled">★</span>';
            } else {
                starsHtml += '<span class="star">★</span>';
            }
        }
        return starsHtml;
    }

    // Обработчики событий для модального окна
    $(document).on("click", ".read-more-btn", function (e) {
        e.preventDefault();
        const reviewId = $(this).data("review-id");
        const reviewTextElement = $(this).siblings(".review-text");

        if (reviewTextElement.length) {
            openReviewModal(reviewTextElement);
        }
    });

    // Закрытие модального окна по клику на overlay
    $(document).on("click", "#reviewModal .modal-overlay", function () {
        closeReviewModal();
    });

    // Закрытие модального окна по клику на кнопку закрытия
    $(document).on("click", "#modalCloseBtn", function (e) {
        e.preventDefault();
        closeReviewModal();
    });

    // Предотвращение закрытия модального окна при клике на контент
    $(document).on("click", "#reviewModal .modal-content", function (e) {
        e.stopPropagation();
    });

    // Закрытие модального окна по клавише Escape
    $(document).on("keydown", function (e) {
        if (e.keyCode === 27 && $("#reviewModal").hasClass("active")) {
            closeReviewModal();
        }
    });
});
