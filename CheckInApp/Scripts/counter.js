﻿$(function () {

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
                        $(this).text("0" + (num - Math.floor(now)));
                    } else {
                        $(this).text(num - Math.floor(now));
                    }

                } else {
                    $(this).text(Math.floor(now));
                }
            },
            complete: completeTime
        });
    }

    function completeTime() {
        setTimeout(function() {
            $('#loadbar').show();
            var i = 0;
            $(".quiz .ans").each(function (index) {
                if ($(this).attr("data-chose") == "1") {
                    i = 1;
                }
            });
            if (i == 0) {
                $("#answer").html("Thời gian đã hết bạn chưa chọn câu trả lời nào, vui lòng đợi câu hỏi tiếp theo.");
                $('#answer').fadeIn();
                $(".quiz .ans").removeClass("btn-primary btn-danger btn-warning btn-success").addClass("btn-secondary");
            }
        }, 1000);
    }
})