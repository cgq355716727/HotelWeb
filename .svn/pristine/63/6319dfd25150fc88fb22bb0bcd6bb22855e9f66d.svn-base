var chk_city = 0;
function GetKey(obj1) {   // 根据value去key
  for (i = 0; i < city_list.length; i++) {
   if (city_list[i] == obj1) {     
    return i;
   }
  }
}

function DelZone(obj){
	document.getElementById(obj).innerHTML = '';
  	document.getElementById(obj)[0] = new Option('全部区域',0);
	chk_city = 1;
}

function BuildZone(obj1,obj2,selectid,selzone){
	var zone_arr,opts,i;

 if(!arguments[3]) selzone = 0;
  var city_val1 = document.getElementById(obj1).value;
  if(city_val1 == ''){
	  var city_val2 = $('input[name=hotcity]:checked').val();
	  var city_val = city_val2;
 }
  else var city_val = city_val1;
  
  if(chk_city != 1){
	  return false;
	}

  if(city_val == null){
	  document.getElementById(selectid).innerHTML = '';
  	  document.getElementById(selectid)[0] = new Option('全部区域',0);
	  return false;
  }

  document.getElementById(selectid).innerHTML = '';
  if(selzone == 0){
	  document.getElementById(selectid)[0] = new Option('全部区域',0);
	  i = 1;
  }
  else{
	  document.getElementById(selectid)[0] = new Option(selzone,selzone);
	  document.getElementById(selectid)[1] = new Option('全部区域',0);
	  i = 2;
  }
  var city_key = GetKey(city_val);
  if(city_key != undefined && zone_list[city_key] != undefined)
  {  	
	  zone_arr = zone_list[city_key].toString().split(",");  	  
	  opts = zone_arr.length;	
	  for(j=0;j<opts;j++)
		{
			if(zone_arr[j] == selzone) continue;
			document.getElementById(selectid)[i] = new Option(zone_arr[j], zone_arr[j]);
			i++;
		}
	  chk_city = 2;
  }
}