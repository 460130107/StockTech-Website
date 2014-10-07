function validateEmail(mid){
	if(!(/^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/.test(mid))){
		$('#tip_email').text("您的账户名称必须是邮箱格式");
		return false ;
	} else {
		$('#tip_email').text("");
		return true ;
	}
}

function validatePassword(password){
	if(!(/^\w{5,15}$/.test(password))){
		$('#tip_psw').text("密码由字母和数字组成，长度在6-16位之间");
		return false ;
	} else {
		$('#tip_psw').text("");
		return true ;
	}
}

function validatePhone(telephone){
	if(!(/^((\d{3,4})|\d{3,4}-)?\d{7,8}$/.test(telephone))){
		$('#tip_phone').text("手机号码由数字组成");
		return false ;
	} else {
		$('#tip_phone').text("");
		return true ;
	}
}

function validatePswConf(conf){

	if($('#id_password').val() != conf){
		$('#tip_pswconf').text("两次密码输入不一致");
		return false ;
	} else {
		$('#tip_pswconf').text("");
		return true ;
	}
}

//function validateEmail(email){
//	if(!(/^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/.test(email))){
//		document.getElementById("address_msg").innerHTML = "<img src=\""+url+"/images/wrong.gif\">" + "<font color=\"red\">Email地址格式错误！</font>" ;
//		return false ;
//	} else {
//		document.getElementById("address_msg").innerHTML = "<img src=\""+url+"/images/right.gif\">" + "<font color=\"green\">Email地址输入正确！</font>" ;
//		return true ;
//	}
//}
function validateIdNumber(IdNumber){
	if(!(isIdCardNo(IdNumber))){	// 100088
		$("#tip_idnumber").text("请输入正确的身份证号码");
		return false ;
	} else {
		$('#tip_idnumber').text("");
		return true ;
	}
}
function validateRealName(name){
	if(name == null){	// 100088
		$("#tip_realname").text("真实姓名不允许为空");
		return false ;
	} else {
		$('#tip_realname').text("");
		return true ;
	}
}

function validateUserName(name){
	if(name == null){	// 100088
		$("#tip_username").text("用户名不允许为空");
		return false ;
	} else {
		$('#tip_username').text("");
		return true ;
	}
}

function isIdCardNo(num)
{  
       num = num.toUpperCase(); 
         //身份证号码为15位或者18位，15位时全为数字，18位前17位为数字，最后一位是校验位，可能为数字或字符X。  
       if (!(/(^\d{15}$)|(^\d{17}([0-9]|X)$)/.test(num)))  
       {
               alert('输入的身份证号长度不对，或者号码不符合规定！\n15位号码应全为数字，18位号码末位可以为数字或X。');
               return false;
        }
			//校验位按照ISO 7064:1983.MOD 11-2的规定生成，X可以认为是数字10。
			//下面分别分析出生日期和校验位
		var len, re;
		len = num.length;
		if (len == 15)
		{
			re = new RegExp(/^(\d{6})(\d{2})(\d{2})(\d{2})(\d{3})$/);
			var arrSplit = num.match(re);
			
			//检查生日日期是否正确
			var dtmBirth = new Date('19' + arrSplit[2] + '/' + arrSplit[3] + '/' + arrSplit[4]);
			var bGoodDay;
			bGoodDay = (dtmBirth.getYear() == Number(arrSplit[2])) && ((dtmBirth.getMonth() + 1) == Number(arrSplit[3])) && (dtmBirth.getDate() == Number(arrSplit[4]));
			if (!bGoodDay)
			{
			    alert('输入的身份证号里出生日期不对！');  
			    return false;
			}
			else
			{
			//将15位身份证转成18位
			//校验位按照ISO 7064:1983.MOD 11-2的规定生成，X可以认为是数字10。
			          var arrInt = new Array(7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2);
			           var arrCh = new Array('1', '0', 'X', '9', '8', '7', '6', '5', '4', '3', '2');
			           var nTemp = 0, i;  
			            num = num.substr(0, 6) + '19' + num.substr(6, num.length - 6);
			           for(i = 0; i < 17; i ++)
			          {
			                nTemp += num.substr(i, 1) * arrInt[i];
			           }
			           num += arrCh[nTemp % 11];  
			            return num;  
			}  
		}
		if (len == 18)
		{
			re = new RegExp(/^(\d{6})(\d{4})(\d{2})(\d{2})(\d{3})([0-9]|X)$/);
			var arrSplit = num.match(re);
			
			//检查生日日期是否正确
			var dtmBirth = new Date(arrSplit[2] + "/" + arrSplit[3] + "/" + arrSplit[4]);
			var bGoodDay;
			bGoodDay = (dtmBirth.getFullYear() == Number(arrSplit[2])) && ((dtmBirth.getMonth() + 1) == Number(arrSplit[3])) && (dtmBirth.getDate() == Number(arrSplit[4]));
			if (!bGoodDay)
			{
				alert(dtmBirth.getYear());
				alert(arrSplit[2]);
				alert('输入的身份证号里出生日期不对！');
				return false;
			}
			else
			{
				//检验18位身份证的校验码是否正确。
				//校验位按照ISO 7064:1983.MOD 11-2的规定生成，X可以认为是数字10。
				var valnum;
				var arrInt = new Array(7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2);
				var arrCh = new Array('1', '0', 'X', '9', '8', '7', '6', '5', '4', '3', '2');
				var nTemp = 0, i;
				for(i = 0; i < 17; i ++)
				{
					nTemp += num.substr(i, 1) * arrInt[i];
				}
				valnum = arrCh[nTemp % 11];
				if (valnum != num.substr(17, 1))
				{
					alert('18位身份证的校验码不正确！应该为：' + valnum);
					return false;
				}
				return num;
			}
		}
		return false;
} 

function validate(f){
	return	validateEmail(f.email.value) && 
			validatePassword(f.password.value) && 
			validatePswConf(f.conf.value) && 
			validateUserName(f.mid.value) &&
//			validateConf(f.conf.value) && 
			validatePhone(f.phone.value) && 
			validateIdNumber(f.idNum.value) && 
			validateRealName(f.realName.value);
}