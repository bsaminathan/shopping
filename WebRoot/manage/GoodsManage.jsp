<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${empty products}">
	<jsp:forward page="../showAllProducts.do"></jsp:forward>
</c:if>
<c:if test="${empty categories}">
	<jsp:forward page="../getParentCategories.do?url=manage/GoodsManage.jsp"></jsp:forward>
</c:if>
<html>
<head>
<title>后台管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- system系统 -->
<link href="../CSS/style.css" rel="stylesheet">
<script type="text/javascript" src="../JS/menutree.js"></script>
<script type="text/javascript" src="../JS/jquery.js"></script>
<!-- message弹框提示 -->
<link rel="stylesheet" type="text/css" 

href="../JS/themes/message_solid.css" />
<script type="text/javascript" src="../JS/message.js"></script>
<script type="text/javascript" src="../JS/showmsg.js"></script>
<!-- gh-buttons按钮的样式 -->
<link rel="stylesheet" type="text/css" href="../CSS/gh-buttons.css" />
<!-- poshytip输入框提示 -->
<script type="text/javascript" 

src="../poshytip/jquery.poshytip.min.js"></script>
<script type="text/javascript" src="../poshytip/onload.js"></script>
<link rel="stylesheet" type="text/css" href="../poshytip/tip-

twitter/tip-twitter.css" />

<!-- team -->
<script type="text/javascript" src="../JS/global.js"></script>
<script type="text/javascript" src="../JS/liao.js"></script>
<script type="text/javascript" src="../JS/empory.js"></script>

</head>

<body>
<table width="777" height="192"  border="0" align="center" 

cellpadding="0" cellspacing="0" class="tableBorder">
<tr>
  <td>
<!-- LOGO -->
	<table width="777" height="115"  border="0" align="center" 

cellpadding="0" cellspacing="0">
	  <tr>
	    <td valign="top"><table width="100%"  border="0" 

cellspacing="0" cellpadding="0">
	      <tr>
	        <td bgcolor="#CCCCCC" height="6px"></td>
	      </tr>
	    </table>
	      <table width="100%" height="123"  border="0" 

cellpadding="0" cellspacing="0">
	        <tr>
	          <td valign="top" 

background="../images/manage_01.gif"><table width="100%" height="118"  

border="0" cellpadding="0" cellspacing="0">
	            <tr>
	              <td height="98" colspan="2">&nbsp;</td>
	            </tr>
	            <tr>
	              <td width="25%">&nbsp;</td>
	              <td width="75%" class="word_green" 

id="bgclock"></td>
	            </tr>
	          </table></td>
	        </tr>
	      </table></td>
	  </tr>
	</table>
<!-- LOGO结束-->
  <table width="777" height="288"  border="0" align="center" 

cellpadding="0" cellspacing="0">
    <tr>
      <td width="182" valign="top"><table width="100%" height="431"  

border="0" cellpadding="0" cellspacing="0">
        <tr>
         <td valign="top" background="../images/manage_02.gif">
        <!-- 操作菜单 -->
           <table width="100%" height="350"  border="0" cellpadding="0" 

cellspacing="0">
          <tr>
            <td width="18%" height="61">&nbsp;</td>
            <td width="82%">&nbsp;</td>
          </tr>
          <tr>
            <td height="46">&nbsp;</td>
            <td><a href="GoodsManage.jsp" class="word_white">商品管理

<br>
              Goods Manage</a></td>
          </tr>
          <tr>
            <td height="47">&nbsp;</td>
            <td><a href="MemberManage.jsp" class="word_white">会员管理

<br>
              Member Manage</a></td>
          </tr>
          <tr>
            <td height="48">&nbsp;</td>
            <td><a href="OrderManage.jsp" class="word_white">订单管理

<br>
              Order Manage</a></td>
          </tr>
          <tr>
            <td height="50">&nbsp;</td>
            <td><a href="PlacardManage.jsp" class="word_white">公告管理

<br>
              Placard Manage</a></td>
          </tr>
          <tr>
            <td height="50">&nbsp;</td>
            <td><a href="ParameterManage.jsp" class="word_white">参数管理<br>
              Parameter Manage </a></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><a href="../backLogout.do" class="word_white">退出后台

<br>
              Exit Background </a></td>
          </tr>
        </table>
         <!-- 操作菜单结束 --> 
        </td>
      </tr>
    </table></td>
    <td align="center" valign="top"><table width="100%" height="120"  

border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td valign="top" background="../images/manage_03.gif"><table 

width="100%" height="36"  border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="70%">
	            <!--搜索框-->
			<form name="search" 

action="../searchProducts4Admin.do">
			<table width="100%" height="23"  border="0" 

cellpadding="0" cellspacing="0">
			<tr>
			  <td colspan="2" height="7"></td>
			  </tr>
			<tr>
			  <td width="85%">&nbsp;商品类别： 
				<select name="pid" class="textarea">
				  <option value="0" selected>全部分类

</option>
				  <c:forEach items="${categories}" 

var="category">
				  <option value="${category.id }">

