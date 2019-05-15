$(function () {
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
