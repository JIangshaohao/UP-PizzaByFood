<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HTML5跑酷网页小游戏代码 - 站长素材</title>
<link rel="stylesheet" href="css/kandi.css" type="text/css" media="screen">
</head>
<body>

<h3>按空格键跳跃</h3>
<div class="wrapper">

<canvas id="canvas" width="800" height="480">
  <p>You're browser does not support the required functionality to play this game.</p>
  <p>Please update to a modern browser such as <a href="www.google.com/chrome/‎">Google Chrome</a> to play.</p>
</canvas>
<div id="game-over">
  <a href="javascript:void(0);" class="restart" id="restart">再试一次？</a>
</div>
</div>

<script type="text/javascript" src="js/kandi.js"></script>
</body>
</html>
