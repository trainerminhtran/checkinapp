$(function () {
    $(document)
        .ajaxStart(function () {
            //loading.show();
        }).ajaxStop(function () {
            //loading.hide();
        });

    $(".quiz .ans").on('click', function () {
        
    });

    showload();
});	
var i = 0;
var timerProgress;
function makeProgress() {
    console.log("i" + i);
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
        console.log("clear")
        clearInterval(timerProgress);
    }
    var timeinterval = parseInt((parseInt($(".counter").attr("data-TargetNum")) * 10));
    console.log("counter " + (parseInt($(".counter").attr("data-TargetNum"))))
    console.log("timeinterval " + timeinterval)
    if (timeinterval == 0) {
        i = 99;
        makeProgress();
    } else {
        timerProgress = setInterval("makeProgress()", timeinterval);
    }
    console.log(timerProgress);
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