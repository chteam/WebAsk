function regcheck(){
if (document.regbox.name.value == "")
{
alert("请填写您的用户名！");
document.regbox.name.focus();
return (false);
}
if (document.regbox.pwd.value =="")
{
alert("请填写您的密码！");
document.regbox.pwd.focus();
return (false);
}
if (document.regbox.pwd.value != document.regbox.pwd1.value){
alert("两次输入的密码不一致！");
document.regbox.pwd.focus();
return (false);
}
if(document.regbox.pwd1.value==""){
alert("请输入您的确认密码！");
document.regbox.pwd1.focus();
return (false);
}
if(document.regbox.email.value==""){
alert("请输入您的Email！");
document.regbox.email.focus();
return (false);
}
var filter=/^\s*([A-Za-z0-9_-]+(\.\w+)*@(\w+\.)+\w{2,3})\s*$/;
if (!filter.test(document.regbox.email.value)) {
alert("邮件地址不正确,请重新填写！");
document.regbox.email.focus();
return (false);
}
}