$(function () {
  loadMore($pageNo);
  var $pageNo = 1;
  $("#content .zixun_content .maigou_maigou_page .next").click(function(){
    $pageNo++;
    // console.log($pageNo);
    loadMore($pageNo);
  })
  $("#content .zixun_content .maigou_maigou_page .prev").click(function(){
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
      url: "/CatNews",
      type: "get",
      data: { pageNo: $pageNo },
      dataType: "json",
      success: function (result) {
        var html = ``;
        for (var item of result) {
          html += `
          <a class="zixun_item" target="_blank" href="javascript:;">
          <div class="zixun_img">
            <!-- 匹配内容中的图片 -->
            <img src="${item.img_url}"> </div>
          <div class="zixun_content">
            <div class="zixun_title">
              ${item.title} 
            </div>
            <div class="zixun_time">
              ${item.ctime} <span>浏览量:${item.view}</span>
            </div>
            <div class="zixun_text">
              ${item.content}
            </div>
            <div class="red_line"></div>
          </div>
        </a>
          `;
        }
        $("#content .zixun_content .zixun_left").html(html);
        if (result.length == "") {
          $pageNo--;
          loadMore($pageNo);
          alert("已经是最后一页啦！");
        }
      }
    })
  }
})