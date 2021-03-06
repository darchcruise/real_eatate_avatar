// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require bootstrap




// home page - carousel
$(document).ready(function(){
    // Set the interval to be 5 seconds
    var t = setInterval(function(){
        $("#carousel ul").animate({marginLeft:-800},1000,function(){
            $(this).find("li:last").after($(this).find("li:first"));
            $(this).css({marginLeft:0});
        });
    },5000);
});


// // show page - carousel
// $(document).ready(function(){
//   $(".nextlink").on("click", function(e){
//       e.preventDefault();
//       var currentImage = $(".image-shown");
//       var nextImage = currentImage.next();
//       if(!nextImage) {
//         nextImage = $(".carousel-inner li").last();
//       }
//       currentImage.removeClass("image-shown").addClass("image-hidden").css("z-index", -10);
//       nextImage.addClass("image-shown").removeClass("image-hidden").css("z-index", -20);
//       $(".carousel-inner li").not(currentImage, nextImage).css("z-index", 1);
//   });


//   $(".previouslink").on("click", function(e){
//       e.preventDefault();
//       var currentImage = $(".image-shown");
//       var nextImage = currentImage.prev();

//       if(!nextImage) {
//         nextImage = $(".carousel-inner li").first();
//       }
//       currentImage.removeClass("image-shown").addClass("image-hidden").css("z-index", -10);
//       nextImage.addClass("image-shown").removeClass("image-hidden").css("z-index", -20);
//       $(".carousel-inner li").not(currentImage, nextImage).css("z-index", 1);
//     });
// });

// $('.carousel-example-generic').carousel();



// google map
      function initialize_map(latitude, longitude) {

        var mapOptions = {
          center: new google.maps.LatLng(latitude, longitude),
          zoom: 16,
          mapTypeId: google.maps.MapTypeId.ROADMAP
        };

        var map = new google.maps.Map(document.getElementById("map-canvas"),
            mapOptions);

        var marker = new google.maps.Marker({
          position: new google.maps.LatLng(latitude, longitude),
          map: map
        });
}
