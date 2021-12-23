<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
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
		<script src="assets/js/typeahead-bs2.min.js"></script>   
        <script src="js/lrtk.js" type="text/javascript" ></script>		
		<script src="assets/js/jquery.dataTables.min.js"></script>
		<script src="assets/js/jquery.dataTables.bootstrap.js"></script>
        <script src="assets/layer/layer.js" type="text/javascript" ></script>          
        <script type="text/javascript" src="Widget/swfupload/swfupload.js"></script>
        <script type="text/javascript" src="Widget/swfupload/swfupload.queue.js"></script>
        <script type="text/javascript" src="Widget/swfupload/swfupload.speed.js"></script>
        <script type="text/javascript" src="Widget/swfupload/handlers.js"></script>
<title>å¹¿åç®¡ç</title>
</head>

<body>
<div class=" clearfix" id="advertising">
       <div id="scrollsidebar" class="left_Treeview">
    <div class="show_btn" id="rightArrow"><span></span></div>
    <div class="widget-box side_content" >
    <div class="side_title"><a title="éè" class="close_btn"><span></span></a></div>
     <div class="side_list">
      <div class="widget-header header-color-green2">
          <h4 class="lighter smaller">å¹¿åå¾åç±»</h4>
      </div>
      <div class="widget-body">
         <ul class="b_P_Sort_list">
             <li><i class="orange  fa fa-user-secret"></i><a href="#">å¨é¨(235)</a></li>
             <li><i class="fa fa-image pink "></i> <a href="#">é¦é¡µè½®æ­å¹¿åå¤§(5)</a></li>
             <li> <i class="fa fa-image pink "></i> <a href="#">è½®æ­å¹¿åå°1(3)</a> </li>
             <li> <i class="fa fa-image pink "></i> <a href="#">è½®æ­å¹¿åå°2(3)</a></li>
             <li><i class="fa fa-image pink "></i> <a href="#">åä¸ªå¹¿å(6)</a></li>
         </ul>
  </div>
  </div>
  </div>  
  </div><div class="Ads_list">
   <div class="border clearfix">
       <span class="l_f">
        <a href="javascript:ovid()" id="ads_add" class="btn btn-warning"><i class="fa fa-plus"></i> æ·»å å¹¿å</a>
        <a href="javascript:ovid()" class="btn btn-danger"><i class="fa fa-trash"></i> æ¹éå é¤</a>
       </span>
       <span class="r_f">å±ï¼<b>45</b>æ¡å¹¿å</span>
     </div>
     <div class="Ads_lists">
       <table class="table table-striped table-bordered table-hover" id="sample-table">
		<thead>
		 <tr>
				<th width="25"><label><input type="checkbox" class="ace"><span class="lbl"></span></label></th>
				<th width="80">ID</th>
                <th>æåº</th>
				<th width="100">åç±»</th>
				<th width="220px">å¾ç</th>
				<th width="150px">å°ºå¯¸ï¼å¤§å°ï¼</th>
				<th width="250px">é¾æ¥å°å</th>
				<th width="180px">å å¥æ¶é´</th>
				<th width="70px">ç¶æ</th>                
				<th width="250px">æä½</th>
			</tr>
		</thead>
	<tbody>
      <tr>
       <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
       <td>1</td>
       <td><input name="" type="text"  style=" width:50px" placeholder="1"/></td>
       <td>å¹»ç¯ç</td>
       <td><span class="ad_img"><img src="products/ad.jpg"  width="100%" height="100%"/></span></td>
       <td>1890x1080</td>
       <td><a href="#" target="_blank">http://item.jd.com/10443270082.html</a></td>
       <td>2016-6-29 12:34</td>
       <td class="td-status"><span class="label label-success radius">æ¾ç¤º</span></td>
      <td class="td-manage">
        <a onClick="member_stop(this,'10001')"  href="javascript:;" title="åç¨"  class="btn btn-xs btn-success"><i class="fa fa-check  bigger-120"></i></a>   
        <a title="ç¼è¾" onclick="member_edit('ç¼è¾','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" ><i class="fa fa-edit bigger-120"></i></a>      
        <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-warning" ><i class="fa fa-trash  bigger-120"></i></a>
       </td>
      </tr>
    </tbody>
    </table>
     </div>
 </div>
