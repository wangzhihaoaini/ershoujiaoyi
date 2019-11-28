<%--
  Created by IntelliJ IDEA.
  User: wzh82
  Date: 2019/3/12
  Time: 22:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>二货大学生交易商城</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/css/style.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/shutter.css">
    <script src="<%=request.getContextPath()%>/static/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/static/js/velocity.js"></script>
    <script src="<%=request.getContextPath()%>/static/js/shutter.js"></script>
    <link rel="icon" href="<%=request.getContextPath()%>/image/logo2.ico" type="image/x-icon"/>
</head>
<!-- start header -->
<%@include file="head/header.jsp" %>
<!--end header -->

<!-- start banner_y -->
<div class="banner_y center">
    <div class="nav">
        <ul>
            <li>
                <a>手机</a>
                <div class="pop" style="width: 550px">
                    <div class="left fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/pingguo.jpg" width="40px" height="40px"
                                                             alt=""></div>
                                    <span class="fl">苹果</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=苹果">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/sanxing.jpg" width="40px" height="40px"
                                                             alt=""></div>
                                    <span class="fl">三星</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=三星">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/huawei.jpg" width="40px" height="40px" alt="">
                                    </div>
                                    <span class="fl">华为</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=华为">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/xiaomi.jpg" width="40px" height="40px" alt="">
                                    </div>
                                    <span class="fl">小米</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=小米">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/meizu.jpg" width="40px" height="40px" alt="">
                                    </div>
                                    <span class="fl">魅族</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=魅族">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/rongyao.jpg" width="40px" height="40px"
                                                             alt=""></div>
                                    <span class="fl">荣耀</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=荣耀">选购</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="ctn fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/oppo.jpg" width="40px" height="40px" alt="">
                                    </div>
                                    <span class="fl">oppo</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=oppo">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/vivo.jpg" width="40px" height="40px" alt="">
                                    </div>
                                    <span class="fl">vivo</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=vivo">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/leshi.jpg" width="40px" height="40px" alt="">
                                    </div>
                                    <span class="fl">乐视</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=乐视">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/meitu.jpg" width="40px" height="40px" alt="">
                                    </div>
                                    <span class="fl">美图</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=美图">选购</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </li>
            <br/>
            <li>
                <%--------------------------------------------------------------------------------------------------%>
                <a>电脑</a>
                <div class="pop" style="width: 550px">
                    <div class="left fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/lianxiang.jpg" width="40px" height="40px"
                                                             alt=""></div>
                                    <span class="fl">联想</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=联想">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/huipu.jpg" width="40px" height="40px" alt="">
                                    </div>
                                    <span class="fl">惠普</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=惠普">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/huashuo.jpg" width="40px" height="40px"
                                                             alt=""></div>
                                    <span class="fl">华硕</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=华硕">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/suoni.jpg" width="40px" height="40px" alt="">
                                    </div>
                                    <span class="fl">索尼</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=索尼">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/hongqi.jpg" width="40px" height="40px" alt="">
                                    </div>
                                    <span class="fl">宏碁</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=宏碁">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/daier.jpg" width="40px" height="40px" alt="">
                                    </div>
                                    <span class="fl">戴尔</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=戴尔">选购</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="ctn fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/sanxing.jpg" width="40px" height="40px"
                                                             alt=""></div>
                                    <span class="fl">三星</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=三星">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/东芝.jpg" width="40px" height="40px" alt="">
                                    </div>
                                    <span class="fl">东芝</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=东芝">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/pingguo.jpg" width="40px" height="40px"
                                                             alt=""></div>
                                    <span class="fl">Mac</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=Mac">选购</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </li>
            <br/>
            <%--------------------------------------------------------------------------------------------------%>
            <li>
                <a>配件</a>
                <div class="pop" style="width: 550px">
                    <div class="left fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/jianpan.jpg" width="40px" height="40px"
                                                             alt=""></div>
                                    <span class="fl">键盘</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=键盘">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/fengshan.jpg" width="40px" height="40px"
                                                             alt=""></div>
                                    <span class="fl">风扇</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=风扇">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/shubiao.jpg" width="40px" height="40px"
                                                             alt=""></div>
                                    <span class="fl">鼠标</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=鼠标">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/sanreqi.jpg" width="40px" height="40px"
                                                             alt=""></div>
                                    <span class="fl">散热器</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=散热器">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/yinxiang.jpg" width="40px" height="40px"
                                                             alt=""></div>
                                    <span class="fl">音响</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=音响">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/erji.jpg" width="40px" height="40px" alt="">
                                    </div>
                                    <span class="fl">耳机</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=耳机">选购</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="ctn fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/neicuntiao.jpg" width="40px" height="40px"
                                                             alt=""></div>
                                    <span class="fl">内存条</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=内存条">选购</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </li>
            <br/>
            <%--------------------------------------------------------------------------------------------------%>
            <li>
                <a>电器</a>
                <div class="pop" style="width: 550px">
                    <div class="left fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/chuifengji.jpg" width="40px" height="40px"
                                                             alt=""></div>
                                    <span class="fl">吹风机</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=吹风机">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/chazuo.jpg" width="40px" height="40px" alt="">
                                    </div>
                                    <span class="fl">插座</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=插座">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/taideng.jpg" width="40px" height="40px"
                                                             alt=""></div>
                                    <span class="fl">台灯</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=台灯">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/wurenji.jpg" width="40px" height="40px"
                                                             alt=""></div>
                                    <span class="fl">无人机</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=无人机">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/danfan.jpg" width="40px" height="40px" alt="">
                                    </div>
                                    <span class="fl">单反</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=单反">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/bingxiang.jpg" width="40px" height="40px"
                                                             alt=""></div>
                                    <span class="fl">冰箱</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=冰箱">选购</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="ctn fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/dayinji.jpg" width="40px" height="40px"
                                                             alt=""></div>
                                    <span class="fl">打印机</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=打印机">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/zhazhiji.jpg" width="40px" height="40px"
                                                             alt=""></div>
                                    <span class="fl">榨汁机</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=榨汁机">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/kafeiji.jpg" width="40px" height="40px"
                                                             alt=""></div>
                                    <span class="fl">咖啡机</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=咖啡机">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/touying.jpg" width="40px" height="40px"
                                                             alt=""></div>
                                    <span class="fl">投影</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=投影">选购</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </li>
            <%--------------------------------------------------------------------------------------------------%>
            <br/>
            <li>
                <a>娱乐</a>
                <div class="pop" style="width: 550px">
                    <div class="left fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/youkelili.jpg" width="40px" height="40px"
                                                             alt=""></div>
                                    <span class="fl">尤克里里</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=尤克里里">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/huiyuan.jpg" width="40px" height="40px"
                                                             alt=""></div>
                                    <span class="fl">会员</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=会员">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/youxi.jpg" width="40px" height="40px" alt="">
                                    </div>
                                    <span class="fl">账号</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=账号">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/gongzai.jpg" width="40px" height="40px"
                                                             alt=""></div>
                                    <span class="fl">公仔</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=公仔">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/gangqin.jpg" width="40px" height="40px"
                                                             alt=""></div>
                                    <span class="fl">钢琴</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=钢琴">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/pintu.jpg" width="40px" height="40px" alt="">
                                    </div>
                                    <span class="fl">拼图</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=拼图">选购</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="ctn fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/yanchanghui.jpg" width="40px" height="40px"
                                                             alt=""></div>
                                    <span class="fl">演唱会</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=演唱会">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/baobao.jpg" width="40px" height="40px" alt="">
                                    </div>
                                    <span class="fl">包包</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=包包">选购</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </li>
            <br/>
            <%--------------------------------------------------------------------------------------------------%>
            <li>
                <a>运动</a>
                <div class="pop" style="width: 550px">
                    <div class="left fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/yaling.jpg" width="40px" height="40px" alt="">
                                    </div>
                                    <span class="fl">哑铃</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=哑铃">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/yongjing.jpg" width="40px" height="40px"
                                                             alt=""></div>
                                    <span class="fl">泳镜</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=泳镜">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/lanqiu.jpg" width="40px" height="40px" alt="">
                                    </div>
                                    <span class="fl">篮球</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=篮球">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/wangqiu.jpg" width="40px" height="40px"
                                                             alt=""></div>
                                    <span class="fl">网球</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=网球">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/xie.jpg" width="40px" height="40px" alt="">
                                    </div>
                                    <span class="fl">鞋</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=鞋">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/zixingche.jpg" width="40px" height="40px"
                                                             alt=""></div>
                                    <span class="fl">自行车</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=自行车">选购</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="ctn fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/shouhuan.jpg" width="40px" height="40px"
                                                             alt=""></div>
                                    <span class="fl">手环</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=手环">选购</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </li>
            <br/>
            <%--------------------------------------------------------------------------------------------------%>
            <li>
                <a>代步</a>
                <div class="pop" style="width: 550px">
                    <div class="left fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/sifei.jpg" width="40px" height="40px" alt="">
                                    </div>
                                    <span class="fl">死飞</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=死飞">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/diandong.jpg" width="40px" height="40px"
                                                             alt=""></div>
                                    <span class="fl">电动</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=电动">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/shandiche.jpg" width="40px" height="40px"
                                                             alt=""></div>
                                    <span class="fl">山地</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=山地">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/tanxianwei.jpg" width="40px" height="40px"
                                                             alt=""></div>
                                    <span class="fl">碳纤维</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=碳纤维">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/huaban.jpg" width="40px" height="40px" alt="">
                                    </div>
                                    <span class="fl">滑板</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=滑板">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/motuo.jpg" width="40px" height="40px" alt="">
                                    </div>
                                    <span class="fl">摩托</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=摩托">选购</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="ctn fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="./image/huaxiangyi.jpg" width="40px" height="40px"
                                                             alt=""></div>
                                    <span class="fl">滑翔翼</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="ershouServlet?action=search&title=滑翔">选购</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </li>
        </ul>
    </div>
