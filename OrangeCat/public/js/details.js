$(function () {
  // 商品详情
  var did = location.search.split("=")[1];
  // console.log(did);
  $.ajax({
    url: "/Details",
    type: "get",
    data: { did },
    dataType: "json",
    success: function (result) {
      console.log(result);
      var html = `
       <div class="big_img">
       <img src="${result[0].img_url1}" alt="">
     </div>
     <div class="small_img">
       <div>
         <img src="${result[0].img_url1}" alt="">
       </div>
       <div>
         <img src="${result[0].img_url2}" alt="">
       </div>
       <div>
         <img src="${result[0].img_url3}" alt="">
       </div>
       <div>
         <img src="${result[0].img_url4}" alt="">
       </div>
     </div>
       `;
      $(".detail_tu").html(html);
      // 鼠标悬停切换图片
      $('#content .detail>.left>.detail_tu .small_img>div>img').hover(function () {
        $('#content .detail>.left>.detail_tu .big_img>img').attr('src', $(this).attr('src'));
      });


      var title = `
      <div class="title">
        ${result[0].title}
      </div>
    <div class="info1">
      <div>
        <span>价格</span>
    <span class="red size_24">${result[0].price}<span>元/只</span></span>
        <span>浏览次数:</span>
        <span class="red">102</span>
      </div>
      <div>
        <span class="red">卖家承诺: 承诺包退换</span>
      </div>
    </div>
    <div class="info2">
      <div>
        <div>在售只数</div>
        <div class="red">${result[0].onsale}只</div>
      </div>
      <div>
        <div>年龄</div>
        <div class="red">${result[0].age}</div>
      </div>
      <div>
        <div>品种</div>
        <div class="red">${result[0].breed}</div>
      </div>
      <div>
        <div>预防</div>
        <div class="red">${result[0].vaccine}</div>
      </div>
    </div>
    <div class="user_info">
      <div>
        <div class="c999">联系人　:</div>
        <div class="c333">李小姐</div>
      </div>
      <div>
        <div class="c999">联系电话:</div>
        <div class="c333">13817143121</div>
      </div>
      <div>
        <div class="c999">异地运费:</div>
        <div class="c333">
          包运费！签协议！
        </div>
      </div>
    </div>
    <div class="button">
      <div class="tel">
        <img src="images/details/gougou_tel.jpg">
        <span>电话咨询</span>
      </div>
      <div class="weixin">
        <img src="images/details/gougou_weixin.jpg">
        <span>微信咨询</span>
      </div>
    </div>
      `;
      $(".detail_text").html(title);

      // 点击弹出框
      $('.heimu .kuang>img').hover(function () {
        $(this).attr('src', 'images/details/colse1.png');
      }, function () {
        $(this).attr('src', 'images/details/colse1.png');
      });

      $('.heimu').css('height', $(window).height());
      $(window).resize(function () {
        $('.heimu').css('height', $(window).height());
      });
      //电话点击
      $('#content .detail>.left>.detail_text .button .tel').click(function () {
        $('.heimu.tel').css('display', 'block');
      });
      // 微信点击
      $('#content .detail>.left>.detail_text .button .weixin').click(function () {
        $('.heimu.weixin').css('display', 'block');
      });
      $('.heimu .kuang>img').click(function () {
        $('.heimu').css('display', 'none');
      });
      // ================== 结束 ===================
    }
  })

})