${category.name }</option>
				</c:forEach> 
				</select>
				<input name="name" title="请输入想要找

的商品" type="text" class="txt_grey" size="15">                  </td>
			  <td width="15%"><input type="submit" 

class="btn_grey" value="搜索"></td>
			</tr>
			</table>
			</form>
			<!--搜索框结束-->
            </td>
            <td width="28%" align="right"><a href="goods_add.jsp">[ 

<img src="../images/list.gif" width="11" height="13">&nbsp;添加商品信息

]</a></td>     
            <td width="2%">&nbsp;</td>       
          </tr>
        </table></td>
      </tr>
    </table>
    <input class="button" type="button" value="查看商品销量分布图" 

onclick="window.location.href='../showChart.do'">
      <table width="98%" height="192"  border="0" cellpadding="0" 

cellspacing="0">
        <tr>
          <td valign="top">
            <table width="100%" height="14"  border="0" cellpadding="0" 

cellspacing="0">
              <tr>
                <td height="13" align="center">&nbsp;</td>
              </tr>
            </table>
            <table width="100%" height="48"  border="1" cellpadding="0" 

cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#CCCCCC" 

bordercolorlight="#FFFFFF">
              <tr bgcolor="#eeeeee">
                <td width="5%" align="center">编号</td>
                <td width="25%" height="24" align="center">商品名称

</td>
                <td width="13%" align="center">所属类型</td>            

    
                <td width="13%" align="center">价格</td>                
                <td width="12%" align="center">商品数量</td>
                <td width="12%" align="center">订购数量</td>
                <td width="5%" align="center">特价</td>
                <td width="5%" align="center">补货</td>
                <td width="5%" align="center">修改</td>
                <td width="5%" align="center">失效</td>
              </tr>
              <!-- 迭代商品 -->
             <c:set var="colum" value="1"></c:set>
			<c:forEach items="${products}" var="product">
              <tr id="${product.id}" style="padding:5px;">
                <td align="center">${colum }.</td>
                <td height="20" align="center"><a 

href="../showProductDetail4Admin.do?id=${product.id }">${product.name 

}</a></td>                
                <td align="center">${product.categoryName }</td>
                <td align="center">￥${product.memberprice }</td>       

         
                <td align="center">${product.ncount }</td>
                <td align="center">${product.salesCount }</td>
                <c:if test="${product.ifspecial == 1}">
                	<td align="center">是</td>
                </c:if>
                <c:if test="${product.ifspecial == 0}">
                	<td align="center">否</td>
                </c:if>
                <td align="center"><img style="cursor:hand" 

onclick="addProductAmount(${product.id})" src="../images/add.gif" 

width="16" height="16"></td>
                <td align="center"><a href="../modifyProduct.do?

productid=${product.id }"><img src="../images/modify.gif" width="15" 

height="15"></a></td>
                <td align="center"><img style="cursor:hand" 

onclick="deleteProduct(${product.id})" src="../images/del.gif" 

width="16" height="16"></td>
            </tr>
              <c:set var="colum" value="${colum+1 }"></c:set>
			</c:forEach>
			
            </table>
            
           <table width="100%"  border="0" cellspacing="0" 

cellpadding="0">
			  <tr>
			    <td align="right">当前页数：[1/1]&nbsp;
				
				<a href="">第一页</a>　<a href="">上一

页</a>
				
				<a href="">下一页</a>　<a href="">最后

一页&nbsp;</a>
				
				</td>
			  </tr>
			</table>	
		  </td>
        </tr>
      </table>
      <table width="100%" height="46"  border="0" cellpadding="0" 

cellspacing="0">
        <tr>
          <td background="../images/manage_06.gif">&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
<table width="777"  border="0" align="center" cellpadding="0" 

cellspacing="0">
  <tr>
    <td height="54" align="center">
      <!--版权信息  -->
      <table width="100%" height="78"  border="0" align="center" 

cellpadding="-2" cellspacing="-2">
      <tr>
        <td height="13" colspan="5"></td>
        </tr>
      <tr>
        <td width="124" height="13">&nbsp;</td>
        <td height="13" colspan="3" align="center">奋斗子商城客户服务热

线：0791-3881060，3881061 传真：0791-3881063</td>
        <td width="141">&nbsp;</td>
      </tr>
      <tr>
        <td height="15" colspan="2">&nbsp;</td>
        <td width="464" valign="bottom" align="center"> CopyRight 

&copy; 2009 www.fendoujiaoyu.com 奋斗教育</td>
        <td colspan="2">&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2">&nbsp;</td>
        <td align="center">本站请使用IE6.0或以上版本 1024*768为最佳显示

效果</td>
        <td colspan="2">&nbsp;</td>
      </tr>
      <tr bgcolor="#cccccc">
        <td height="8" colspan="2"></td>
        <td height="8" align="center"></td>
        <td height="8" colspan="2"></td>
      </tr>
    </table>
      <!--版权信息结束  --> 
    </td>
  </tr>
</table>
</td>
</tr>
</table>
</body>
</html>

 