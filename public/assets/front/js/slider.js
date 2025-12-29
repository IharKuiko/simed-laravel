

        const swiper = new Swiper('.swiper', {
            // Optional parameters
            direction: 'horizontal',
            loop: true,

            autoplay: {
                delay: 2000,
            },

            centeredSlides: true,            // центрирует активный слайд
        centerInsufficientSlides: true,

            slidesPerView: 4,
            spaceBetween: 30,
            centeredSlides: true,
            breakpoints: {
                640: {
                    slidesPerView: 1,
                    spaceBetween: 20
                },
                768: {
                    slidesPerView: 2,
                    spaceBetween: 30
                },
                1024: {
                    slidesPerView: 3,
                    spaceBetween: 40
                }
            },
        
            // If we need pagination
            pagination: {
              el: '.swiper-pagination',
            },
        
            // Navigation arrows
            navigation: {
              nextEl: '.swiper-button-next',
              prevEl: '.swiper-button-prev',
            },
        
            // And if we need scrollbar
            scrollbar: {
              el: '.swiper-scrollbar',
            },
          });

        //   alert('swiper');
        //   console.log(swiper);