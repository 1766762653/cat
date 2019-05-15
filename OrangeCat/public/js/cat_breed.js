$(function () {
  $.ajax({
    type: "get",
    url: "/CatBreed",
    data: "data",
    dataType: "json",
    success: function (result) {
      var html = ``;
      for (var item of result) {
        html += `
        <a target="_blank" href="/breed_details.html?bid=${item.bid}" title="点击查看布偶猫百科">
            <img src="${item.img_url}" alt="">
            <div class="pet_name">
              ${item.bname}
            </div>
            <div class="pet_price">
              参考价格：<span>${item.price}</span>
            </div>
            <div class="IQ_ranking">
              智商排名：10 名
            </div>
          </a>
        `;
        $(".pinzhong_content .pinzhong_left").html(html);
      }
    }
  });
})