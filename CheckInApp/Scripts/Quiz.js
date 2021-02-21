$(function () {
    $(document)
        .ajaxStart(function () {
            loading.show();
        }).ajaxStop(function () {
            loading.hide();
        });

    $("label.btn").on('click', function () {
        $(this).attr("data-chose", "1");
        $('#loadbar').show();
        $(".quiz .ans").each(function (index) {
            if ($(this).attr("data-chose") == "1") {
                $(this).addClass("btn-dark");
            } else {
                $(this).removeClass("btn-primary btn-danger btn-warning btn-success").addClass("btn-secondary");
            }
        });
        $('#answer').fadeIn();
    });

    showload();
});	

var i = 0;
function makeProgress() {
    var timerProgress = 0;
    if (i < 100) {
        i = i + 1;
        $(".progress-time").css("width", i + "%");
        if (i <= 20) {
            $(".progress-time").addClass("bg-info");
        } else if (i <= 40) {
            $(".progress-time").addClass("bg-success");
        } else if (i <= 80) {
            $(".progress-time").addClass("bg-warning");
        } else {
            $(".progress-time").addClass("bg-danger");
        }
    }
    if (i == 100) {
        setTimeout(function () {
            $("#quiz-test").hide();
            $("#ranking").fadeIn();
        }, 5000)
        clearTimeout(timerProgress);
    }
    timerProgress = setTimeout("makeProgress()", 150);
};

var textready;
var showtext = function() {
    textready = setInterval(function () { animationready(); }, 3000);
}
var animationready = function() {
    $(".animate").attr('class', 'animate');
    setTimeout(function () {
        $(".animate").addClass("one");
    }, 20);
}
var loadinghide = function() {
    $('#loadbar').hide();
    clearInterval(textready);
}
var showload = function() {
    $('#loadbar').fadeIn();
    showtext();
}