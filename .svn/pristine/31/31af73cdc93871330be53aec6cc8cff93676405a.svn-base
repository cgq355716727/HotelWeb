// jQuery Cursor Message Plugin
//
// Version 0.1
//
// Tim de Koning
// Kingsquare Information Services (http://www.kingsquare.nl/)
//
// Visit http://www.kingsquare.nl/cursorMessage for usage and more information
//
// Terms of Use
//
// This file is released under the GPL, any version you like
//

if(jQuery) {
	( function($) {
	$.cursorMessageData = {}; // needed for e.g. timeoutId
	//start registring mouse coöridnates from the start!

	$(window).ready(function(e) {
		if ($('#cursorMessageDiv').length==0) {
			  $('body').append('<div id="cursorMessageDiv"></div>');	
			  $('#cursorMessageDiv').hide();
		}

		$('body').mousemove(function(e) {
			$.cursorMessageData.mouseX = e.pageX;
			$.cursorMessageData.mouseY = e.pageY;
			if ($.cursorMessageData.options != undefined) $._showCursorMessage();
		});
	});	
	$.extend({
		cursorMessage: function(message, options) {
			if( options == undefined ) options = {};
			if( options.offsetX == undefined ) options.offsetX = 5;
			if( options.offsetY == undefined ) options.offsetY = 5;
			if( options.hideTimeout == undefined ) options.hideTimeout = 1000;
			
			var hideCursorMessage = function() {
				$('#cursorMessageDiv').html(message).fadeOut('slow');
			};
			if(options.hideTimeout == 0 )
			{
			
			    $('#cursorMessageDiv').hide();return;
			}
			$('#cursorMessageDiv').html(message).fadeIn('slow');
			if (jQuery.cursorMessageData.hideTimoutId != undefined)  clearTimeout(jQuery.cursorMessageData.hideTimoutId);
			jQuery.cursorMessageData.hideTimoutId = setTimeout(hideCursorMessage,options.hideTimeout);
			jQuery.cursorMessageData.options = options;
			$._showCursorMessage();
		},
		
		_showCursorMessage: function() {
			$('#cursorMessageDiv').css({ top: ( $.cursorMessageData.options.offsetY)+'px', left: ($.cursorMessageData.options.offsetX) })
		}
	});
})(jQuery);
}
var posLib_tips = 
{
    getClientLeft:function (el) {
     var r = el.getBoundingClientRect();
     return r.left- this.getBorderLeftWidth(this.getCanvasElement(el));
    },

    getClientTop:    function (el) {
     var r = el.getBoundingClientRect();
      return r.top - this.getBorderTopWidth(this.getCanvasElement(el));
    },

    getLeft:    function (el) {
      return this.getClientLeft(el) + this.getCanvasElement(el).scrollLeft;
    },

    getTop:    function (el) {
      return this.getClientTop(el) + this.getCanvasElement(el).scrollTop;
    },

    getInnerLeft:    function (el) {
      return this.getLeft(el) + this.getBorderLeftWidth(el);
    },

    getInnerTop:    function (el) {
      return this.getTop(el) + this.getBorderTopWidth(el);
    },

    getWidth:    function (el) {
      return el.offsetWidth;
    },

    getHeight:    function (el) {
      return el.offsetHeight;
    },

    getCanvasElement:    function (el) {
      var doc = el.ownerDocument || el.document;    // IE55 bug
      if (doc.compatMode == "CSS1Compat")
        return doc.documentElement;
      else
        return doc.body;
    },

    getBorderLeftWidth:    function (el) {
      return el.clientLeft;
    },

    getBorderTopWidth:    function (el) {
      return el.clientTop;
    },

    getScreenLeft:    function (el) {
      var doc = el.ownerDocument || el.document;    // IE55 bug
      var w = doc.parentWindow;
      return w.screenLeft + this.getBorderLeftWidth(this.getCanvasElement(el)) + this.getClientLeft(el);
    },

    getScreenTop:    function (el) {
      var doc = el.ownerDocument || el.document;    // IE55 bug
      var w = doc.parentWindow;
      return w.screenTop  + this.getClientTop(el);//+ this.getBorderTopWidth(this.getCanvasElement(el))
    }
}