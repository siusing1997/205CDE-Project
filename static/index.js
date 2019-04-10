var ccount = document.getElementById("ccount");
var btns = document.querySelectorAll(".list td tr button");

var listStr = cookieObj.get("datas")

	if(!listStr) {
		cookieObj.set({
		name: "datas",
		value: "[]"

		});
		listStr = cookObj.get("datas")
		}
		var listObj = JSON.parse(listStr);
		var totalCount =0;
	
	for(var i = 0, len = listObj.length; i < len; i ) 
		{
		totalCount = listObj[i].pCount totalCount;
		}
		ccount.innerHTML = totalCount;
	for(var i = 0, len = btns.length; i < len; i ) {
		btns[i].onclick = function() {
		var tr = this.parentNode.parentNode;
		var pid = tr.getAttribute("pid");
		var arrs = tr.children;
	if(checkObjByPid(pid)) {
		listObj = updateObjById(pid, 1)
	} else {
	var pName = arrs[0].innerHTML;
	var pCol = arrs[1].innerHTML;
	var pCap = arrs[2].innerHTML;
	var pPrice = arrs[3].innerHTML;
	var obj = {
		pid: pid,
		pName: pName,
		pCap: pCap,
		pPrice: pPrice,
		pCount: 1
	};
	listObj.push(obj)
	listObj = updateData(listObj);
	}
	ccount.innerHTML = getTotalCount();
	}
	}