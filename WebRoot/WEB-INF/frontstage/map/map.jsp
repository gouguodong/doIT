<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <meta charset="utf-8">
	<title>爱智网 - 课程关系图谱</title>
	<script src="<%=basePath %>frontstage/KFdemo/js/esl.js"></script>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  	<jsp:include page="../nav.jsp"></jsp:include>
    <div id = "demo1" style="height:600px;border:1px solid #ccc;padding:1px;" ></div>
    <script type="text/javascript">
	require.config({
        packages:[{
            name:'echarts',
            location:'frontstage/KFdemo/echarts/src',
            main:'echarts'
        },{
            name:'zrender',
            location:'frontstage/KFdemo/zrender/src',
            main:'zrender'
        }]
    });
    var  option = {};
require(
    [
        'echarts',
        'echarts/chart/kforce',
    ],
    function(ec) {
        var myChart = ec.init(document.getElementById('demo1'));
		getData(0, myChart);
    }
)
function getData(courseId, myChart) {
	$.ajax({
		url : "courseMap/getData.action",
		data : "courseId=" + courseId,
		type : "post",
		dataType : "json",
		success : function(data) {
			var first = data.recordList[0];
			var myLink = [];
			var myNode = [
				 {category:0, name: first.courseName, value : 10,shapeType:'rectangle',onclick:function(params){
                },
                  itemStyle:{
                    normal:{
                        width:120,
                        height:80
                    }
                }},
			];
			for (var i = 1; i < data.recordList.length; i++) {
				var l = {
					source : i, target : 0, weight : data.recordList[i].courseId
				};
				myLink.push(l);
				var n = {
					category:1, name: data.recordList[i].courseName, value : data.recordList[i].courseId,shapeType:'rectangle',onclick:function(params){
						getData(params.target._echartsData._data.value, myChart);
               		}
				};
				myNode.push(n);
			}
			option = {
			    title : {
			        text: '课程图谱: ' + first.courseName,
			        x:'right',
			        y:'bottom'
			    },
			    tooltip : {
			        trigger: 'item',
			        formatter: '{a} : {b}'
			    },
			    isShowScrollBar:false,
			    series: [
			        {
			            type:'kforce',
			            categories : [
			                {
			                    name: '核心课程',
			                    itemStyle: {
			                        normal: {
			                            color : '#3333FF'
			                        }
			                    }
			                },
			                {
			                    name:'相关课程',
			                    itemStyle: {
			                        normal: {
			                            color : '#87cdfa'
			                        }
			                    }
			                }
			            ],
			            itemStyle: {
			                normal: {
			                    label: {
			                        show: true,
			                        textStyle: {
			                            color: '#000000'
			                        }
			                    },
			                    nodeStyle : {
			                        brushType : 'both',
			                        strokeColor : 'rgba(255,215,0,0.4)',
			                        lineWidth : 2
			                    }
			                },emphasis:{
			                    linkStyle : { strokeColor : '#5182AB'}
			                }
			            },
			            minRadius : 15,
			            maxRadius : 25,
			            density : 0.8,
			            attractiveness: 0.8,
			            nodes: myNode,
			            links : myLink
			        }
			    ]
			};
			myChart.setOption(option);
		}
	});
}
</script>
  </body>
</html>
