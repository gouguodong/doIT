<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<base href="<%=basePath%>">
<title>爱智网 - 在线运行代码</title>
<!-- html5消息提示框  -->
<link href="http://fonts.useso.com/css?family=Raleway:400,300,700"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>frontstage/notification/css/normalize.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>frontstage/notification/css/demo.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>frontstage/notification/css/ns-default.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>frontstage/notification/css/ns-style-bar.css" />
<script
	src="<%=basePath%>frontstage/notification/js/modernizr.custom.js"></script>
<!--[if IE]>
  		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->

<link href="<%=basePath%>frontstage/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="<%=basePath%>frontstage/css/font-awesome.min.css">
<script src="<%=basePath%>frontstage/js/jquery-1.10.2.min.js"></script>
<script src="<%=basePath%>frontstage/js/bootstrap.min.js"></script>

<!-- codemirror-5.3 -->
<link rel="stylesheet"
	href="<%=basePath%>frontstage/codemirror/codemirror.css">
<link rel="stylesheet"
	href="<%=basePath%>frontstage/codemirror/show-hint.css">
<link rel="stylesheet"
	href="<%=basePath%>frontstage/codemirror/simplescrollbars.css">
<script src="<%=basePath%>frontstage/codemirror/codemirror.js"></script>
<script src="<%=basePath%>frontstage/codemirror/clike.js"></script>
<script src="<%=basePath%>frontstage/codemirror/matchbrackets.js"></script>
<script src="<%=basePath%>frontstage/codemirror/show-hint.js"></script>
<script src="<%=basePath%>frontstage/codemirror/simplescrollbars.js"></script>


<!-- htmlmixed -->
<script
	src="<%=basePath%>frontstage/codemirror/htmlmixed/selection-pointer.js"></script>
<script src="<%=basePath%>frontstage/codemirror/htmlmixed/xml.js"></script>
<script src="<%=basePath%>frontstage/codemirror/htmlmixed/javascript.js"></script>
<script src="<%=basePath%>frontstage/codemirror/htmlmixed/css.js"></script>
<script src="<%=basePath%>frontstage/codemirror/htmlmixed/vbscript.js"></script>
<script src="<%=basePath%>frontstage/codemirror/htmlmixed/htmlmixed.js"></script>



<link rel="stylesheet" href="<%=basePath%>frontstage/css/code.css">
<link rel="stylesheet" href="<%=basePath%>frontstage/css/loading.css">
</head>
<body>
	<jsp:include page="nav.jsp"></jsp:include>

	<ul id="myTab" class="nav nav-tabs">
		<li class="active"><a href="#codeJava" data-toggle="tab">Java</a>
		</li>
		<li><a href="#codeHTML" data-toggle="tab">HTML</a></li>
	</ul>
	<div id="myTabContent" class="tab-content">
		<div class="tab-pane fade in active" id="codeJava">
			<div class="mPanel">
				<textarea id="java-code">
