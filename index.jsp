<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2020/7/11
  Time: 14:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" pageEncoding="utf-8"%>

<center> <p>欢迎光临好再来外卖店</p> </center>
<!DOCTYPE html>

<html>

<head>

  <meta charset="UTF-8">

  <title>好再来外卖</title>

</head>

<style>

  table{

    margin: 0 auto;

  }

  table th,table td{

  }

</style>

<body >

<table border="1" >

  <tr>

    <th>商品</th>

    <th>价格</th>

    <th>图片</th>

    <th>购买</th>

  </tr>

  <tr>

    <td>死亡烤鸭</td>

    <td  >20</td>

    <td> <p ><img src="picture/kaoya.jpg"  width="150" height="150">
    </p> </td>



    <td align="center">

      <input type="button" value="添加" onclick="add_shoppingcar(this)"/>

    </td>

  </tr>

  <tr>

    <td>黄焖鸡</td>

    <td>15</td>

    <td> <p ><img src="picture/huangmenji.jpg"  width="150" height="150">
    </p> </td>



    <td align="center">

      <input type="button" value="添加" onclick="add_shoppingcar(this)"/>

    </td>

  </tr>
  <tr>

    <td>咖喱鸡排饭</td>

    <td>10</td>

    <td> <p ><img src="picture/jipaifan.jpg"  width="150" height="150">
    </p> </td>


    <td align="center">

      <input type="button" value="添加" onclick="add_shoppingcar(this)"/>

    </td>

  </tr>
  <tr>

    <td>淮南牛肉汤</td>

    <td >15</td>

    <td> <p ><img src="picture/niuroutang.jpg"  width="150" height="150">
    </p> </td>


    <td align="center">

      <input type="button" value="添加" onclick="add_shoppingcar(this)"/>

    </td>

  </tr>

  <tr>

    <td>汉堡套餐</td>

    <td>20</td>

    <td> <p ><img src="picture/hanbao.jpg"  width="150" height="150">
    </p> </td>



    <td align="center">

      <input type="button" value="添加" onclick="add_shoppingcar(this)"/>

    </td>

  </tr>
  <tr>

    <td>可乐</td>

    <td>3</td>

    <td> <p ><img src="picture/kele.jpg"  width="150" height="150">
    </p> </td>


    <td align="center">

      <input type="button" value="添加" onclick="add_shoppingcar(this)"/>

    </td>

  </tr>
  <tr>

    <td>矿泉水</td>

    <td>2</td>

    <td> <p ><img src="picture/kuangquanshui.jpg"  width="150" height="150">
    </p> </td>


    <td align="center">

      <input type="button" value="添加" onclick="add_shoppingcar(this)"/>

    </td>

  </tr>
  <tr>

    <td>奶茶</td>

    <td>5</td>

    <td> <p ><img src="picture/naicha.jpg"  width="150" height="150">
    </p> </td>


    <td align="center">

      <input type="button" value="添加" onclick="add_shoppingcar(this)"/>

    </td>

  </tr>
</table>
<center> <p>注：商品以实物为准，图片仅供参考</p> </center>
<table border="1">
  <thead>

  <tr>

    <th>商品</th>

    <th>价格</th>

    <th>数量</th>

    <th>金额</th>

    <th>删除</th>

  </tr>

  </thead>

  <tbody id="goods">

  </tbody>

  <tfoot>

  <tr>

    <td colspan="3" align="center" >总计</td>

    <td id="total"></td>

    <td>元</td>

  </tr>

  </tfoot>

</table>

</body>

<script type="text/javascript">

    function add_shoppingcar(btn){

        var tr=btn.parentNode.parentNode;

        var tds=tr.getElementsByTagName("td");

        var name=tds[0].innerHTML;

        var price=tds[1].innerHTML;

        var tbody=document.getElementById("goods");

        var row=tbody.insertRow();

        row.innerHTML="<td>"+name+"</td>"+

            "<td>"+price+"</td>"+

            "<td align='center'>"+

            "<input type='button' value='-' id='jian'  onclick='change(this,-1)'  />"+

            "<input id='text' type='text' size='1' value='1' readonly='readonly' />"+

            "<input type='button' value='+' id='add'  onclick='change(this,1)'  />"+

            "</td>"+

            "<td>"+price+"</td>"+

            "<td align='center'>"+

            "<input type='button' value='X' onclick='del(this)'/>"+

            "</td>"+

            "</tr>"

        total();

    }

    function change(btn,n){

        var inputs = btn.parentNode.getElementsByTagName("input");

        var amount = parseInt(inputs[1].value);

        if(amount<=1 && n<0){

            return;

        }

        inputs[1].value = amount + n;

        amount = inputs[1].value;

        var tr = btn.parentNode.parentNode;

        var tds = tr.getElementsByTagName("td");

        var price = parseFloat(tds[1].innerHTML);

        var m = price * amount;

        tds[3].innerHTML = m;

        total();

    }

    function total(){

        var tbody=document.getElementById("goods");

        var trs=tbody.getElementsByTagName("tr");

        var sum=0;

        for(var i=0;i<trs.length;i++){

            var tds=trs[i].getElementsByTagName("td");

            var m=tds[3].innerHTML;

            sum += parseFloat(m);

        }

        var total=document.getElementById("total");

        total.innerHTML = sum;

    }

    function del(i){

        var tr=i.parentNode.parentNode;

        tr.parentNode.removeChild(tr);

        total();

    }

</script>

</html>
<center> <p>建议使用QQ支付，少补多不退哦（滑稽）</p> </center>
<html>
<head> <td> <center><p ><img src="picture/qq.jpg"  width="150" height="150">
</p> <center></td>
</html>
</head>