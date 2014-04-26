$.fn.studyplay_star=function(options,callback){
	//默认设置
	var settings ={
		MaxStar      :8,
		StarWidth    :12,
		CurrentStar  :5,
		Enabled      :true	
		};	
	if(options) { jQuery.extend(settings, options); };
	var container = jQuery(this);
	container.css({"position":"relative"})
	.html('<p class="studyplay_starBg"></p>')	
	.find('.studyplay_starBg').width(settings.MaxStar*settings.StarWidth)
	.html('<p class="studyplay_starovering" style="width:'+settings.CurrentStar*settings.StarWidth+'px; z-index:0;" id="studyplay_current"></p>');
	if(settings.Enabled)
	{
	var ListArray = "";	
	for(k=1;k<settings.MaxStar+1;k++)
	{
		ListArray +='<p class="studyplay_starON" style="width:'+settings.StarWidth*k+'px;z-index:'+(settings.MaxStar-k+1)+';"></p>';
	}
	/*评分JS
	container.find('.studyplay_starBg').append(ListArray)
	.find('.studyplay_starON').hover(function(){
											  $("#studyplay_current").hide();
											  $(this).removeClass('studyplay_starON').addClass("studyplay_starovering");
											  },
									  function(){
										  $(this).removeClass('studyplay_starovering').addClass("studyplay_starON");
										  $("#studyplay_current").show();
										  })
	.click(function(){
					var studyplay_count = settings.MaxStar - $(this).css("z-index")+1;
					$("#studyplay_current").width(studyplay_count*settings.StarWidth)
					//回调函数
					if (typeof callback == 'function') {
					callback(studyplay_count);
					return ;
					}
					})
	*/
 }	
}

//**显示评分JS
$(document).ready(function(){
		var cleanScore = $('#cleanScore').val();
		var comfortScore = $('#comfortScore').val();
		var serviceScore = $('#serviceScore').val();
		var hardWareScore = $('#hardWareScore').val();
		var sleepScore = $('#sleepScore').val();
		var wifiScore = $('#wifiScore').val();
		$("#cleanScorePic").studyplay_star({MaxStar:10,CurrentStar:cleanScore,Enabled:true},function(value){alert(value)});
		$("#comfortScorePic").studyplay_star({MaxStar:10,CurrentStar:comfortScore,Enabled:true},function(value){alert(value)});
		$("#serviceScorePic").studyplay_star({MaxStar:10,CurrentStar:serviceScore,Enabled:true},function(value){alert(value)});
		$("#hardWareScorePic").studyplay_star({MaxStar:10,CurrentStar:hardWareScore,Enabled:true},function(value){alert(value)});
		$("#sleepScorePic").studyplay_star({MaxStar:10,CurrentStar:sleepScore,Enabled:true},function(value){alert(value)});
		$("#wifiScorePic").studyplay_star({MaxStar:10,CurrentStar:wifiScore,Enabled:true},function(value){alert(value)});
	});	