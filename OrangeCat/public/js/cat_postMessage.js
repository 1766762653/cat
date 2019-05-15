$("#sub_box").click(function () {
  // 获取标题
  var title=$("#cheacklen").val();
  // 获取帖子描述
  var des=$("#cheadesc").val();
  // 获取猫咪品种
  var breed = $("#other_info .Unified_style .left_box [name=cat_Varieties] option:selected").text();
  // 获取联系人
  var linkman=$("#Contacts").val();
  // 获取猫咪性别
  var sex=$("#other_info .Unified_style .left_box [name=cat_sex] option:selected").text();
  // 获取所在地区
  var area=$("#other_info .Unified_style .right_box [name=cat_region_Province] option:selected").text();
  // 获取猫咪年龄
  var age=$("#other_info .Unified_style .left_box [name=cat_age] option:selected").text();
  // 获取联系电话
  var tel=$("#phonenum").val();
  // 获取疫苗情况
  var vaccine=$("#other_info .Unified_style .left_box [name=cat_vaccine] option:selected").text();
  // 获取联系QQ
  var qq=$("#Contact_QQ").val();
  // 获取驱虫情况
  var qc=$("#other_info .Unified_style .left_box [name=cat_Insect] option:selected").text();
  // 获取微信账号
  var wechat=$("#Contact_WeChat").val();
  // 获取能否视频
  var isvideo=$("#other_info .Unified_style .left_box [name=cat_video] option:selected").text();
  // 获取待售数量
  var sale=$("#salenum1").val();
  // 获取异地运费
  var freight=$("#other_info .Unified_style .left_box [name=cat_Remote_freight] option:selected").text();
  // 获取猫咪价格
  var price=$("#pricenum1").val();
  // 获取是否纯种
  var purebred=$("#other_info .Unified_style .left_box [name=cat_ispurebred] option:selected").text();
  // 获取保障服务
  var ensure=$("#service").val();
  $.ajax({
    url:"/postMessage",
    type:"post",
    data:{
      'title':title,
      'des':des,
      'breed':breed,
      'linkman':linkman,
      'sex':sex,
      'area':area,
      'age':age,
      'tel':tel,
      'vaccine':vaccine,
      'QQ':qq,
      'qc':qc,
      'wechat':wechat,
      'isvideo':isvideo,
      'sale':sale,
      'freight':freight,
      'price':price,
      'purebred':purebred,
      'ensure':ensure
    },
    dataType:"json",
    success: function(result) {
      alert(result.msg);
      window.location.href="/cat_postMessage.html";
    }
  })
})