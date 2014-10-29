$(function(){
	var GLOABLE={};
	GLOABLE.listNum;
	//myarticles--  manage-type
	$.ajax({
		url:"http://localhost:8080//MyStock/files/myfiles-test/list.txt",
		success:function(msg){		
			console.log(msg);
			var list=eval("("+msg+")");
			$.each(list,function(key,val){
				var $optionObj=$('<option></option>').text(val);
				$optionObj.appendTo($(".myarticles_list_typefun").children("select").eq(0));
			})
		},
		error:function(){
			console.log("error");
		}
	});
	
	//获取总的文章数目
	$.ajax({
		url:"http://localhost:8080//MyStock/files/myfiles-test/list-number.txt",
		success:function(msg){			
			GLOABLE.listNum=parseInt(msg);
		},
		error:function(){
			console.log("error");
		}
	});
	/*//myarticles--  manage-分页
	var optInit = {items_per_page:20,
				   num_display_entries:5,
			       prev_text:上一页,
			       next_text:下一页};
    $("#pagination").pagination(100, optInit);*/
});