</div>
<!--æ·»å å¹¿åæ ·å¼-->
<div id="add_ads_style"  style="display:none">
 <div class="add_adverts">
 <ul>
  <li>
  <label class="label_name">æå±åç±»</label>
  <span class="cont_style">
  <select class="form-control" id="form-field-select-1">
    <option value="">éæ©åç±»</option>
    <option value="AL">é¦é¡µå¤§å¹»ç¯ç</option>
    <option value="AK">é¦é¡µå°å¹»ç¯ç</option>
    <option value="AZ">åå¹¿åå¾</option>
    <option value="AR">å¶ä»å¹¿å</option>
    <option value="CA">æ¿åæ ç®å¹¿å</option>
  </select></span>
  </li>
  <li><label class="label_name">å¾çå°ºå¯¸</label><span class="cont_style">
  <input name="é¿" type="text" id="form-field-1" placeholder="0" class="col-xs-10 col-sm-5" style="width:80px">
  <span class="l_f" style="margin-left:10px;">x</span><input name="å®½" type="text" id="form-field-1" placeholder="0" class="col-xs-10 col-sm-5" style="width:80px"></span></li>
  <li><label class="label_name">æ¾ç¤ºæåº</label><span class="cont_style"><input name="æåº" type="text" id="form-field-1" placeholder="0" class="col-xs-10 col-sm-5" style="width:50px"></span></li>
  <li><label class="label_name">é¾æ¥å°å</label><span class="cont_style"><input name="å°å" type="text" id="form-field-1" placeholder="å°å" class="col-xs-10 col-sm-5" style="width:450px"></span></li>
   <li><label class="label_name">ç¶&nbsp;&nbsp;æï¼</label>
   <span class="cont_style">
     &nbsp;&nbsp;<label><input name="form-field-radio1" type="radio" checked="checked" class="ace"><span class="lbl">æ¾ç¤º</span></label>&nbsp;&nbsp;&nbsp;
     <label><input name="form-field-radio1" type="radio" class="ace"><span class="lbl">éè</span></label></span><div class="prompt r_f"></div>
     </li>
     <li><label class="label_name">å¾ç</label><span class="cont_style">
 <div class="demo">
	           <div class="logobox"><div class="resizebox"><img src="images/image.png" width="100px" alt="" height="100px"/></div></div>	
               <div class="logoupload">
                  <div class="btnbox"><a id="uploadBtnHolder" class="uploadbtn" href="javascript:;">ä¸ä¼ æ¿æ¢</a></div>
                  <div style="clear:both;height:0;overflow:hidden;"></div>
                  <div class="progress-box" style="display:none;">
                    <div class="progress-num">ä¸ä¼ è¿åº¦ï¼<b>0%</b></div>
                    <div class="progress-bar"><div style="width:0%;" class="bar-line"></div></div>
                  </div>  <div class="prompt"><p>å¾çå¤§å°å°äº5MB,æ¯æ.jpg;.gif;.png;.jpegæ ¼å¼çå¾ç</p></div>  
              </div>                                
           </div>           
   </span>
  </li>
 
  
 </ul>
 </div>
</div>
</body>
</html>
<script>
//åå§åå®½åº¦ãé«åº¦  
 $(".widget-box").height($(window).height()); 
 $(".Ads_list").width($(window).width()-220);
  //å½ææ¡£çªå£åçæ¹åæ¶ è§¦å  
    $(window).resize(function(){
	$(".widget-box").height($(window).height());
	 $(".Ads_list").width($(window).width()-220);
	});
	$(function() { 
	$("#advertising").fix({
		float : 'left',
		//minStatue : true,
		skin : 'green',	
		durationTime :false,
		stylewidth:'220',
		spacingw:30,//è®¾ç½®éèæ¶çè·ç¦»
	    spacingh:250,//è®¾ç½®æ¾ç¤ºæ¶é´è·
		set_scrollsidebar:'.Ads_style',
		table_menu:'.Ads_list'
	});
});
/*å¹¿åå¾ç-åç¨*/
function member_stop(obj,id){
	layer.confirm('ç¡®è®¤è¦å³é­åï¼',{icon:0,},function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" class="btn btn-xs " onClick="member_start(this,id)" href="javascript:;" title="æ¾ç¤º"><i class="fa fa-close bigger-120"></i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">å·²å³é­</span>');
		$(obj).remove();
		layer.msg('å³é­!',{icon: 5,time:1000});
	});
}
/*å¹¿åå¾ç-å¯ç¨*/
function member_start(obj,id){
	layer.confirm('ç¡®è®¤è¦æ¾ç¤ºåï¼',{icon:0,},function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" class="btn btn-xs btn-success" onClick="member_stop(this,id)" href="javascript:;" title="å³é­"><i class="fa fa-check  bigger-120"></i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">æ¾ç¤º</span>');
		$(obj).remove();
		layer.msg('æ¾ç¤º!',{icon: 6,time:1000});
	});
}
/*å¹¿åå¾ç-å é¤*/
function member_del(obj,id){
	layer.confirm('ç¡®è®¤è¦å é¤åï¼',{icon:0,},function(index){
		$(obj).parents("tr").remove();
		layer.msg('å·²å é¤!',{icon:1,time:1000});
	});
}
/*******æ·»å å¹¿å*********/
 $('#ads_add').on('click', function(){
	  layer.open({
        type: 1,
        title: 'æ·»å å¹¿å',
		maxmin: true, 
		shadeClose: false, //ç¹å»é®ç½©å³é­å±
        area : ['800px' , ''],
        content:$('#add_ads_style'),
		btn:['æäº¤','åæ¶'],
		yes:function(index,layero){	
		 var num=0;
		 var str="";
     $(".add_adverts input[type$='text']").each(function(n){
          if($(this).val()=="")
          {
               
			   layer.alert(str+=""+$(this).attr("name")+"ä¸è½ä¸ºç©ºï¼\r\n",{
                title: 'æç¤ºæ¡',				
				icon:0,								
          }); 
		    num++;
            return false;            
          } 
		 });
		  if(num>0){  return false;}	 	
          else{
			  layer.alert('æ·»å æåï¼',{
               title: 'æç¤ºæ¡',				
			icon:1,		
			  });
			   layer.close(index);	
		  }		  		     				
		}
    });
})
</script>
<script type="text/javascript">
function updateProgress(file) {
	$('.progress-box .progress-bar > div').css('width', parseInt(file.percentUploaded) + '%');
	$('.progress-box .progress-num > b').html(SWFUpload.speed.formatPercent(file.percentUploaded));
	if(parseInt(file.percentUploaded) == 100) {
		// å¦æä¸ä¼ å®æäº
		$('.progress-box').hide();
	}
}

