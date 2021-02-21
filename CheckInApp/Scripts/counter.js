
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
        complete: completeTime
    });
}

function completeTime() {
    if (pageId == 1) {
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
    } else {
        setTimeout(function () {
            $(".quiz .ans").removeClass("btn-primary btn-danger btn-warning btn-warning")
                .addClass("btn-secondary");
            setTimeout(function() {
                $("#join-list").hide();
                $("#quiz-test").hide();
                $("#counters_admin").html("");
                $("#counters_admin").html("<span class='text-center' style='display: block; font-size: 25px; font-weight: bold'>0:<span class='counter c_0' data-targetnum='15' data-speed='15000' data-direction='reverse' data-easing='linear' style=''>00</span></span>");
                $("#quiz").html("");
                $("#quiz").html("<label class='element-animation1 btn btn-lg btn-primary btn-block ans'>Đáp án thứ nhất</label> <label class='element-animation2 btn btn-lg btn-danger btn-block ans'>Đáp án thứ hai</label> <label class='element-animation3 btn btn-lg btn-warning btn-block ans'>Đáp án thứ ba</label> <label class='element-animation4 btn btn-lg btn-success btn-block ans'>Đáp án thứ tư (nếu nội dung đáp án thứ tư dài hơn 1 dòng sẽ hiển thị thêm 1 dòng)</label>");
                $("#ranking").fadeIn();
            },3000)
        },
            1000);
    }

}
