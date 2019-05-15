const express = require("express");
const pool = require("../pool.js")
var router = express.Router();
// 功能一  首页轮播图
router.get("/banner", (req, res) => {
    var sql = "select cid,img_url from cat_index_carousel";
    pool.query(sql, (err, result) => {
        if (err) throw err;
        res.send(result);
    })
})

// 功能二 用户注册
router.post("/Register", (req, res) => {
    var $uname = req.body.uname;
    var $upwd = req.body.upwd;
    var $phone = req.body.phone;
    var $email = req.body.email;
    var sql = "INSERT INTO cat_user(uid,uname,upwd,phone,email) VALUES(null,?,?,?,?);"
    pool.query(sql, [$uname, $upwd, $phone, $email], (err, result) => {
        if (err) throw err;
        if (result.affectedRows > 0) {
            res.send({ code: 1, msg: "注册成功" });
        } else {
            res.send({ code: -1, msg: "注册失败，请检查" });
        }
    })
})

// 功能三 用户登录
router.post("/Login", (req, res) => {
    var $uname = req.body.uname;
    var $upwd = req.body.upwd;
    var sql = "SELECT * FROM cat_user WHERE uname=? AND upwd=?";
    pool.query(sql, [$uname, $upwd], (err, result) => {
        if (err) throw err;
        if (result.length > 0) {
            //1.登陆成功
            //2.获取当前登陆用户id
            var uid = result[0].uid;
            //3.保存到session对象中
            req.session.uid = uid;
            // console.log(req.session.uid);
            res.send({ code: 1, msg: "登陆成功" });
        } else {
            res,
                send({ code: -1, msg: "该用户不存在，请注册" });
        }
    })
})
//3.获取session对象
router.get("/userInfo", (req, res) => {
    if (!req.session.uid) {
        res.send({ code: -1, data: [], msg: "请登陆" });
        return;
    }
    var $uid = req.session.uid;
    // console.log($uid);
    var sql = "SELECT * FROM cat_user WHERE uid=?";
    pool.query(sql, [$uid], (err, result) => {
        if (err) throw err;
        if (result.length > 0) {
            res.send({ code: 1, data: result });
        }
    });
});
// 4.清空session
router.get("/logOut",(req,res)=>{
    req.session.uid="";
    res.send({code:1});
})


// 功能四  热门猫咪
router.get("/HotCat", (req, res) => {
    var sql = "SELECT hid,img_url FROM cat_hot";
    pool.query(sql, (err, result) => {
        if (err) throw err;
        res.send(result);
    })
})

// 功能五  优品推荐
router.get("/Recommend", (req, res) => {
    var sql = "SELECT yid,img_url,rec,price,vname FROM cat_yo";
    pool.query(sql, (err, result) => {
        if (err) throw err;
        res.send(result);
    })
})

// 功能六 楼层展示
router.get("/Show", (req, res) => {
    var sql = "SELECT sid,img_url,introduce,price,city,sname FROM cat_show";
    pool.query(sql, (err, result) => {
        if (err) throw err;
        res.send(result);
    })
})

// 功能七 猫咪详情
router.get("/Details", (req, res) => {
    var $did = req.query.did;
    var sql = "select * from cat_details where did=?";
    pool.query(sql, [$did], (err, result) => {
        if (err) throw err;
        res.send(result);
    })
})

// 功能八  分页显示
router.get("/CatInfo", (req, res) => {
    var $pageNo = req.query.pageNo;
    var $pageSize = req.query.pageSize;
    if (!$pageNo) $pageNo = 1;
    if (!$pageSize) $pageSize = 24;
    var sql = "select sid,img_url,introduce,price,city,sname from cat_show limit ?,?";
    var $offset = ($pageNo - 1) * $pageSize;
    $pageSize = parseInt($pageSize);
    pool.query(sql, [$offset, $pageSize], (err, result) => {
        if (err) throw err;
        res.send(result);
    })
})

// 功能九 猫咪资讯
router.get("/CatNews", (req, res) => {
    var $pageNo = req.query.pageNo;
    var $pageSize = req.query.pageSize;
    if (!$pageNo) $pageNo = 1;
    if (!$pageSize) $pageSize = 10;
    var sql = "select nid,img_url,title,ctime,view,content from cat_news limit ?,?";
    var $offset = ($pageNo - 1) * $pageSize;
    $pageSize = parseInt($pageSize);
    pool.query(sql, [$offset, $pageSize], (err, result) => {
        if (err) throw err;
        res.send(result);
    })
})

// 功能十 猫咪品种
router.get("/CatBreed", (req, res) => {
    var sql = "select * from cat_breeds";
    pool.query(sql, (err, result) => {
        if (err) throw err;
        res.send(result);
    })
})

// 功能十一  猫咪品种详情
router.get("/BreedDetails", (req, res) => {
    var $did = req.query.did;
    var sql = "select * from cat_breeds_detaile where did=?";
    pool.query(sql, [$did], (err, result) => {
        if (err) throw err;
        res.send(result);
    });
});

// 功能十二  发布消息
router.post("/postMessage", (req, res) => {
    var $title = req.body.title;
    var $des = req.body.des;
    var $breed = req.body.breed;
    var $linkman = req.body.linkman;
    var $sex = req.body.sex;
    var $area = req.body.area;
    var $age = req.body.age;
    var $tel = req.body.tel;
    var $vaccine = req.body.vaccine;
    var $qq = req.body.QQ;
    var $qc = req.body.qc;
    var $wechat = req.body.wechat;
    var $isvideo = req.body.isvideo;
    var $sale = req.body.sale;
    var $freight = req.body.freight;
    var $price = req.body.price;
    var $purebred = req.body.purebred;
    var $ensure = req.body.ensure;
    var sql = "INSERT INTO cat_post_message VALUES(null,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
    pool.query(sql, [$title, $des, $breed, $linkman, $sex, $area, $age, $tel, $vaccine, $qq, $qc, $wechat, $isvideo, $sale, $freight, $price, $purebred, $ensure], (err, result) => {
        if (err) throw err;
        if (result.affectedRows > 0) {
            res.send({ code: 1, msg: "提交成功，请等待管理员审核通过后发布" });
        }else{
            res.send({code:-1,msg:"提交失败，请检查"});
        }
    });
})
module.exports = router;