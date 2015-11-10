$(function() {
	init();
});
function helloworld() {
	SendPushService.send("2", "第一个dwr推程序", function(msg) {
	});
}
/** 由dwr在后台调用这个方法* */
function doReply(data) {
	 alert(data);
}
function init() {
    dwr.engine.setActiveReverseAjax(true); // 激活反转 重要     
    SendPushService.addScriptSession("2",function(msg){});  
} 