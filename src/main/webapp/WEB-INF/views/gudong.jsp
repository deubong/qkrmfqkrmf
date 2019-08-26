<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
   <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
   <script src="https://www.amcharts.com/lib/4/core.js"></script>
   <script src="https://www.amcharts.com/lib/4/charts.js"></script>
   <script src="https://www.amcharts.com/lib/4/plugins/forceDirected.js"></script>
   <script src="https://www.amcharts.com/lib/4/themes/moonrisekingdom.js"></script>
   <script src="https://www.amcharts.com/lib/4/themes/animated.js"></script>
   <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<title>바글바글</title>
   <style>
         input.test {
            background: url('./resources/arrows.png') 0 0 no-repeat;
         }
         body {
         font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";     
      }
      #chartdiv {
         width: 100%;
         height:700px;
         color: black;
      }
    </style>
</head>
<div id="chartdiv"></div>

<body>
   <div id="type" class="w3-display-topmiddle" style="visibility: hidden;">
        <h1 class="w3-xxlarge w3-animate-top w3-padding-24">어떤 직종을 계획하고 계세요?</h1>
   </div>
    <div id="combo" class="w3-display-middle">
      <h1 class="w3-xxxlarge w3-animate-top">어디서 하실계획이세요?</h1>
      <div class="w3-center">
      <div class="w3-bar">
          <div id="combo"> 
             <div class="w3-row-padding"> 
                <form action="BBSServlet" method="get" enctype="UTF-8">
               <select class="w3-third w3-select w3-medium" id="gu" name="gu"> 
                  <option>구 · 군</option>   
               </select>
               <select class="w3-third w3-select w3-medium" id="dong" name="dong"> 
                  <option>동 · 읍 · 면</option>  
               </select> 
               <select class="w3-third w3-select w3-medium" id="type" name="type">  
                  <option value="'닭/오리요리'">닭/오리요리</option> 
                  <option value="'분식'">분식</option> 
                  <option value="'양식'">양식</option> 
                  <option value="'유흥주점'">유흥주점</option> 
                  <option value="'일식/수산물'">일식/수산물</option> 
                  <option value="'중식'">중식</option> 
                  <option value="'한식'">한식</option> 
                  <option value="'기타'">기타</option>  
               </select>
            
          	   	 <img alt="확인" class="w3-button" src="./resources/a.png" onclick="document.getElementById('b_submit').click();">
                 <input id = "b_submit" type="submit" value="확인" style="visibility: hidden;">
                </form>
            </div>
         </div>
         </div>
       </div>
       </div>        
       
        
    
     <!-- when user clicked the arrowButton, then showed up the bubbles -->
       <script>
       $(document).ready(function() {
           $("#b_submit").click(function() {
        	   if(document.getElementById("gu").value == "구 · 군"){  
        		   alert("구 · 군을 선택하세요");
        		   return false;
        	   }
           })
       });
       
          $(document).ready(function() {
          $("#go").click(function() {
        	  
            var gu = document.getElementById("gu").value;
            var dong = document.getElementById("dong").value;
            var type = document.getElementById("type").value;
   
            // http://localhost:8090/bbs/template.bbs?gu="금정구"&dong="장전2동"&type="닭/오리요리"
            var html = '<a id=hf href="http://localhost:8090/bbs/template.bbs?gu='
            html += "'" + gu +"'";
            html += "&dong=";
            html += "'" + dong +"'";
            html += "&type=";
            html +=  "'" + type +"'";
            html += '></a>';
   
          	$("#go").append(html);
          });
       });

       </script>

      <script>
      // <구·군> 콤보박스 띄우기---------------------------------------------------------------------------------------------------------
      $(document).ready(
            function() {
               $.getJSON("http://127.0.0.1:8090/bbs/json/result.bbs", function(data) {
                  var obj = data;
                  var analysis_result = obj.analysis_result;
                  var gu;
                  
                  for (var i = 0; i < analysis_result.length; i++) {
                           if(gu ==  analysis_result[i].GU){}
                           else{   
                              var option = "<option value="+'"'+"'" + analysis_result[i].GU + "'" + '"'+">" + analysis_result[i].GU + "</option>";
                              $('#gu').append(option);
                              gu =  analysis_result[i].GU;
                             
                           }
                     }
               });
            });

   //-----------------------------------------------------------------------------------------------------------------------------
               
   // <동·읍·면> 동적콤보박스 띄우기---------------------------------------------------------------------------------------------------------
	   $(document).ready(function() {
          $('#gu').change(function(){
            $.ajax({
               url : "http://127.0.0.1:8090/bbs/json/result.bbs",
               type : "get",
               data : {},
               success : function(data) {
                  var obj = data;
                   var analysis_result = obj.analysis_result;
                    var comboGu = document.getElementById("gu");
                    
                    $('#dong').children("option").remove();
                    
                    var option = "<option value='전체'>전체</option>";
                   $('#dong').append(option);
                   
                  
                   var str = comboGu.value;
                   var str1 = str.substring(1, str.length-1);
                   
                  for (var i = 0; i < analysis_result.length; i++) {
                     if(analysis_result[i].GU == str1){   
                    	 var option = "<option value="+'"'+"'" + analysis_result[i].DONG + "'" + '"'+">" + analysis_result[i].DONG + "</option>";
                         $('#dong').append(option);
                        }
                     } 
                  }
               });
             });
            });

   
   //---------------------------------------------------------------------------------------------------------------------------------------

   </script>
    <footer class="w3-container w3-black w3-center w3-display-bottommiddle" style="width:100%">
      <p class="w3-text-white">@Copyright : 바글바글</p>
    </footer>
</body>
</html>