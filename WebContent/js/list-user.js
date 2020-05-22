$(function(){
	$('#msg').fadeOut(5000);
	$('table a').click(function(){
		if(!confirm('确认要 删除/修改 该记录吗？')){
			return false;		
		}
	});
});