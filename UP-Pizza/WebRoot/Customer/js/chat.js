$('.conLeft li').on('click', function() {
	$(this).addClass('bg').siblings().removeClass('bg');
	var intername = $(this).children('.liRight').children('.intername').text();
	$('.headName').text(intername);
	$('.newsList').html('');
})
$('.sendBtn').on('click', function() {
	var news = $('#dope').val();
	if (news == '') {
		alert('不能为空');
	} else {
		$('#dope').val('');
		var str = '';
		str += '<li>' +
			'<div class="nesHead"><img src="QQ_img/6.jpg"/></div>' +
			'<div class="news"><img class="jiao" src="QQ_img/20170926103645_03_02.jpg">' + news + '</div>' +
			'</li>';
		$('.newsList').append(str);
		setTimeout(answers, 1000);
		$('.conLeft').find('li.bg').children('.liRight').children('.infor').text(news);
		$('.RightCont').scrollTop($('.RightCont')[0].scrollHeight);
	}

})

//拼接！！！看上课实例！
function answers() {
	var arr = ["你好", "呵呵！", "项目答辩结束直接通宵！", "CSGO!GO!GO!", "今晚打球", "Hello,World!永远的神！", "spring天下无敌，实习工资850", "WEB前端永远走天下！！！哈哈哈哈哈哈！~",
		"项目答辩要加油啊！！！", "世人已看破我", "CSGO起！", "突然想开个车", "今天请你吃饭"
	];
	var aa = Math.floor((Math.random() * arr.length));
	var answer = '';
	answer += '<li>' +
		'<div class="answerHead"><img src="QQ_img/tou.jpg"/></div>' +
		'<div class="answers"><img class="jiao" src="QQ_img/jiao.jpg">' + arr[aa] + '</div>' +
		'</li>';
	$('.newsList').append(answer);
	$('.RightCont').scrollTop($('.RightCont')[0].scrollHeight);
}
$('.ExP').on('mouseenter', function() {
	$('.emjon').show();
})
$('.emjon').on('mouseleave', function() {
	$('.emjon').hide();
})
$('.emjon li').on('click', function() {
	var imgSrc = $(this).children('img').attr('src');
	var str = "";
	str += '<li>' +
		'<div class="nesHead"><img src="QQ_img/6.jpg"/></div>' +
		'<div class="news"><img class="jiao" src="QQ_img/20170926103645_03_02.jpg"><img class="Expr" src="' + imgSrc +
		'"></div>' +
		'</li>';
	$('.newsList').append(str);
	$('.emjon').hide();
	$('.RightCont').scrollTop($('.RightCont')[0].scrollHeight);
})
