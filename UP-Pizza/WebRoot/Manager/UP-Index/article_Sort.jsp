<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Cache-Control" content="no-siteapp" />
 <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="css/style.css"/>       
        <link href="assets/css/codemirror.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/ace.min.css" />
        <link rel="stylesheet" href="font/css/font-awesome.min.css" />
        <!--[if lte IE 8]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->
		<script src="js/jquery-1.9.1.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/js/typeahead-bs2.min.js"></script>           	
		<script src="assets/js/jquery.dataTables.min.js"></script>
		<script src="assets/js/jquery.dataTables.bootstrap.js"></script>
        <script src="assets/layer/layer.js" type="text/javascript" ></script>          
        <script src="js/H-ui.js" type="text/javascript"></script>
        <script src="js/displayPart.js" type="text/javascript"></script>
<title>文章分类</title>
</head>

<body>
<div class="margin clearfix">
 <div class="sort_style">
  <div class="border clearfix">
       <span class="l_f">
        <a href="javascript:ovid()"id="add_page" class="btn btn-warning" onclick="add_article_sort()"><i class="fa fa-plus"></i> 添加公告</a>
        <a href="javascript:ovid()" class="btn btn-danger"><i class="fa fa-trash"></i> 批量删除</a>
       </span>
       <span class="r_f">共：<b>5</b>分类</span>
     </div>
     <!--分类类表-->
     <div class="article_sort_list">
         <table class="table table-striped table-bordered table-hover" id="sample-table">
       <thead>
		 <tr>
				<th width="25"><label><input type="checkbox" class="ace"><span class="lbl"></span></label></th>
				<th width="80px">ID</th>
                <th width="80px">排序</th>
				<th width="150px">分类名称</th>
				<th width="">简介</th>
				<th width="150px">添加时间</th>
                <th width="80px">状态</th>                
				<th width="150px">操作</th>
			</tr>
		</thead>
        <tbody>
         <tr>
          <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
          <td>1234</td>
          <td>1</td>
          <td>帮助中心</td>
          <td class="displayPart" displayLength="60">帮助中心帮助中心帮助中心帮助中心帮助中心帮助中心帮助中心帮助中心帮助中心帮助中心</td>
          <td>2016-7-25</td>
          <td>启用</td>          
          <td class="td-manage">   
           <a title="编辑" onclick="member_edit('510')" href="javascript:;"  class="btn btn-xs btn-info" ><i class="fa fa-edit bigger-120"></i></a>      
           <a title="删除" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-danger" ><i class="fa fa-trash  bigger-120"></i></a>
          </td>
         </tr>
          <tr>
          <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
          <td>1234</td>
          <td>1</td>
          <td>帮助中心</td>
          <td class="displayPart" displayLength="60">帮助中心帮助中心帮助中心帮助中心帮助中心帮助中心帮助中心帮助中心帮助中心帮助中心</td>
          <td>2016-7-25</td>
          <td>启用</td>          
          <td class="td-manage">   
           <a title="编辑" onclick="member_edit('510')" href="javascript:;"  class="btn btn-xs btn-info" ><i class="fa fa-edit bigger-120"></i></a>      
           <a title="删除" href="javascript:;"  onclick="member_del(this,'3')" class="btn btn-xs btn-danger" ><i class="fa fa-trash  bigger-120"></i></a>
          </td>
         </tr>
          <tr>
          <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
          <td>1234</td>
          <td>1</td>
          <td>帮助中心</td>
          <td class="displayPart" displayLength="60">帮助中心帮助中心帮助中心帮助中心帮助中心帮助中心帮助中心帮助中心帮助中心帮助中心</td>
          <td>2016-7-25</td>
          <td>启用</td>          
          <td class="td-manage">   
           <a title="编辑" onclick="member_edit('510')" href="javascript:;"  class="btn btn-xs btn-info" ><i class="fa fa-edit bigger-120"></i></a>      
           <a title="删除" href="javascript:;"  onclick="member_del(this,'4')" class="btn btn-xs btn-danger" ><i class="fa fa-trash  bigger-120"></i></a>
          </td>
         </tr>
          <tr>
          <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
          <td>1234</td>
          <td>1</td>
          <td>帮助中心</td>
          <td class="displayPart" displayLength="60">帮助中心帮助中心帮助中心帮助中心帮助中心帮助中心帮助中心帮助中心帮助中心帮助中心</td>
          <td>2016-7-25</td>
          <td>启用</td>          
          <td class="td-manage">   
           <a title="编辑" onclick="member_edit('510')" href="javascript:;"  class="btn btn-xs btn-info" ><i class="fa fa-edit bigger-120"></i></a>      
           <a title="删除" href="javascript:;"  onclick="member_del(this,'5')" class="btn btn-xs btn-danger" ><i class="fa fa-trash  bigger-120"></i></a>
          </td>
         </tr>
        </tbody>
        </table>
     </div>
 </div>
