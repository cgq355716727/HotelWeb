
        
this.notice = function(a) {
    var c;
    a.notice = new
    function() {
        this.enabled = true;
        this.tip = a.getAttribute("mod_notice_tip") || "";
        this.title = a.getAttribute("mod_down_tip") || "";
        this.check = function() {
            if (a.notice.enabled) {
                with(a) {
                    if (isNull()) {
                        //style.color = "gray";
                        style.color = "#999";
                        a.value = this.tip
                    } else style.color = ""
                }
            }
        };
        this.isNull = a.isNull = function() {
            return a.value.replace(/(^\s*)|(\s*$)/g, "") == "" || a.value == a.notice.tip
        }
    };
    addEvent(a,'focus', function() {
        c = true;
        if (a.notice.enabled) {
            a.style.color = "";
            if (a.value == a.notice.tip) a.value = ""
        }
        showCursorMessage(a,a.notice.title);
    });
        addEvent(a,'blur',  function() {
        c = false;
        closeCursorMessage() ;
        a.notice.check() });


    a.notice.check()
};
function addEvent(el,evt,fn){
	if(!el)
		return;
	if('attachEvent' in el)
		el.attachEvent('on'+evt,fn);
	else
		el.addEventListener(evt,fn,false);
}
function showCursorMessage(obj,tips) {
    if(tips=="" || tips == undefined )
    {
    }
    else {        
        $('#cursorMessageDiv').width(obj.clientWidth);
	    $.cursorMessage(tips,{offsetX:posLib_tips.getLeft(obj),offsetY:posLib_tips.getTop(obj)+21,hideTimeout:100000});
	}
}
function closeCursorMessage() {
	$.cursorMessage('',{offsetX:20,offsetY:20,hideTimeout:0});
}