public class Hello {
	public static void main(String[] args) {
     	for (String arg : args) {
         	System.out.println(arg); 
        
        }
    }
}        
				</textarea>
				<div id="id_group_options">
					<label for="id_mainClass" class="mainClass args">主类</label> <input
						id="id_mainClass" name="mainClass" value="Hello"
						class="classArgsInput" type="textfield"> <label
						for="id_args" class="args">运行时参数</label> <input id="id_args"
						name="args" value="aadd dd ddd" class="argsInput" type="textfield">
				</div>
				<button class="btn btn-primary"
					style="float:right;margin-right: 10px;" onclick="saveCode(1);">保存</button>
				<button class="btn btn-primary"
					style="float:right;margin-right: 10px;" onclick="runCode();">运行</button>
			</div>
			<div class="right mPanel">
				<h4>在线编程</h4>
				<p>在左边编写你的代码，点击左边运行按钮即可在右边查看代码运行结果。^_^</p>
				<div id="view_status" class="well well-sm">
					<span class="label label-primary marginRight10px">status</span> <span
						id="status"></span>
				</div>
				<p class="border_bottom">编译资讯</p>
				<div id="compileInfo" class="showInfoStyle"></div>
				<p class="border_bottom">输出信息</p>
				<div id="outputInfo" class="showInfoStyle"></div>
			</div>
		</div>
		<div class="tab-pane fade" id="codeHTML">
			<div class="mPanel">
				<textarea id="html-code"></textarea>
				<button class="btn btn-primary"
					style="float:right;margin-right: 10px;" onclick="saveCode(2);">保存</button>
				<button class="btn btn-primary"
					style="float:right;margin-right: 10px;" onclick="runHTMLCode();">运行</button>
			</div>
			<div class="right mPanel">
				<!-- <h4>在线编程</h4>
                <p>在左边编写你的代码，点击左边运行按钮即可在右边查看代码运行结果。^_^</p> -->
				<iframe id="htmlIframe" frameborder="0" height="99%" width="100%"
					scrolling="auto"> </iframe>
			</div>
		</div>
	</div>
	<div class="box off">
		<div class="windows8">
			<div class="wBall" id="wBall_1">
				<div class="wInnerBall"></div>
			</div>
			<div class="wBall" id="wBall_2">
				<div class="wInnerBall"></div>
			</div>
			<div class="wBall" id="wBall_3">
				<div class="wInnerBall"></div>
			</div>
			<div class="wBall" id="wBall_4">
				<div class="wInnerBall"></div>
			</div>
			<div class="wBall" id="wBall_5">
				<div class="wInnerBall"></div>
			</div>
		</div>
	</div>
	<script src="<%=basePath%>frontstage/notification/js/classie.js"></script>
	<script src="<%=basePath%>frontstage/notification/js/notificationFx.js"></script>
	<script type="text/javascript">
     var javaEditor = CodeMirror.fromTextArea(document.getElementById("java-code"), {
        lineNumbers: true,
        lineWrapping: true,
        matchBrackets: true,
        mode: "text/x-java",
        scrollbarStyle: "simple"
      });
     
     function runCode() {
     	// console.info($("#javaCode").text());
     	// console.info($("#id_mainClass").val()); 
     	// console.info($("#id_args").val());
     	var data = "className=" + $("#id_mainClass").val() + "&code=" + javaEditor.getValue() + "&runArgs=" + $("#id_args").val();
     	$.ajax({
 		   type: "POST",
 		   url: "<%=basePath%>code/runCode.action",
			dataType : "json",
			data : data,
			success : function(codeResult) {
				console.info(codeResult);
				codeResult.result = codeResult.result.replace(/\n/g, "<br/>");
				codeResult.result = codeResult.result.replace(/\t/g,
						"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
				$("#view_status").children().remove(".error")
						.remove(".success");
				$("#compileInfo").text("");
				$("#outputInfo").text("");
				if (codeResult.status == 1) {
					// 编译失败
					$("#view_status").append(
							"<span class='error'>编译失败（CE）</span>");
					$("#compileInfo").html(codeResult.result);
				} else if (codeResult.status == 2) {
					// 运行错误
					$("#view_status").append(
							"<span class='error'>执行期间发生错误（RE）</span>");
					$("#outputInfo").html(codeResult.result);
				} else {
					// 运行成功
					$("#view_status").append(
							"<span class='success'>运行成功</span>");
					$("#outputInfo").html(codeResult.result);
				}
			}
		});
	}

	$(document).ajaxStart(function() {
		$(".box").removeClass("off");
	});
	$(document).ajaxSuccess(function() {
		$(".box").addClass("off");
	});

	
	//HTMLEditor
    var mixedMode = {
      name: "htmlmixed",
      scriptTypes: [{matches: /\/x-handlebars-template|\/x-mustache/i,
                     mode: null},
                    {matches: /(text|application)\/(x-)?vb(a|script)/i,
                     mode: "vbscript"}]
    };
    var htmlEditor = CodeMirror.fromTextArea(document.getElementById("html-code"), {
      mode: mixedMode, 
      selectionPointer: true,
      scrollbarStyle: "simple"
    });
	
	function runHTMLCode() {
		// alert(htmlEditor.getValue());
		var iframeWindow = $("#htmlIframe")[0].contentWindow;
		$(iframeWindow.document.documentElement).empty();
		// iframeWindow.document.write(htmlEditor.getValue());
		$(iframeWindow.document.documentElement).html(htmlEditor.getValue());
	}

	
	function saveCode(type) {
		var code = ""; 
		if (type == 1) {
			code = javaEditor.getValue();
		} else {
			code = htmlEditor.getValue();
		}
		var data = "code=" + code + "&type=" + type;
		
     	$.ajax({
 		   type: "POST",
 		   url: "<%=basePath%>code/saveCode.action",
				data : data,
				success : function(result) {
					// create the notification
					var notification = new NotificationFx({
						message : '<span class="icon icon-megaphone"></span><p>保存成功.如果想要查看，请点击<a href="#">这里</a>. </p>',
						layout : 'bar',
						effect : 'slidetop',
						type : 'notice', // notice, warning or error
						onClose : function() {
							return false;
						}
					});
					// show the notification
					notification.show();
				}
			});
		}
	
	</script> 
</body>
</html>