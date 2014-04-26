/**
 * headet & footet js
 *@author David.Zhai
 *@update 2010-11-23
 */

function hf()
{   
	 var url  ="";
	 var filename;
	 filename=window.location.href.replace(/(.*\/){0,}([^\?]+).*/ig,"$2");
	 $("#headet_info").html("");
	 $("#footet_info").html("");
	 $("#headet_info").hide();
     $.getJSON(url+"cache/hf/pageet.json?a="+Math.random(), function(data)
	{         
		 var arrData = data.text;
		 var flag = false;
		 for(i=0;i<arrData.length;i++)
		{
			 /**
			  * check if have *
			  */
			 var strTemp =  arrData[i];
			 var reCat = /\*/i;
			 if(reCat.test(strTemp)=="")
			{
				/**
				 * check if currence filename eq arrData[i]
				 */
				if(filename == strTemp)
				{
					flag=true;
					break;
				}
			}else
			{
				/**
				 * seperate str  use *
				 * 
				 */
				if(strTemp=="*")
				{
					flag=true;
					break;
				}else
				{
					var reCat2 =/\*/;
					var arrTmp = strTemp.split(reCat2);	
					var strPattern ="";					
					for(var j=0;j<arrTmp.length;j++)
					{
						if(arrTmp[j]=="")
						{
							if(j==0){ strPattern+= "\\w";}
							else if(j==arrTmp.length-1)
							{
								strPattern+= "";
							}else
							{
								strPattern+= "\\w+";
							}
							
						}else
						{
							if(j==0)
							{
								strPattern+= "\\"+arrTmp[j]+"\\w+"; 
							}else if(j==arrTmp.length-1)
							{
								strPattern+= "\\"+arrTmp[j]; 
							}else
							{
								strPattern+= "["+arrTmp[j]+"]\\w+"; 
							}
							
						}
					}
					eval("var reCat3=/"+strPattern+"/;");	//match				
					if(reCat3.test(filename)==true)
					{
						flag=true;
						break;
					}
					/*
					var reCat4 =/\inn_l\w+[s]\w+\.php/;
					alert(reCat4.test(filename));*/
					
				}
			}			
		}
		 
        if(flag==false)
		{
			 $.getJSON(url+"cache/hf/headet.json?a="+Math.random(), function(data){
				 if(data.text){
					 $("#headet_info").show();
					 $("#headet_info").html(unescape(data.text));
				 }else{
					 $("#headet_info").hide();	 
				 }
			});
			$.getJSON(url+"cache/hf/footet.json?a="+Math.random(), function(data){
			  $("#footet_info").html(unescape(data.text));
			  
			});
		}
	});
}