</div>
<!--添加文章分类图层-->
<div id="addsort_style" style="display:none" class="article_style">
 <div class="add_content" id="form-article-add">
    <ul>
     <li class="clearfix"><label class="label_name">发送到</label>
     <select class="selectchange">
     	<option value="1">全部用户</option>
     	<option value="0">单个用户</option>
     </select>
     </li>
     <li class="clearfix Mandatory"><label class="label_name"><i>*</i>用户编号</label>
     <span class="formControls w_txt"><input readonly name="分类名称" type="text" id="form-field-1" class="col-xs-7 col-sm-5 "></span>
     </li>
     <li class="clearfix"><label class="label_name">信息内容</label>
     <span class="formControls w_txt"><textarea name="权限描述" class="form-control" id="form_textarea" placeholder="" ></textarea><!-- <span  style=" margin-left:10px;">剩余字数：<span id="sy" style="color:Red;">200</span>字</span></span> -->
     </li>
    </ul>
 </div>
</div>
</body>
</html>
<script>
$(function() {
	$(".selectchange").change(function(){
		if($(this).val()==1){
			$("#form-field-1").attr("readonly","readonly");
			$("#form-field-1").val("");
		}else{
			$("#form-field-1").removeAttr("readonly");
		}
	});
	
	function up_customer_exstis(){
	
		var flag = true;
		if($(".selectchange").val()==0){
		if($(".selectchange").val()==0&&$("#form-field-1").val()==""){
			layer.msg("请填写用户编号");
			flag = false;
			return false;
		}
		$.ajax({url:"/UP-Pizza/CustomerWcExitsServlet",type:"post",async:false,data:{"id":$("#form-field-1").val()},dataType:"text",success:callback});
		function callback(result){
			if(result=="true"){
				layer.msg("用户编号不存在!");
				flag = false;
			}
		}
		}
		return flag;
	}
	
	$("#form-field-1").blur(up_customer_exstis);
	
		
		
		
	
	$(document).on("click",".layui-layer-btn0",function(){
		
			if(up_customer_exstis()){
			
				if($(".form-control").val()==""){
					layer.msg("请填写要发布的信息");
					return;
				}
				var kid = $(".selectchange").val();
				var uid = $("#form-field-1").val();	
				if(kid == 1){
					uid = 0;
				}
				var info = $(".form-control").val();
				$.ajax({url:"/UP-Pizza/CustomerWcAdd_userordrServlet",type:"post",data:{"kid":kid,"uid":uid,"info":info},dataType:"text",success:callback});
				function callback(flag){
					if(flag == "true"){
						layer.msg("公告已发布");
					}
				}
		} 
	});


  var oTable1 = $('#sample-table').dataTable( {
  "aaSorting": [[ 1, "desc" ]],//默认第几个排序
  "bStateSave": true,//状态保存
  "aoColumnDefs": [
	//{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
	{"orderable":false,"aTargets":[0,2,3,4,6,7,]}// 制定列不参与排序
  ]});
		  $('table th input:checkbox').on('click' , function(){
			  var that = this;
			  $(this).closest('table').find('tr > td:first-child input:checkbox')
			  .each(function(){
				 this.checked = that.checked;
				 $(this).closest('tr').toggleClass('selected');
	 });						
  });
})
/**添加分类**/
 function add_article_sort(index){	 
	 layer.open({
        type: 1,
        title: '添加公告',
		maxmin: true, 
		shadeClose: true, //点击遮罩关闭层
        area : ['600px' , ''],
        content:$('#addsort_style'),
		btn:['提交','取消'],
		yes:function(index,layero){
			 var num=0;
		 var str="";
     }
	 })	 	 
	 
}
/*文章-删除*/
function member_del(obj,id){
	layer.confirm('确认要删除吗？',{icon:0,},function(index){
		$(obj).parents("tr").remove();
		layer.msg('已删除!',{icon:1,time:1000});
	});
}
</script>
