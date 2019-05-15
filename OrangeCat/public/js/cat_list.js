$(function () {
  $(".classify .small_class a").hover(
    function () {
      $(this).css("color", "#f5700");
    },
    function () {
      $(this).css("color", "");
    }
  );
  $(".classify .small_class a").click(
    function () {
      var $btn = $(this);
      $($btn).addClass("hover").siblings($btn).removeClass("hover");

    },
  );

  // 分页显示
  loadMore();
  var $pageNo = 1;
  $(".center_1220 .maigou_maigou_page .next").click(function () {
    $pageNo++;
    // console.log($pageNo);
    loadMore($pageNo);
  })
  $(".center_1220 .maigou_maigou_page .prev").click(function () {
    if($pageNo>1){
      $pageNo--;
      loadMore($pageNo);
    }else{
      loadMore($pageNo);
      alert("已经是第一页啦！");
    }
  })
  function loadMore($pageNo = 1) {
    $.ajax({
      url: "/CatInfo",
      type: "get",
      data: { pageNo: $pageNo },
      dataType: "json",
      success: function (result) {
        console.log(result);
        var html = ``;
        for (var item of result) {
          html += `
          <a href="javascript:;">
        <div class="img">
          <img src="${item.img_url}">
        </div>
        <div class="cat_name">
          ${item.introduce}
        </div>
        <div class="price_area">
          <div class="price">
            <span>价格：</span>
            <span>${item.price}/只</span>
          </div>
          <div class="area">
            <span>地区：</span>
            <span>${item.city}</span>
          </div>
        </div>
        <div class="sj_vip">
          <div class="sj_name">
            <span>${item.sname}</span>
            <img src="./images/maomi_vip.jpg" alt="">
          </div>
          <div class="sale">
            <span>热度</span>
            <span>43</span>
          </div>
        </div>
      </a>
          `;
        }
        $(".content").html(html);
        if (result.length == "") {
          $pageNo--;
          loadMore($pageNo);
          alert("已经是最后一页啦！");
        }
      }
    })
  }
})
