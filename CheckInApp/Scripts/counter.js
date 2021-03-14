
// CONFIG
let visibilityIds = ['#counters_1', '#counters_2', '#counters_3'];
let counterClass = '.counter';
let defaultSpeed = 3000;

$(window).on('scroll', function () {
    getVisibilityStatus();
});

getVisibilityStatus();

function getVisibilityStatus() {
    elValFromTop = [];
    var windowHeight = $(window).height(),
        windowScrollValFromTop = $(this).scrollTop();

    visibilityIds.forEach(function (item, index) {
        try {
            elValFromTop[index] = Math.ceil($(item).offset().top);
        } catch (err) {
            return;
        }
        if ((windowHeight + windowScrollValFromTop) > elValFromTop[index]) {
            counter_init(item);
        }
    });
}

function counter_init(groupId) {
    let num, speed, direction, index = 0;
    $(counterClass).each(function () {
        num = $(this).attr('data-TargetNum');
        speed = $(this).attr('data-Speed');
        direction = $(this).attr('data-Direction');
        easing = $(this).attr('data-Easing');
        if (speed == undefined) speed = defaultSpeed;
        $(this).addClass('c_' + index);
        doCount(num, index, speed, groupId, direction, easing);
        index++;
    });
}

function doCount(num, index, speed, groupClass, direction, easing) {
    let className = groupClass + ' ' + counterClass + '.' + 'c_' + index;
    if (easing == undefined) easing = "swing";
    $(className).animate({
        num
    }, {
        duration: +speed,
        easing: easing,
            step: function (now) {
                var i = (20 - (num - Math.floor(now))) * 5
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
                $(".update-point").html(parseInt((num - Math.floor(now)) * 5) + " Point");
                $("#AnsTime").val(num - Math.floor(now));
            if (direction == 'reverse') {
                if (num - Math.floor(now) < 10) {
                    $(this).html("0" + (num - Math.floor(now)));
                } else {
                    $(this).html(num - Math.floor(now));
                }
            } else {
                $(this).text(Math.floor(now));
            }
        },
        done: completeTime
    });
}

function completeTime() {
    if (pageId == 1) {
        if (parseInt($(".counter").html()) == 0) {
            setTimeout(function () {
                    $('#loadbar').show();
                    var i = 0;
                    $(".quiz .ans").each(function (index) {
                        if ($(this).attr("data-chose") == "1") {
                            i = 1;
                        }
                    });
                    if (i == 0) {
                        $("#answer")
                            .html("Thời gian đã hết bạn chưa chọn câu trả lời nào, vui lòng đợi câu hỏi tiếp theo.");
                        $('#answer').fadeIn();
                        $(".quiz .ans").removeClass("btn-primary btn-danger btn-warning btn-success")
                            .addClass("btn-secondary");
                    }
                },
                1000);

            ChooseAns();
        }
    } else {
        setTimeout(function () {
            $(".quiz .ans").removeClass("btn-primary btn-danger btn-warning btn-warning btn-success")
                .addClass("btn-secondary");
                $(".quiz .ans").each(function (index) {
                    if ($(this).attr("data-ans") == "1") {
                        $(this).addClass("btn-success");
                    }
                });
                $("#show-top").fadeIn();
            },
            1000);
    }

}
