<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
   <link href='https://fonts.googleapis.com/css?family=Anton|Passion+One|PT+Sans+Caption' rel='stylesheet' type='text/css'>
<title>바글바글</title>
<style>
@import url('https://fonts.googleapis.com/css?family=Fira+Mono:400');
.content{
  text-align: center;
}
body{ 
  display: flex;
  width: 100vw;
  height: 100vh;
  align-items: center;
  justify-content: center;
  margin: 0;
  background: #131313;
  color: #fff;
  font-size: 40px;
  font-family: 'Fira Mono', monospace;
  letter-spacing: -7px;
}

div{
  animation: glitch 1s linear infinite;
}

a{
   display: block;
   text-transform: uppercase;
   font-weight: 200;
   color: #ffffff;
   text-decoration: none;

}


@keyframes glitch{
  2%,64%{
    transform: translate(2px,0) skew(0deg);
  }
  4%,60%{
    transform: translate(-2px,0) skew(0deg);
  }
  62%{
    transform: translate(0,0) skew(5deg); 
  }
}

div:before,
div:after{
  content: attr(title);
  position: absolute;
  left: 0;
}

div:before{
  animation: glitchTop 1s linear infinite;
  clip-path: polygon(0 0, 100% 0, 100% 33%, 0 33%);
  -webkit-clip-path: polygon(0 0, 100% 0, 100% 33%, 0 33%);
}

@keyframes glitchTop{
  2%,64%{
    transform: translate(2px,-2px);
  }
  4%,60%{
    transform: translate(-2px,2px);
  }
  62%{
    transform: translate(13px,-1px) skew(-13deg); 
  }
}

div:after{
  animation: glitchBotom 1.5s linear infinite;
  clip-path: polygon(0 67%, 100% 67%, 100% 100%, 0 100%);
  -webkit-clip-path: polygon(0 67%, 100% 67%, 100% 100%, 0 100%);
}

@keyframes glitchBotom{
  2%,64%{
    transform: translate(-2px,0);
  }
  4%,60%{
    transform: translate(-2px,0);
  }
  62%{
    transform: translate(-22px,5px) skew(21deg); 
  }
}   
</style>
   
</head>
<body>
   <div class="content" title="404">404</div>
   <div>
      <a href="index.bbs">Back to Home</a>
   </div>
   
</body>
</html>