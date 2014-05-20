$(document).ready(function(){
	$.fn.extend({
		toggleText:function(a,b){
			if(this.html()==a){this.html(b)}
				else{this.html(a)}
			}
	});
	$(this).on('click', '#see_hide_toggle', function(e) {
		e.preventDefault();
		$(this).toggleText("Show All Legislators", "Hide Legislators");
	});
});

