(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.10";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
jQuery(document).ready(function($) {
	$('.title-p').val($('.info-book-tour h4').text());
	$('.hidden-tour').val($('.link_tour').val());
	$('.hidden-hotel').val($('.link-hotel').val());
	$('.tit-hotel').val($('h1').text());
	$('.imageGallery img').height($('.imageGallery').width()*0.6);
	$('.imageGallery').lightSlider({
        gallery:true,
        item:1,
        loop:true,
        thumbItem:6,
        slideMargin:0,
        enableDrag: false,
        currentPagerPosition:'left',
        onSliderLoad: function(el) {
            el.lightGallery({
                selector: '.imageGallery .lslide'
            });
        }   
    });
	$('.top-tour').owlCarousel({
	    loop:true,
	    margin:15,
	    dots: false,
	    nav:true,
	    navText: ['<i class="fa fa-chevron-left"></i>','<i class="fa fa-chevron-right"></i>'],
	    responsive:{
	        0:{
	            items:1
	        },
	        600:{
	            items:2
	        },
	        1000:{
	            items:3
	        }
	    }
	});
	$('.top-localtion').owlCarousel({
	    loop:true,
	    margin:20,
	    dots: true,
	    nav:false,
	    navText: ['<i class="fa fa-chevron-left"></i>','<i class="fa fa-chevron-right"></i>'],
	    responsive:{
	        0:{
	            items:1
	        },
	        600:{
	            items:2
	        },
	        1000:{
	            items:4
	        }
	    }
	});
	// totop
	var offset = 220;
	var duration = 500;
	jQuery(window).scroll(function() {
	    if (jQuery(this).scrollTop() > offset) {
	      jQuery('.back-to-top').fadeIn(duration);
	    } else {
	      jQuery('.back-to-top').fadeOut(duration);
	    }
	});
	jQuery('.back-to-top').click(function(event) {
	    event.preventDefault();
	    jQuery('html, body').animate({
	      scrollTop: 0
	    }, duration);
	    return false;
	});
	$(function () {
		$(".main-nav-action").click(function () {
			$(".main-nav-container").slideToggle(500)
		})
	});
});