</div>

<div class="sub_banner center">
    <div class="sidebar fl">
        <div class="fl"><a href=""><img src="image/hjh_01.gif"></a></div>
        <div class="fl"><a href=""><img src="image/hjh_02.gif"></a></div>
        <div class="fl"><a href=""><img src="image/hjh_03.gif"></a></div>
        <div class="fl"><a href=""><img src="image/hjh_04.gif"></a></div>
        <div class="fl"><a href=""><img src="image/hjh_05.gif"></a></div>
        <div class="fl"><a href=""><img src="image/hjh_06.gif"></a></div>
        <div class="clear"></div>
    </div>
    <div class="datu fl"><a href=""><img src="image/xuanchuan1.jpg" width="632px" height="340px"></a></div>
    <div class="datu fl"><a href=""><img src="image/xuanchuan2.jpg" width="632px" height="340px"></a></div>
    <div class="datu fr"><a href=""><img src="image/xuanchuan3.jpg" width="632px" height="340px"></a></div>
    <div class="clear"></div>

</div>
<!-- end banner -->

<!-- start danpin -->
<div class="danpin center">

    <div class="biaoti center">二货明星单品</div>
    <div class="main center">
        <div class="shutter">
            <div class="shutter-img">
                <c:forEach items="${requestScope.hotList}" var="hot">
                    <a href="<%=request.getContextPath()%>/ershouServlet?action=queryDetail&wupinId=${hot.id}"
                       data-shutter-title="${hot.introduce}"><img src="<%=request.getContextPath()%>/image/${hot.image}"
                                                                  width="1226px" height="440px"></a>
                </c:forEach>
            </div>
            <ul class="shutter-btn">
                <li class="prev"></li>
                <li class="next"></li>
            </ul>
        </div>
    </div>
