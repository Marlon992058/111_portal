$(function () {
    brainbow();
});

var brainbow = function init() {
    /* function stuff */
    var indicate = function indicate($e, current) {
    	try{
	            var o = $e.offset(),
	            h = $e.innerHeight(),
	            w = $e.innerWidth(),
	            t = (o.top + h ).toFixed(2),
	            l = o.left.toFixed(2);
	            //c = $e.data("color") || "rgba(0,170,160,0)";
	        $(".indicator").css({
	            "top": current ? t + "px" : t + 6 + "px",
	            "left": l + "px",
	            "width": w + "px",
	            "height": current ? "2px" : "0.2em",
	            "background-color": "#00aaa0"
	        });
    	}catch(e){}

    };
    /* event stuff */
    $(".data-nav").bind("click", "li", function (e) {
        $(".data-nav li").each(function () {
            $(this).removeClass("current");
        });
        $(this).addClass("current");
    });
    $(".data-nav").bind("mouseenter", "li", function (e) {
        indicate($(this), false);
    });
    $(".data-nav").bind("mouseleave", "li", function (e) {
        indicate($("li.current"), true);
    });
    $(window).bind("resize", function () {
        indicate($("li.current"), true);
    });
    /* init stuff */
    var indicator = $("<div>").addClass("indicator");
    $(".personal-data").prepend(indicator);
    $(".data-nav li").each(function () {
        $(this).data({"color": $(this).css("color")});
    });
    indicate($(".data-nav li.current"), true);
};
