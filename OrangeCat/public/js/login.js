$(function () {
  // 用户登录
  var _submitBtn = $('#submit_form');
  _submitBtn.click(function () {
    if (_submitBtn.attr('status') == '1') {
      _submitBtn.attr('status', '0');
      var u_name = $('#username').val();
      var p_pwd = $('#password').val();
      if (u_name.length <= 0) {
        $("#name_err").html('用户名为空');
        _submitBtn.attr('status', '1');
        return false;
      }
      if (p_pwd.length <= 0) {
        $("#pwd_err").html('密码为空');
        _submitBtn.attr('status', '1');
        return false;
      }
    }
    $.ajax({
      url: "/Login",
      type: "post",
      data: {
        uname: $("#username").val(),
        upwd: $("#password").val(),
      },
      // async: false, //修改ajax为同步
      dataType: "json",
      success: function (result) {
        alert(result.msg);
        window.location.href="/index.html";
      }
    })
  })
});