</div>
<div class="peijian w">
    <div class="biaoti center">最新商品</div>
    <div class="main center">
        <div class="content">
            <div class="remen fl"><img src="image/xinshangjia.jpg" width="234px" height="300px">
            </div>
            <c:forEach items="${requestScope.newstList}" var="newst">
                <div class="remen fl">
                    <div class="xinpin"><span>新品</span></div>
                    <div class="tu"><a
                            href="<%=request.getContextPath()%>/ershouServlet?action=queryDetail&wupinId=${newst.id}"><img
                            src="image/${newst.image}" height="150px" width="150px"></a></div>
                    <div class="miaoshu"><a
                            href="<%=request.getContextPath()%>/ershouServlet?action=queryDetail&wupinId=${newst.id}">${newst.title}</a>
                    </div>
                    <div class="jiage">￥${newst.price}</div>
                    <div class="piao">
                        <span>${newst.introduce}</span>
                    </div>
                </div>
            </c:forEach>
            <div class="remenlast fr">
                <div class="liulangengduo"><img src="image/chuangyi.jpg" width="230px" height="290px"></div>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</div>
<div onclick="smoothscroll()" style="float: right"><img src="<%=request.getContextPath()%>/image/topback.png"
                                                        height="40px" width="40px" title="返回顶部"></div>
<%@include file="footer/footer.jsp" %>
<script>
    $(function () {
        $('.shutter').shutter({
            shutterW: 1226, // 容器宽度
            shutterH: 440, // 容器高度
            isAutoPlay: true, // 是否自动播放
            playInterval: 4000, // 自动播放时间
            curDisplay: 1, // 当前显示页
            fullPage: false // 是否全屏展示
        });
    });

    function smoothscroll() {
        var currentScroll = document.documentElement.scrollTop || document.body.scrollTop;
        if (currentScroll > 0) {
            window.requestAnimationFrame(smoothscroll);
            window.scrollTo(0, currentScroll - (currentScroll / 15));
        }
    };
</script>
</body>
</html>
