var $header = `
<div class="index_top">
  <div class="index_lg">
    <div class="top_left">
      <span>当前所在城市：</span>
    </div>
    <div class="hover_display_item" data-tagger="dropdown">
      <span>全国</span>
      <div class="hover_display_div">
        <div>
          <a href="javascript:;">安徽</a>
          <a href="javascript:;">广东</a>
          <a href="javascript:;">河南</a>
          <a href="javascript:;">江西</a>
          <a href="javascript:;">上海</a>
          <a href="javascript:;">天津</a>
          <a href="javascript:;">云南</a>
          <a href="javascript:;">澳门</a>
          <a href="javascript:;">广西</a>
          <a href="javascript:;">河北</a>
          <a href="javascript:;">吉林</a>
          <a href="javascript:;">山东</a>
          <a href="javascript:;">台湾</a>
          <a href="javascript:;">浙江</a>
          <a href="javascript:;">北京</a>
          <a href="javascript:;">贵州</a>
          <a href="javascript:;">湖南</a>
          <a href="javascript:;">辽宁</a>
          <a href="javascript:;">四川</a>
          <a href="javascript:;">西藏</a>
          <a href="javascript:;">黑龙江</a>
          <a href="javascript:;">重庆</a>
          <a href="javascript:;">甘肃</a>
          <a href="javascript:;">海南</a>
          <a href="javascript:;">宁夏</a>
          <a href="javascript:;">陕西</a>
          <a href="javascript:;">新疆</a>
          <a href="javascript:;">内蒙古</a>
          <a href="javascript:;">福建</a>
          <a href="javascript:;">湖北</a>
          <a href="javascript:;">江苏</a>
          <a href="javascript:;">青海</a>
          <a href="javascript:;">山西</a>
          <a href="javascript:;">香港</a>
        </div>
      </div>
    </div>
    <div class="top_right">
      <span>您好，欢迎来到猫咪交易网</span>
      <a href="http://127.0.0.1:3000/Login.html">登录</a>
      <a href="http://127.0.0.1:3000/register.html">免费注册</a>
    </div>
  </div>
  </div>
  <!-- 导航栏 -->
  <div class="nav">
  <div class="nav_left">
    <a href="javascript:;">首页
      <div class="bg_color">
        <span></span>
      </div>
    </a>
    <a href="javascript:;">买猫卖猫
      <div class="bg_color">
        <span></span>
      </div>
    </a>
    <a href="javascript:;">猫咪咨询
      <div class="bg_color">
        <span></span>
      </div>
    </a>
    <a href="javascript:;">选猫知识
      <div class="bg_color">
        <span></span>
      </div>
    </a>
    <a href="javascript:;">猫咪品种
      <div class="bg_color">
        <span></span>
      </div>
    </a>
  </div>
  <div class="nav_right">
    <a href="javascript:;">加入我们
      <div class="bg_color">
        <span></span>
      </div>
    </a>
    <a href="javascript:;">联系我们
      <div class="bg_color">
        <span></span>
      </div>
    </a>
    <a href="javascript:;">关于我们
      <div class="bg_color">
        <span></span>
      </div>
    </a>
    <a href="javascript:;">发布信息
      <div class="bg_color">
        <span></span>
      </div>
    </a>
  </div>
  <div class="logo">
    <div class="logo_k">
      <div>
        <div>
          <a href="javascript:;">
            <img src="./images/logo.png" alt="猫咪网" title="猫咪网">
          </a>
        </div>
      </div>
    </div>
  </div>
</div>`;
$("#header").html($header);
var $footer = `
<div class="logo">
  <div class="logo_k">
    <div>
      <a href="javacript:;">
        <img src="./images/logo.png" alt="">
      </a>
    </div>
  </div>
</div>
<div class="link">
  <a href="javacript:;">关于我们</a>|
  <a href="javacript:;">联系我们</a>|
  <a href="javacript:;">友情链接</a>|
  <a href="javacript:;">广告服务</a>|
  <a href="javacript:;">版权说明</a>|
  <a href="javacript:;">最近更新</a>|
  <a href="javacript:;">网站地图</a>|
  <a href="javacript:;">意见反馈</a>
</div>
<div class="banquan">
  <div class="bq_content">
    版权所有：猫咪交易网 www.maomijiaoyi.com 友情链接互换:qq 22590175
  </div>
</div>
<div class="banquan">
  <div class="bq_content">
    【免责声明：本站所有猫猫交易信息内容系用户自行发布，其真实性、合法性由发布人负责，本站不提供任何保证，亦不承担任何法律责任！】
  </div>
</div>
<div class="banquan">
  <div class="bq_content">
    <img src="./images/foot_link3.png" alt="">
    沪ICP备18022709号-1
  </div>
</div>
`;
$("#footer").html($footer);
$(function () {
  $("[data-tagger]").hover(
    function () {
      $(this).css("background-image", "url('./images/location_top.png')");
      $(this).children(':last').show();
    },
    function () {
      $(this).css("background-image", "url('./images/location_bottom.png')");
      $(this).children(':last').hide();
    }
  );
  $("#header .nav a").hover(
    function () {
      $(this).css("color", "#f57000")
    },
    function () {
      $(this).css("color", "")
    }
  );
  // 用户注册
  var _submitBtn = $('#submit_form');
  _submitBtn.click(function () {
    if (_submitBtn.attr('status') == '1') {
      _submitBtn.attr('status', '0');
      var cheackusername = new RegExp(/^[^\s'"\.,，。!@#$%*&]+$/);
      var username = document.getElementById("username").value;
      if (username.length <= 0) {
        document.getElementById("nameshowerr").innerHTML = '用户名不能为空';
        _submitBtn.attr('status', '1');
        return false;
      }
      if (username.length < 3) {
        document.getElementById("nameshowerr").innerHTML = '用户名长度不足';
        _submitBtn.attr('status', '1');
        return false;
      }
      if (username.length > 12) {
        document.getElementById("nameshowerr").innerHTML = '用户名长度超出';
        _submitBtn.attr('status', '1');
        return false;
      }
      if (!(cheackusername.test(username))) {
        document.getElementById("nameshowerr").innerHTML = '用户名错误';
        _submitBtn.attr('status', '1');
        return false;
      }
      var password = document.getElementById("password").value;
      var cheackpassword = new RegExp(/^[a-zA-Z]\w{5,15}$/);
      if (password.length <= 0) {
        document.getElementById("pwdshowerr").innerHTML = '密码不能为空';
        _submitBtn.attr('status', '1');
        return false;
      }
      if (password.length < 6) {
        document.getElementById("pwdshowerr").innerHTML = '密码长度不足';
        _submitBtn.attr('status', '1');
        return false;
      }
      if (password.length > 16) {
        document.getElementById("pwdshowerr").innerHTML = '密码长度超出';
        _submitBtn.attr('status', '1');
        return false;
      }
      if (!(cheackpassword.test(password))) {
        document.getElementById("pwdshowerr").innerHTML = '密码不正确';
        _submitBtn.attr('status', '1');
        return false;
      }
      var confirmpassword = document.getElementById("confirmpassword").value;
      if (confirmpassword.length != password.length) {
        document.getElementById("confirmpassworderr").innerHTML = '密码不一致';
        _submitBtn.attr('status', '1');
        return false;
      }
      var cheackPhonenumber = document.getElementById("Phonenumber").value;
      if (cheackPhonenumber.length <= 0) {
        document.getElementById("phoneshowerr").innerHTML = '电话为空';
        _submitBtn.attr('status', '1');
        return false;
      }
      var cheack2 = new RegExp(/^((\d{3,4})|\d{3,4}-)?\d{7,8}$/);
      if (!(cheack2.test(cheackPhonenumber))) {
        document.getElementById("phoneshowerr").innerHTML = '电话不正确';
        _submitBtn.attr('status', '1');
        return false;
      }
      var Emailcheack = document.getElementById("Email").value;
      if (Emailcheack.length <= 0) {
        document.getElementById("emashowerr").innerHTML = '邮箱为空';
        _submitBtn.attr('status', '1');
        return false;
      }
      var checkEmail = new RegExp(/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/);
      if (!(checkEmail.test(Emailcheack))) {
        document.getElementById("emashowerr").innerHTML = '邮箱不正确';
        _submitBtn.attr('status', '1');
        return false;
      }
    }
    $.ajax({
      url: '/Register',
      type: 'post',
      data: {
        'uname': $('#username').val(),
        'upwd': $('#password').val(),
        'phone': $('#Phonenumber').val(),
        'email': $('#Email').val(),
      },
      // async: false, //修改ajax为同步
      dataType: 'json',
      success: function (result) {
        confirm(result.msg);
        // 跳转到登录页面
        $(function () {
          window.location.href = "/Login.html";
        })
      }
    })
  })
})