function initProgress() {
	$('.progress-box').show();
	$('.progress-box .progress-bar > div').css('width', '0%');
	$('.progress-box .progress-num > b').html('0%');
}

function successAction(fileInfo) {
	var up_path = fileInfo.path;
	var up_width = fileInfo.width;
	var up_height = fileInfo.height;
	var _up_width,_up_height;
	if(up_width > 120) {
		_up_width = 120;
		_up_height = _up_width*up_height/up_width;
	}
	$(".logobox .resizebox").css({width: _up_width, height: _up_height});
	$(".logobox .resizebox > img").attr('src', up_path);
	$(".logobox .resizebox > img").attr('width', _up_width);
	$(".logobox .resizebox > img").attr('height', _up_height);
}

var swfImageUpload;
$(document).ready(function() {
	var settings = {
		flash_url : "Widget/swfupload/swfupload.swf",
		flash9_url : "Widget/swfupload/swfupload_fp9.swf",
		upload_url: "upload.php",// æ¥åä¸ä¼ çå°å
		file_size_limit : "5MB",// æä»¶å¤§å°éå¶
		file_types : "*.jpg;*.gif;*.png;*.jpeg;",// éå¶æä»¶ç±»å
		file_types_description : "å¾ç",// è¯´æï¼èªå·±å®ä¹
		file_upload_limit : 100,
		file_queue_limit : 0,
		custom_settings : {},
		debug: false,
		// Button settings
		button_image_url: "Widget/swfupload/upload-btn.png",
		button_width: "95",
		button_height: "30 ",
		button_placeholder_id: 'uploadBtnHolder',
		button_window_mode : SWFUpload.WINDOW_MODE.TRANSPARENT,
		button_cursor : SWFUpload.CURSOR.HAND,
		button_action: SWFUpload.BUTTON_ACTION.SELECT_FILE,
		
		moving_average_history_size: 40,
		
		// The event handler functions are defined in handlers.js
		swfupload_preload_handler : preLoad,
		swfupload_load_failed_handler : loadFailed,
		file_queued_handler : fileQueued,
		file_dialog_complete_handler: fileDialogComplete,
		upload_start_handler : function (file) {
			initProgress();
			updateProgress(file);
		},
		upload_progress_handler : function(file, bytesComplete, bytesTotal) {
			updateProgress(file);
		},
		upload_success_handler : function(file, data, response) {
			// ä¸ä¼ æååå¤çå½æ°
			var fileInfo = eval("(" + data + ")");
			successAction(fileInfo);
		},
		upload_error_handler : function(file, errorCode, message) {
			alert('ä¸ä¼ åçäºéè¯¯ï¼');
		},
		file_queue_error_handler : function(file, errorCode, message) {
			if(errorCode == -110) {
				alert('æ¨éæ©çæä»¶å¤ªå¤§äºã');	
			}
		}
	};
	swfImageUpload = new SWFUpload(settings);
});
</script>
<script>
jQuery(function($) {
				var oTable1 = $('#sample-table').dataTable( {
				"aaSorting": [[ 1, "desc" ]],//é»è®¤ç¬¬å ä¸ªæåº
		"bStateSave": true,//ç¶æä¿å­
		"aoColumnDefs": [
		  //{"bVisible": false, "aTargets": [ 3 ]} //æ§å¶åçéèæ¾ç¤º
		  {"orderable":false,"aTargets":[0,2,3,4,5,7,8,]}// å¶å®åä¸åä¸æåº
		] } );
				
				
				$('table th input:checkbox').on('click' , function(){
					var that = this;
					$(this).closest('table').find('tr > td:first-child input:checkbox')
					.each(function(){
						this.checked = that.checked;
						$(this).closest('tr').toggleClass('selected');
					});
						
				});
			
			
				$('[data-rel="tooltip"]').tooltip({placement: tooltip_placement});
				function tooltip_placement(context, source) {
					var $source = $(source);
					var $parent = $source.closest('table')
					var off1 = $parent.offset();
					var w1 = $parent.width();
			
					var off2 = $source.offset();
					var w2 = $source.width();
			
					if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
					return 'left';
				}
			})
</script>
