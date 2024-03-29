//// Definitions ////

// Toggle HTML Function Definition //
$.fn.extend({
	toggleHTML:function(a,b) {
		if(this.html() == a) {
			this.html(b);
		} else {
			this.html(a);
		}
	}
});

//// Implementations ////

// Toggle HTML Event Handling //
$(document).ready(function(){	
	// Toggle HTML -- Global Link and Button Click Loading Indicator Display //
	$(this).on('click', 'a:not(#ddexception, #stateid), .btn:not(#see_hide_toggle)', function(e) {
		var loadingText = "... LOADING ...";
		$('#spinnerid').toggleHTML("RoboCitizen", loadingText);
	});
	// Toggle HTML -- Legislators Display //
	$(this).on('click', '#see_hide_toggle', function(e) {
		e.preventDefault();
		$(this).toggleHTML("Show All Legislators", "Hide Legislators");
	});
	// Toggle HTML -- Plus/Minus Sign Display //
	$(this).on('click', '#stateid', function(e) {
		$('#togglesign', this).toggleHTML("+", "-");
	});
});

// <INSERT NAME HERE> Event Handling //
$(document).ready(function(){	
	// Stub Method
	
});