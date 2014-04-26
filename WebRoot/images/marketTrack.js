var sid = getRequestUrlValues('sid');
var rid = getRequestUrlValues('rid');
if(sid >0  && rid > 0 ){
	setmarketTrack(sid,rid);
}

function getRequestUrlValues(rString){
	var reg = new RegExp(rString + "=([^\&]*)", "i");
	var tp  = reg.exec(document.location.search);
	if(tp == null){
		return null;
	}
	return tp[1];
}

function setmarketTrack(sid,rid){
	$(document).ready(function() {
		$.ajax({
			type: "POST",
			url: "ajax/ajax_marketTrace.php?sid="+sid+'&rid='+rid,
			dataType: "json",
			success: function(json){
				if(json.code == 1){
					//do nothing;
				}
            }
        });
	});
}
