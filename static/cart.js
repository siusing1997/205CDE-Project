function addShopping(btn){
var tds=$(btn).parent().siblings();//獲取當前元素的父節點的全部兄弟節點，就是當前這行的所有td
var name=$(tds).eq(0).text();//獲取商品名稱的td的文本值
var price=$(tds).eq(3).text();//獲取商品價格的td的文本值
var html = $("<tr>"    //開始拼接HTML元素，將取到的東西展示到對用的input中
+"<td>"+name+"</td>"
+"<td>"+price+"</td>"
+"<td>"
+"<button type=‘button‘ id=‘btn‘ value=‘-‘>"
+"<button type=‘button‘ id=‘btn‘ value=‘+‘/>"
+"</td>"
+"<td>"+price+"</td>"
+"<td align=‘center‘>"
+"<button type=‘button‘ id=‘btn‘ value=‘*‘>"
+"</td></tr>");
$("#goods").append(html);
}