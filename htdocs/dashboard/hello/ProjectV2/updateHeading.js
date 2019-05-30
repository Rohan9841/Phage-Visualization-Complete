$(document).ready(function () {


    $.get("getHeading.php", function (data) {


        $("#index-h2").html(data);

    }
    )

    var slideCount = 0;

    showPictures();

    function showPictures() {
        var slides = $(".mySlides");
        for (var i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        slideCount++;
        if (slideCount > slides.length) {
            slideCount = 1;
        }
        slides[slideCount - 1].style.display = "block";
        setTimeout(showPictures, 2000);
    }

})