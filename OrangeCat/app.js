//使用express构建web服务器 --11:25
const express = require('express');
const bodyParser = require('body-parser');
/*引入路由模块*/
const index = require("./router/index.router");
var server = express();
server.listen(3000);
//引入express-session模块
const session = require("express-session");
// 配置会话模块
server.use(
    session({
        secret: "128位随机字符串",
        resave: false,
        saveUninitialized: true,
        cookie: {
            maxAge: 1000 * 60 * 60
        }
    })
);
//使用body-parser中间件
server.use(bodyParser.urlencoded({ extended: false }));
//托管静态资源到public目录下
server.use(express.static('public'));
/*使用路由器来管理路由*/
server.use("/", index);