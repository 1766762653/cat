$(function () {
  var did = location.search.split("=")[1];
  $.ajax({
    url: "/BreedDetails",
    type: "get",
    data: { did },
    dataType: "json",
    success: function (result) {
      console.log(result);
      var html = `
      <div class="left">
      <div class="big_img">
       <img class="hover" src="${result[0].img_url1}">
       <img src="${result[0].img_url2}">
       <img src="${result[0].img_url3}">
       <img src="${result[0].img_url4}">
       <div class="button">
         <div></div>
         <div></div>
         <div></div>
         <div></div>
       </div>
       <div class="prev">
         <div></div>
       </div>
       <div class="next">
         <div></div>
       </div>
     </div>
     <div class="small_img">
       <img class="hover" src="${result[0].img_url1}">
       <img src="${result[0].img_url2}">
       <img src="${result[0].img_url3}">
       <img src="${result[0].img_url4}">
     </div> 
   </div>
   <div class="right">
      <div class="line1">
       <div class="name">
         ${result[0].cname} <span>${result[0].ename}</span>
       </div>
     </div>
     <div class="price">
       <div>参考价格：</div>
       <div>${result[0].price}</div>
     </div>
     <div class="details">
       <div>
         <div>中文学名:</div>
         <div>${result[0].cname}</div>
       </div>
       <div>
         <div>别名:</div>
         <div>${result[0].alias}</div>
       </div>
       <div>
         <div>祖先:</div>
         <div>${result[0].ancestor}</div>
       </div>
       <div>
         <div>分布区域:</div>
         <div>${result[0].area}</div>
       </div>
       <div>
         <div>原产地:</div>
         <div>${result[0].source}</div>
       </div>
       <div>
         <div>体型:</div>
         <div>
           ${result[0].bodily}
         </div>
       </div>
       <div>
         <div>原始用途:</div>
         <div>${result[0].ypurpose}</div>
       </div>
       <div>
         <div>今日用途:</div>
         <div>${result[0].jpurpose}</div>
       </div>
       <div>
         <div>分组:</div>
         <div></div>
       </div>
       <div>
         <div>身高:</div>
         <div>${result[0].stature}</div>
       </div>
       <div>
         <div>体重:</div>
         <div>${result[0].weight}</div>
       </div>
       <div>
         <div>寿命:</div>
         <div>${result[0].lifetime}</div>
       </div>
     </div>
     <div class="shuxing">
       <div>
         <div>整体</div>
       </div>
       <div>
         <div>毛发</div>
       </div>
       <div>
         <div>颜色</div>
         <div></div>
       </div>
       <div>
         <div>头部</div>
       </div>
       <div>
         <div>眼睛</div>
       </div>
       <div>
         <div>耳朵</div>
       </div>
       <div>
         <div>鼻子</div>
       </div>
       <div>
         <div>尾巴</div>
       </div>
       <div>
         <div>胸部</div>
       </div>
       <div>
         <div>颈部</div>
       </div>
       <div>
         <div>前驱</div>
       </div>
       <div>
         <div>后驱</div>
       </div>
     </div>
   </div>
      `;
      $(".baike_content .title").html(html);


      // 切换图片
      function tu_move(u) {
        // 获取所有图片
        var imgs = $('.baike_content .title .left>.big_img>img');
        var small_imgs = $('.baike_content .title .left>.small_img>img');
        // 获取当前hover图片
        var index = imgs.parents('.left').find('.hover').index();
        var nums = imgs.length;
        if (u == 'right') {
          index++;
        } else if (u == 'left') {
          index--;
        }
        if (index == -1) {
          index = nums - 1;
        } else if (index == nums) {
          index = 0;
        }
        // 将其他元素淡出  触发的图片淡出
        imgs.eq(index).stop().fadeIn(800).attr('class', 'hover').siblings('img').stop().fadeOut(800).attr('class', '');
        small_imgs.eq(index).attr('class', 'hover').siblings('img').attr('class', '');
        // 按钮 跟随其轮播
        $('.baike_content .title .left .button>div').eq(index).css('background-color', '#ff6542').siblings().css('background-color', 'white');
      }
      // 轮播
      var timeindex = setInterval(function () {
        tu_move('right');
      }, 2500);
      // 鼠标移入停止轮播，鼠标移出开始轮播
      $('.baike_content .title .left').hover(function () {
        clearTimeout(timeindex);
      }, function () {
        timeindex = setInterval(function () {
          tu_move('right');
        }, 2500);
      });
      // 轮播图左边按钮
      $('.baike_content .title .left .prev').click(function () {
        tu_move('left');
      });
      // 轮播图右边按钮
      $('.baike_content .title .left .next').click(function () {
        tu_move('right');
      });
      // 轮播底部按钮js
      $('.baike_content .title .left .button>div').hover(function () {
        $(this).siblings().css('background-color', 'white');
        $(this).css('background-color', '#ff6542');
        // 获取触发的index
        var ims_index = $(this).index();
        var imgs = $('.baike_content .title .left>.big_img>img');
        var small_imgs = $('.baike_content .title .left>.small_img>img');
        // 将其他元素淡出  触发的图片淡出
        imgs.eq(ims_index).stop().fadeIn(800).attr('class', 'hover').siblings('img').stop().fadeOut(800).attr('class', '');
        small_imgs.eq(ims_index).attr('class', 'hover').siblings('img').attr('class', '');
      });
      // 轮播底部按钮js
      $('.baike_content .title .left>.small_img>img').hover(function () {
        $(this).attr('class', 'hover').siblings('img').attr('class', '');
        // 获取触发的index
        var ims_index = $(this).index();
        var imgs = $('.baike_content .title .left>.big_img>img');
        var buttons = $('.baike_content .title .left .button>div');
        // 将其他元素淡出  触发的图片淡出
        imgs.eq(ims_index).stop().fadeIn(800).attr('class', 'hover').siblings('img').stop().fadeOut(800).attr('class', '');
        buttons.eq(ims_index).stop().css('background-color', '#ff6542').siblings().css('background-color', 'white');
      });
      //  列表
      $('.baike_content .content .property_title>div').hover(function () {
        let lists = $('.baike_content .content .property_list>div');
        // 所有标题恢复样式
        $(this).siblings().attr('style', 'border-top: 3px solid #F0F0F0;color: #262626;background-color: #F0F0F0;');
        // 触发的标题赋予新样式
        $(this).css('background-color', 'white');
        $(this).css('color', '#ff6542');
        $(this).css('border-top', '3px solid #ff6542');
        // 所有的list列表都隐藏
        lists.css('display', 'none');
        // 对应的列表显示
        lists.eq($(this).index()).css('display', 'block');
      });
    }
  });
})