/* Template Name: Orayo
   Author: Themesdesign
   Version: 1.0.0
   Created: Jan 2021
   File Description: Main Js file of the template
*/

! function($) {
    "use strict";  
    // Back to top
    $('.back-to-top').click(function(){
        $("html, body").animate({ scrollTop: 0 }, 750);
        return false;
    });
    $('.past-issuances').click(function(){
        $('html, body').animate({
            scrollTop: $('#pastIssuances').offset().top
        }, 750);
        return false;
    });
    //Slider
    $('.autoplay').slick({
        slidesToShow: 5,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 1000,
        responsive: [
            {
                breakpoint: 769,
                settings: {
                    arrows: false,
                    centerMode: true,
                    centerPadding: '0px',
                    slidesToShow: 3,
                }
            },
            
            {
                breakpoint: 426,
                settings: {
                    arrows: false,
                    centerMode: true,
                    centerPadding: '0px',
                    slidesToShow: 2,
                }
            }
        ]
    });
}(jQuery)