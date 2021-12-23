<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Cache-Control" content="no-siteapp" />
 <link href="Manager/UP-Index/assets/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="Manager/UP-Index/css/style.css"/>       
        <link href="Manager/UP-Index/assets/css/codemirror.css" rel="stylesheet">
        <link rel="stylesheet" href="Manager/UP-Index/assets/css/ace.min.css" />
        <link rel="stylesheet" href="Manager/UP-Index/font/css/font-awesome.min.css" />
        <!--[if lte IE 8]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->
		<script src="Manager/UP-Index/js/jquery-1.9.1.min.js"></script>
        <script src="Manager/UP-Index/assets/js/bootstrap.min.js"></script>
		<script src="Manager/UP-Index/assets/js/typeahead-bs2.min.js"></script> 
        <script src="Manager/UP-Index/js/H-ui.js" type="text/javascript"></script>          	
        <script src="Manager/UP-Index/assets/layer/layer.js" type="text/javascript" ></script>          
<title>退款详细</title>
</head>

<body>
<div class="margin clearfix">
 <div class="Refund_detailed">
    <div class="Numbering">退款单编号:<b>NJHDXJ${rd}</b></div>
    <div class="detailed_style">
     <!--退款信息-->
     <div class="Receiver_style">
     <div class="title_name">退款信息</div>
     <div class="Info_style clearfix">
        <div class="col-xs-3">  
         <label class="label_name" for="form-field-2"> 退款人姓名:</label>
         <div class="o_content">${f.dg.u.userName}</div>
        </div>
        <div class="col-xs-3">  
         <label class="label_name" for="form-field-2"> 退款人电话： </label>
         <div class="o_content">${f.dg.u.tel}</div>
        </div>
         <div class="col-xs-3">  
         <label class="label_name" for="form-field-2"> 退款数量：</label>
         <div class="o_content">${f.qty}件</div>
        </div>
         <div class="col-xs-3">  
         <label class="label_name" for="form-field-2"> 快递名称：</label>
         <div class="o_content">${f.dg.e.expres}</div>
        </div>
        <div class="col-xs-3">  
         <label class="label_name" for="form-field-2"> 退款金额：</label>
         <div class="o_content">${f.price}元</div>
        </div>
        <div class="col-xs-3">  
         <label class="label_name" for="form-field-2"> 退款日期：</label>
         <div class="o_content">${f.tktime}</div>
        </div>
        <div class="col-xs-3">  
         <label class="label_name" for="form-field-2"> 状态:</label>
         <div class="o_content">${f.tktid==1?'退款中':'已退款'}</div>
        </div>
     </div>
    </div>
    <div class="Receiver_style">
    <div class="title_name">退款说明</div>
    <div class="reund_content">
      <lable>${f.info}</lable>
    </div>
    </div>
    
    <!--产品信息-->
    <div class="product_style">
    <div class="title_name">产品信息</div>
    <div class="Info_style clearfix">
      <div class="product_info clearfix">
      <a href="#" class="img_link"><img src="Manager/Food/${f.dg.fo.imageName}"></a>
      <span>
      <a href="#" class="name_link">${f.dg.fo.info}</a>
      <br></br>
      <p>编号：${f.id}</p>
      <p>商品：${f.dg.fo.name}</p>
      <p>数量：${f.qty}件</p>
      <p>价格：<b class="price"><i>￥</i>${f.price}</b></p>  
      <p class="">${f.tktid==1?'退款中':'已退款'}</p>   
      </span>
      </div>
    </div>
    </div>
    </div>    
 </div>
</div>
</body>
</html>
