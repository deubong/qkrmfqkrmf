<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
     <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="https://d3js.org/d3.v4.min.js"></script>
    <style>
      text {
        font: 10px;
      }
      a:hover {
        background: yellow;
      }
    </style>
<title>바글바글</title>
</head>
<body>
	<div class=" w3-display-topmiddle">
      <h1 class="w3-xxxlarge w3-animate-top">어떤 직종을 계획하고 계세요?</h1>
      <div class="w3-center" id="food"></div>
      <script type="text/javascript">
          dataset = {
              "children": [
                  {"Name":"한식","Count":500},
                  {"Name":"중식","Count":419},
                  {"Name":"양식","Count":253},
                  {"Name":"일식/수산물","Count":274},
                  {"Name":"분식","Count":184},
                  {"Name":"유흥주점","Count":809},
                  {"Name":"닭/오리요리","Count":713},
                  {"Name":"기타","Count":106}]
          };

          var width = 900;
          var height = 800;
          var color = d3.scaleOrdinal(d3.schemeCategory20);

          var bubble = d3.pack(dataset)
              .size([width, height])
              .padding(10);

          var svg = d3.select("body")
              .append("center")
              .append("svg")
              .attr("width", width)
              .attr("height", height)
              .attr("class", "bubble")
              // .margin(20
              .append("a")
              .attr("xlink:href", "http://www.google.com");

          // svg.append("a")
          //     .attr("xlink:href", "")
          var nodes = d3.hierarchy(dataset)
              .sum(function(d) {
                return d.Count;
              });

          var node = svg.selectAll(".node")
              .data(bubble(nodes).descendants())
              .enter()
              .filter(function(d){
                  return !d.children
              })
              .append("g")
              .attr("class", "node")
              .attr("transform", function(d) {
                  return "translate(" + d.x + "," + d.y + ")";
              });

          node.append("title")
              .text(function(d) {
                  return d.Name + ": " + d.Count;
              });

          node.append("circle")
              .attr("r", function(d) {
                  return d.r;
              })
              .style("fill", function(d,i) {
                  return color(i);
              });

          node.append("text")
              .attr("dy", ".2em")
              .style("text-anchor", "middle")
              .text(function(d) {
                  return d.data.Name.substring(0, d.r / 3);
              })
              .attr("font-family", "sans-serif")
              .attr("font-size", function(d){
                  return d.r/3;
              })
              .attr("fill", "white");

          node.append("text")
              .attr("dy", "1.3em")
              .style("text-anchor", "middle")
              .text(function(d) {
                  return d.data.Count;
              })
              .attr("font-family",  "Gill Sans", "Gill Sans MT")
              .attr("font-size", function(d){
                  return d.r/5;
              })
              .attr("fill", "white");

          d3.select(self.frameElement)
              .style("height", height + "px");
	</script>
</body>
</html>



   
      