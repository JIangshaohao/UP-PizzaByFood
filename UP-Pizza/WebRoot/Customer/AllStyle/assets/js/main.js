(function($) {
  "use strict"
  jQuery(document).ready(function() {

      // mobile-menu
      $('#mobile-menu').meanmenu({
          meanMenuContainer: '.mobile-menu',
          meanScreenWidth: "991.99"
      });
      

      // youtube popup
      $('.popup-youtube').magnificPopup({
          disableOn: 700,
          type: 'iframe',
          mainClass: 'mfp-fade',
          removalDelay: 160,
          preloader: false,
          fixedContentPos: false
      });

      // blog youtube popup
      $('.button-video').magnificPopup({
          disableOn: 700,
          type: 'iframe',
          mainClass: 'mfp-fade',
          removalDelay: 160,
          preloader: false,
          fixedContentPos: false
      });

      // testimonial 
      $('.testimonial-active').slick({
          dots: true,
          infinite: false,
          speed: 1000,
          slidesToShow: 2,
          slidesToScroll: 2,
          arrows :false,
          responsive: [
            {
              breakpoint: 992,
              settings: {
                slidesToShow: 2,
                slidesToScroll: 1,
                infinite: true,
                dots: true
              }
            },
            {
              breakpoint: 768,
              settings: {
                slidesToShow: 1,
                slidesToScroll: 1
              }
            },
            {
              breakpoint: 480,
              settings: {
                slidesToShow: 1,
                slidesToScroll: 1
              }
            }
          ]
        });

          // home3 testimonial 
      $('.ht-testi-active').slick({
        dots: true,
        infinite: false,
        speed: 1000,
        slidesToShow: 2,
        slidesToScroll: 2,
        arrows :false,
        responsive: [
          {
            breakpoint: 992,
            settings: {
              slidesToShow: 1,
              slidesToScroll: 1,
              infinite: true,
              dots: true
            }
          },
          {
            breakpoint: 768,
            settings: {
              slidesToShow: 1,
              slidesToScroll: 1
            }
          },
          {
            breakpoint: 480,
            settings: {
              slidesToShow: 1,
              slidesToScroll: 1
            }
          }
        ]
      });

      //   slider-gallery
      $('.slider-gallery-active').slick({
          dots: false,
          arrows: false,
          infinite: true,
          speed: 1000,
          slidesToShow: 4,
          centerMode: true,
          variableWidth: true,
          responsive: [
              {
                breakpoint: 1024,
                settings: {
                  slidesToShow: 3,
                
                }
              },
              {
                breakpoint: 600,
                settings: {
                  slidesToShow: 2,
               
                }
              },
              {
                breakpoint: 480,
                settings: {
                  slidesToShow: 2,
            
                }
              }
            ]
        });
      //   slider-gallery
      $('.ins-gallery-active').slick({
          dots: false,
          arrows: false,
          infinite: true,
          speed: 1000,
          slidesToShow: 4,
          centerMode: false,
          variableWidth: true,
          responsive: [
              {
                breakpoint: 1024,
                settings: {
                  slidesToShow: 3,
                
                }
              },
              {
                breakpoint: 600,
                settings: {
                  slidesToShow: 2,
               
                }
              },
              {
                breakpoint: 480,
                settings: {
                  slidesToShow: 2,
            
                }
              }
            ]
        });

      // index-blog-slider-active
      $('.blog-slider-active').slick({
          dots: true,
          infinite: false,
          speed: 1000,
          slidesToShow: 3,
          slidesToScroll: 3,
          arrows :false,
          responsive: [
            {
              breakpoint: 1024,
              settings: {
                slidesToShow: 2,
                slidesToScroll: 2,
                infinite: true,
                dots: true
              }
            },
            {
              breakpoint: 600,
              settings: {
                slidesToShow: 1,
                slidesToScroll: 1
              }
            },
            {
              breakpoint: 480,
              settings: {
                slidesToShow: 1,
                slidesToScroll: 1
              }
            }
          ]
        });
      // blog-slider-active
      $('.blog-thumbnail-slider').slick({
          dots: false,
          infinite: false,
          speed: 1000,
          slidesToShow: 1,
          slidesToScroll: 1,
          arrows : true,
          prevArrow : '<i class="fas fa-reply prev-arrow"></i>',
          nextArrow : '<i class="fas fa-share next-arrow"></i>',
          responsive: [
            {
              breakpoint: 1024,
              settings: {
                slidesToShow: 1,
                slidesToScroll: 1,
                infinite: true,
                dots: true
              }
            },
            {
              breakpoint: 600,
              settings: {
                slidesToShow: 1,
                slidesToScroll: 1
              }
            },
            {
              breakpoint: 480,
              settings: {
                slidesToShow: 1,
                slidesToScroll: 1
              }
            }
          ]
        });

        // main-gallery

      // init Isotope
      var $grid = $('.gallery-wrapper').isotope({
        // options
      });

      // filter items on button click
      $('.filter-button-group').on( 'click', 'button', function() {
        var filterValue = $(this).attr('data-filter');
        $grid.isotope({ filter: filterValue });
      });

      $('.grid').isotope({
        // set itemSelector so .grid-sizer is not used in layout
        itemSelector: '.grid-item',
        percentPosition: true,
        masonry: {
          // use element for option
          columnWidth: 1
        }
      })
      $('.gallery-btn button').each(function() {
        $(this).click(function() {
          $(this).parent('.gallery-btn').find('button.active').removeClass('active');
          $(this).addClass('active');
        })
      }
      );

  // team-active
  $('.team-slider-active').slick({
    dots: true,
    infinite: true,
    speed: 1000,
    slidesToShow: 4,
    slidesToScroll: 4,
    arrows :false,
    responsive: [
      {
        breakpoint: 1024,
        settings: {
          slidesToShow: 3,
          slidesToScroll: 3,
          infinite: true,
          dots: true
        }
      },
      {
        breakpoint: 600,
        settings: {
          slidesToShow: 2,
          slidesToScroll: 2
        }
      },
      {
        breakpoint: 480,
        settings: {
          slidesToShow: 1,
          slidesToScroll: 1
        }
      }
    ]
  });

    // food-price range-slider
    $( function() {
      $( "#slider-range" ).slider({
        range: true,
        min: 0,
        max: 500,
        values: [ 75, 300 ],
        slide: function( event, ui ) {
          $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
        }
      });
      $( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) +
        " - $" + $( "#slider-range" ).slider( "values", 1 ) );
    } );

        // Countdown 
      // $('.countdown').downCount({
      //     date: '06/28/2021 12:00:00',
      //     offset: +6
      // }, function () {
      //     alert('Countdown done!');
      // });

      // food counter
      $('.counter').counterUp({
        delay: 10,
        time: 1000
    });

      // dbl product gallery
      $('.slider-for').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,
        fade: true,
        asNavFor: '.slider-nav'
      });
      $('.slider-nav').slick({
        slidesToShow: 3,
        slidesToScroll: 1,
        asNavFor: '.slider-for',
        dots: false,
        centerMode: true,
        focusOnSelect: true,
        arrows: false,
       
      });
  });

  jQuery(window).on('load', function() {

      // WOW JS
      new WOW().init();

      // Preloader
      var preLoder = $("#preloader");
      preLoder.fadeOut(0);

  });
})(jQuery);
