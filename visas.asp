 <%
strDBPath = Server.MapPath("control/db/baris.mdb")              
Set cnn = Server.CreateObject("ADODB.Connection")             
Set rst2 = Server.CreateObject("ADODB.RecordSet")         
cnn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & strDBPath & ";"
%><!DOCTYPE html>
<html lang="en">
<head>
    <title>SprinVisaPassport</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="icon" href="favicon.ico" type="image/x-icon">
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
    <meta name="description" content="Your description">
    <meta name="keywords" content="Your keywords">
    <meta name="author" content="Your name">
    <link rel="stylesheet" href="css/bootstrap.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/responsive.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="screen">


    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400,400italic,' rel='stylesheet' type='text/css'>
  <script type="text/javascript" src="http://www.uzmancevap.org/lib/javascript/prefixfree.min.js"></script>
  <script type="text/javascript" src="http://www.uzmancevap.org/lib/javascript/jquery.min.js"></script>
      <script type="text/javascript" src="http://code.jquery.com/jquery-1.7.min.js"></script>
  
   <style>
   .table {
    width: 99%;
    display: table;
  border: #e5e5e5 1px solid;
}
    .table div {
        display: table-row;
    }
        .table div div {
            display: table-cell;
            text-align: center;
      padding-top:10px;
      padding-left:10px;
      padding-bottom:10px;
      border-bottom:#e5e5e5 1px solid;
        }
            .table div div.th {
                font-weight: bold;
        width:24%;
        
        
        
            }
   #navigation{
    height:25px;

   
}
#navigation ul{
    list-style:none;
  float:left;
  margin-left:2px;
}
#navigation ul li{
  float:left;

    position:relative;
  margin:0px 2px;
}
#navigation ul li a{
    display:block;
    height:25px;
    background-color:#444;
    color:#777;
    outline:none;

    text-decoration:none;
    line-height:25px;
    padding:10px 20px;
    border-right:1px solid #fff;
    border-left:1px solid #fff;
    background:#f0f0f0;
    background:
        -webkit-gradient(
        linear,
        left bottom,
        left top,
        color-stop(0.09, rgb(240,240,240)),
        color-stop(0.55, rgb(227,227,227)),
        color-stop(0.78, rgb(240,240,240))
        );
    
    background:
        -moz-linear-gradient(
        center bottom,
        rgb(240,240,240) 9%,
        rgb(227,227,227) 55%,
        rgb(240,240,240) 78%
        )
}
 #navigation2{
    height:15px;

   
}
#navigation2 ul{
    list-style:none;
  float:left;
  margin-left:2px;
}
#navigation2 ul li{
  float:left;

    position:relative;
  margin:0px 2px;
}
#navigation2 ul li a{
    display:block;
    height:15px;
    background-color:#444;
    color:#777;
    outline:none;

    text-decoration:none;
    line-height:15px;
    padding:5px 13px;
  margin-bottom:5px;
    border-right:1px solid #fff;
    border-left:1px solid #fff;
    background:#f0f0f0;
    background:
        -webkit-gradient(
        linear,
        left bottom,
        left top,
        color-stop(0.09, rgb(240,240,240)),
        color-stop(0.55, rgb(227,227,227)),
        color-stop(0.78, rgb(240,240,240))
        );
    }
    #navigation2 ul li a:hover,
#navigation2 ul li.selected a{
    background:#d8d8d8;
    color:#666;
 
}
#navigation ul li a:hover,
#navigation ul li.selected a{
    background:#d8d8d8;
    color:#666;
 
}
   body{
    color:#444444;
    font-size:13px;
    background: #f2f2f2;
    font-family:"Century Gothic", Helvetica, sans-serif;
}
  /*custom font*/
[placeholder]:focus::-webkit-input-placeholder {
  transition: opacity 0.5s 0.5s ease; 
  opacity: 1;
}
#input-search::-webkit-input-placeholder { /* WebKit browsers */
    color:#fff;
   font-size:14px;
}

#input-search:-moz-placeholder { /* Mozilla Firefox 4 to 18 */
    color:#fff;
   font-size:14px;
}

#input-search::-moz-placeholder { /* Mozilla Firefox 19+ */
    color:#fff;
   font-size:14px;
}

#input-search:-ms-input-placeholder { /* Internet Explorer 10+ */
    color:#fff;
   font-size:14px;
}
select.state_av{
    width: 24% !important;
float:left;
}
 .month_av{
    width: 31.5% !important;
    float: left;
    margin-right: 3%;
}
 .day_av{
    margin-right: 3%;
    width: 31.5% !important;
    float: left;
}
 .year_av{
    float: right;
    width: 31% !important;
}

/*form styles*/
#msform {
  width: 80%;
  margin:0 auto;
  text-align: center;
  position: relative;
}
#msform fieldset {
  background: white;
  border: 0 none;
  border-radius: 3px;
  box-shadow: 0 0 15px 0 rgba(0, 0, 0, 0.1);
  padding: 10px 10px;
  box-sizing: border-box;
  width: 80%;
  margin: 0 10%;
  /*stacking fieldsets above each other*/
  position: absolute;
  float: right;
}
/*Hide all except first fieldset*/
#msform fieldset:not(:first-of-type) {
  display: none;
}
/*inputs*/
#msform input, #msform textarea {
  padding: 15px;
  border: 1px solid #ccc;
  border-radius: 3px;
  margin-bottom: 10px;
  width: 100%;
  box-sizing: border-box;

  color: #2C3E50;
  font-size: 13px;
}
/*buttons*/
#msform .action-button {
  width: 100px;
  background: #27AE60;
  font-weight: bold;
  color: white;
  border: 0 none;
  border-radius: 1px;
  cursor: pointer;
  padding: 10px 5px;
  margin: 10px 5px;
}
#msform .action-button:hover, #msform .action-button:focus {
  box-shadow: 0 0 0 2px white, 0 0 0 3px #27AE60;
}
/*headings*/
.fs-title {
  font-size: 15px;
  text-transform: uppercase;
  color: #2C3E50;
  margin-bottom: 10px;
  margin-left:0px;
}
.fs-subtitle {
  font-weight: normal;
  font-size: 13px;
  color: #666;
  margin-left:0px;
  margin-bottom: 10px;
}
/*progressbar*/
#progressbar {
  margin-bottom: 30px;
  overflow: hidden;
  /*CSS counters to number the steps*/
  counter-reset: step;
}
#progressbar li {
  list-style-type: none;
  
  text-transform: uppercase;
  font-size: 9px;
  width: 33.33%;
  float: left;
  position: relative;
}
#progressbar li:before {
  content: counter(step);
  counter-increment: step;
  width: 20px;
  line-height: 20px;
  display: block;
  font-size: 10px;

  border-radius: 3px;
  margin: 0 auto 5px auto;
}
/*progressbar connectors*/
#progressbar li:after {
  content: '';
  width: 100%;
  height: 2px;

  position: absolute;
  left: -50%;
  top: 9px;
  z-index: -1; /*put it behind the numbers*/
}
#progressbar li:first-child:after {
  /*connector not needed before the first step*/
  content: none; 
}
/*marking active/completed steps green*/
/*The number of the step and the connector before it = green*/
#progressbar li.active:before,  #progressbar li.active:after{
  background: #43466c;
  color: white;
}

     </style>

  <script>
 
    window.console = window.console || function(t) {};
    window.open = function(){ console.log('window.open is disabled.'); };
    window.print = function(){ console.log('window.print is disabled.'); };
    // Support hover state for mobile.
    if (false) {
      window.ontouchstart = function(){};
    }
  </script>

        


  <style type="text/css">
  #akordion {margin:0 auto;width:500px;}
.baslik {border:1px solid #151838; margin-left:30PX;padding:10px;color:#fff;background:#43466c;margin-top:3px;cursor:pointer; position:relative;}
.baslik .icon {position:absolute;width:16px;height:16px; left:95%; top:20%; font-weight:bold; }
.baslik .iconplus{background: url('https://cdn1.iconfinder.com/data/icons/uidesignicons/plus.png')}
.baslik .iconminus{background: url('https://cdn1.iconfinder.com/data/icons/uidesignicons/minus.png')}
.icerik {border:1px solid #b3b4c1;padding:5px;margin-left:30PX; line-height:20px;}  
  </style>
  <!--#style -->
    
  <!-- gerekli dosyalar -->

  <!--#gerekli dosyalar -->
  <!--[if lt IE 8]>
      <div style='text-align:center'><a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://www.theie6countdown.com/img/upgrade.jpg"border="0"alt=""/></a></div>  
  <![endif]-->
  
  <!--[if (gt IE 9)|!(IE)]><!-->
  <!--<![endif]-->
    <!--[if lt IE 9]>
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic' rel='stylesheet' type='text/css'>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <link rel="stylesheet" href="css/ie.css" type="text/css" media="screen">
  <![endif]-->
    <style type="text/css">
<!--
.style1 {
  font-size: 14px;
  color: #000000;
}
-->
    </style>
</head>

<body>
<div class="main">
    <!--==============================header=================================-->
    <header>
      <div class="container">
        <div class="row">
          <div class="span12 clearfix">
            <div class="header-block">
              <h1 class="brand"><a href="index.asp"><img src="img/Sprint-Visa-Logo2.png" alt="" width="350" height="96" border="0"></a></h1>
              <div class="clearfix">
                <form name="das" id="search-form" action="#" method="GET" accept-charset="utf-8" class="navbar-form" >
                  <a href="#" onClick="document.getElementById('search-form').submit()"></a>
                  <input type="text" name="s" onBlur="if(this.value=='') this.value=''" onFocus="if(this.value =='' ) this.value=''"  >
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="nav-bg">
            <div class="container">
                <div class="navbar navbar_ clearfix row">
                   <div class="navbar-inner span12">       
                      <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse_">menu</a>
                      <div class="nav-collapse nav-collapse_ collapse">
                        <ul class="nav sf-menu">
                          <li class="active"><a href="#">VISA</a></li>
                          <li><a href="index-33.html">U.S. PASSPORT</a></li>
                          <li><a href="authentication.html">Legalization</a></li>
                          <li><a href="translation.asp">Translation</a></li>
                          <li><a href="status_check.asp">STATUS CHECK</a></li>
                          <li><a href="contact.html">Contacts</a></li>
                        </ul>
                      </div>
                   </div>
              </div>
          </div>
      </div>
    </header>
    
    <!--==============================content=================================-->
<footer>  
<div style="width:99%; line-height:25px;">

 <div id="steps">
                
                  <fieldset class="step">
                  <div class="style1" style="width:90%; margin-top:30px; padding:35px 50px 30px 40px;">
          
      <div id="navigation2">
                <ul>
                <li><a href="#linkA">A</a></li><li class="customs_letter2"><a href="#linkB">B</a></li><li class="customs_letter2"><a href="#linkC">C</a></li><li class="customs_letter2"><a href="#linkD">D</a></li><li class="customs_letter2"><a href="#linkE">E</a></li><li class="customs_letter2"><a href="#linkF">F</a></li><li class="customs_letter2"><a href="#linkG">G</a></li><li class="customs_letter2"><a href="#linkH">H</a></li><li class="customs_letter2"><a href="#linkI">I</a></li><li class="customs_letter2"><a href="#linkJ">J</a></li><li class="customs_letter2"><a href="#linkK">K</a></li><li class="customs_letter2"><a href="#linkL">L</a></li><li class="customs_letter2"><a href="#linkM">M</a></li><li class="customs_letter2"><a href="#linkN">N</a></li><li class="customs_letter2"><a href="#linkO">O</a></li><li class="customs_letter2"><a href="#linkP">P</a></li><li class="customs_letter2"><a href="#linkQ">Q</a></li><li class="customs_letter2"><a href="#linkR">R</a></li><li class="customs_letter2"><a href="#linkS">S</a></li><li class="customs_letter2"><a href="#linkT">T</a></li><li class="customs_letter2"><a href="#linkU">U</a></li><li class="customs_letter2"><a href="#linkV">V</a></li><li class="customs_letter2"><a href="#linkW">W</a></li><li class="customs_letter2"><a href="#linkY">Y</a></li><li class="customs_letter2"><a href="#linkZ">Z</a></li>
                </ul>
             </div>
          
          </div>
              <div class="style1" style="width:90%; margin-top:30px; padding:35px 50px 30px 40px;">
          
                  <div align="left">For visas requirements and application click on the country of destination</div>
          </div>
              <div style="float:left; width:85%; padding:10px 20px 15px 30px;border: #d5d2ce 1px solid; margin-left:35px;margin-TOP:5px;">
       <div><SPAN id="linkA" style="font-size:16PX;">A</SPAN></div> <% 
 sql_olustur = "SELECT *  FROM program where (program_adi like 'A%') order by program_adi asc"
 Set rst = cnn.Execute(sql_olustur) %>
 <% Do While Not rst.EOF%> 
   <div style="width:24%; float:left;">
                 <div align="left" class="list2"><a href="index-4.asp?id_type=<%=rst("gurup_id")%>&id_style=<%=rst("id")%>"><%=rst("program_adi")%></a></div>
          </div><%
rst.MoveNext
Loop
 
%>
                
               
    </div>
  <div style="float:left; width:85%; padding:10px 20px 15px 30px;border: #d5d2ce 1px solid; margin-left:35px;margin-TOP:5px;">
     <div><SPAN id="linkB" style="font-size:16PX;">B</SPAN></div>   <% 
 sql_olustur = "SELECT *  FROM program where (program_adi like 'B%') order by program_adi asc"
 Set rst = cnn.Execute(sql_olustur) %>
 <% Do While Not rst.EOF%> 
   <div style="width:24%; float:left;">
                 <div align="left" class="list2"><a href="index-4.asp?id_type=<%=rst("gurup_id")%>&id_style=<%=rst("id")%>"><%=rst("program_adi")%></a></div>
          </div><%
rst.MoveNext
Loop
 
%>
                
               
    </div>
  <div style="float:left; width:85%; padding:10px 20px 15px 30px;border: #d5d2ce 1px solid; margin-left:35px;margin-TOP:5px;">
       <div><SPAN id="linkC" style="font-size:16PX;">C</SPAN></div>  <% 
 sql_olustur = "SELECT *  FROM program where (program_adi like 'C%') order by program_adi asc"
 Set rst = cnn.Execute(sql_olustur) %>
 <% Do While Not rst.EOF%> 
   <div style="width:24%; float:left;">
                 <div align="left" class="list2"><a href="index-4.asp?id_type=<%=rst("gurup_id")%>&id_style=<%=rst("id")%>"><%=rst("program_adi")%></a></div>
          </div><%
rst.MoveNext
Loop
 
%>
                
               
    </div>
  <div style="float:left; width:85%; padding:10px 20px 15px 30px;border: #d5d2ce 1px solid; margin-left:35px;margin-TOP:5px;">
       <div><SPAN id="linkD" style="font-size:16PX;">D</SPAN></div>  <% 
 sql_olustur = "SELECT *  FROM program where (program_adi like 'D%') order by program_adi asc"
 Set rst = cnn.Execute(sql_olustur) %>
 <% Do While Not rst.EOF%> 
   <div style="width:24%; float:left;">
                 <div align="left" class="list2"><a href="index-4.asp?id_type=<%=rst("gurup_id")%>&id_style=<%=rst("id")%>"><%=rst("program_adi")%></a></div>
          </div><%
rst.MoveNext
Loop
 
%>
                
               
    </div>
  <div style="float:left; width:85%; padding:10px 20px 15px 30px;border: #d5d2ce 1px solid; margin-left:35px;margin-TOP:5px;">
       <div><SPAN id="linkE" style="font-size:16PX;">E</SPAN></div>  <% 
 sql_olustur = "SELECT *  FROM program where (program_adi like 'E%') order by program_adi asc"
 Set rst = cnn.Execute(sql_olustur) %>
 <% Do While Not rst.EOF%> 
   <div style="width:24%; float:left;">
                 <div align="left" class="list2"><a href="index-4.asp?id_type=<%=rst("gurup_id")%>&id_style=<%=rst("id")%>"><%=rst("program_adi")%></a></div>
          </div><%
rst.MoveNext
Loop
 
%>
                
               
    </div>
  <div style="float:left; width:85%; padding:10px 20px 15px 30px;border: #d5d2ce 1px solid; margin-left:35px;margin-TOP:5px;">
        <div><SPAN id="linkF" style="font-size:16PX;">F</SPAN></div> <% 
 sql_olustur = "SELECT *  FROM program where (program_adi like 'F%') order by program_adi asc"
 Set rst = cnn.Execute(sql_olustur) %>
 <% Do While Not rst.EOF%> 
   <div style="width:24%; float:left;">
                 <div align="left" class="list2"><a href="index-4.asp?id_type=<%=rst("gurup_id")%>&id_style=<%=rst("id")%>"><%=rst("program_adi")%></a></div>
          </div><%
rst.MoveNext
Loop
 
%>
                
               
    </div>
  <div style="float:left; width:85%; padding:10px 20px 15px 30px;border: #d5d2ce 1px solid; margin-left:35px;margin-TOP:5px;">
       <div><SPAN id="linkG" style="font-size:16PX;">G</SPAN></div>  <% 
 sql_olustur = "SELECT *  FROM program where (program_adi like 'G%') order by program_adi asc"
 Set rst = cnn.Execute(sql_olustur) %>
 <% Do While Not rst.EOF%> 
   <div style="width:24%; float:left;">
                 <div align="left" class="list2"><a href="index-4.asp?id_type=<%=rst("gurup_id")%>&id_style=<%=rst("id")%>"><%=rst("program_adi")%></a></div>
          </div><%
rst.MoveNext
Loop
 
%>
                
               
    </div>
  <div style="float:left; width:85%; padding:10px 20px 15px 30px;border: #d5d2ce 1px solid; margin-left:35px;margin-TOP:5px;">
     <div><SPAN id="linkH" style="font-size:16PX;">H</SPAN></div>   <% 
 sql_olustur = "SELECT *  FROM program where (program_adi like 'H%') order by program_adi asc"
 Set rst = cnn.Execute(sql_olustur) %>
 <% Do While Not rst.EOF%> 
   <div style="width:24%; float:left;">
                 <div align="left" class="list2"><a href="index-4.asp?id_type=<%=rst("gurup_id")%>&id_style=<%=rst("id")%>"><%=rst("program_adi")%></a></div>
          </div><%
rst.MoveNext
Loop
 
%>
                
               
    </div>
  <div style="float:left; width:85%; padding:10px 20px 15px 30px;border: #d5d2ce 1px solid; margin-left:35px;margin-TOP:5px;">
       <div><SPAN id="linkI" style="font-size:16PX;">I</SPAN></div>  <% 
 sql_olustur = "SELECT *  FROM program where (program_adi like 'I%') order by program_adi asc"
 Set rst = cnn.Execute(sql_olustur) %>
 <% Do While Not rst.EOF%> 
   <div style="width:24%; float:left;">
                 <div align="left" class="list2"><a href="index-4.asp?id_type=<%=rst("gurup_id")%>&id_style=<%=rst("id")%>"><%=rst("program_adi")%></a></div>
          </div><%
rst.MoveNext
Loop
 
%>
                
               
    </div>
  <div style="float:left; width:85%; padding:10px 20px 15px 30px;border: #d5d2ce 1px solid; margin-left:35px;margin-TOP:5px;">
       <div><SPAN id="linkJ" style="font-size:16PX;">J</SPAN></div>  <% 
 sql_olustur = "SELECT *  FROM program where (program_adi like 'J%') order by program_adi asc"
 Set rst = cnn.Execute(sql_olustur) %>
 <% Do While Not rst.EOF%> 
   <div style="width:24%; float:left;">
                 <div align="left" class="list2"><a href="index-4.asp?id_type=<%=rst("gurup_id")%>&id_style=<%=rst("id")%>"><%=rst("program_adi")%></a></div>
          </div><%
rst.MoveNext
Loop
 
%>
                
               
    </div>

                
               
    </div>
  <div style="float:left; width:85%; padding:10px 20px 15px 30px;border: #d5d2ce 1px solid; margin-left:35px;margin-TOP:5px;">
   <div><SPAN id="linkL" style="font-size:16PX;">L</SPAN></div>  <% 
 sql_olustur = "SELECT *  FROM program where (program_adi like 'L%') order by program_adi asc"
 Set rst = cnn.Execute(sql_olustur) %>
 <% Do While Not rst.EOF%> 
   <div style="width:24%; float:left;">
                 <div align="left" class="list2"><a href="index-4.asp?id_type=<%=rst("gurup_id")%>&id_style=<%=rst("id")%>"><%=rst("program_adi")%></a></div>
          </div><%
rst.MoveNext
Loop
 
%>
                
               
    </div>
  <div style="float:left; width:85%; padding:10px 20px 15px 30px;border: #d5d2ce 1px solid; margin-left:35px;margin-TOP:5px;">
       <div><SPAN id="linkM" style="font-size:16PX;">M</SPAN></div>  <% 
 sql_olustur = "SELECT *  FROM program where (program_adi like 'M%') order by program_adi asc"
 Set rst = cnn.Execute(sql_olustur) %>
 <% Do While Not rst.EOF%> 
   <div style="width:24%; float:left;">
                 <div align="left" class="list2"><a href="index-4.asp?id_type=<%=rst("gurup_id")%>&id_style=<%=rst("id")%>"><%=rst("program_adi")%></a></div>
          </div><%
rst.MoveNext
Loop
 
%>
                
               
    </div>
  <div style="float:left; width:85%; padding:10px 20px 15px 30px;border: #d5d2ce 1px solid; margin-left:35px;margin-TOP:5px;">
       <div><SPAN id="linkN" style="font-size:16PX;">N</SPAN></div>  <% 
 sql_olustur = "SELECT *  FROM program where (program_adi like 'N%') order by program_adi asc"
 Set rst = cnn.Execute(sql_olustur) %>
 <% Do While Not rst.EOF%> 
   <div style="width:24%; float:left;">
                 <div align="left" class="list2"><a href="index-4.asp?id_type=<%=rst("gurup_id")%>&id_style=<%=rst("id")%>"><%=rst("program_adi")%></a></div>
          </div><%
rst.MoveNext
Loop
 
%>
                
               
    </div>

  <div style="float:left; width:85%; padding:10px 20px 15px 30px;border: #d5d2ce 1px solid; margin-left:35px;margin-TOP:5px;">
       <div><SPAN id="linkP" style="font-size:16PX;">P</SPAN></div>  <% 
 sql_olustur = "SELECT *  FROM program where (program_adi like 'P%') order by program_adi asc"
 Set rst = cnn.Execute(sql_olustur) %>
 <% Do While Not rst.EOF%> 
   <div style="width:24%; float:left;">
                 <div align="left" class="list2"><a href="index-4.asp?id_type=<%=rst("gurup_id")%>&id_style=<%=rst("id")%>"><%=rst("program_adi")%></a></div>
          </div><%
rst.MoveNext
Loop
 
%>
                
               
    </div>

  <div style="float:left; width:85%; padding:10px 20px 15px 30px;border: #d5d2ce 1px solid; margin-left:35px;margin-TOP:5px;">
       <div><SPAN id="linkR" style="font-size:16PX;">R</SPAN></div>  <% 
 sql_olustur = "SELECT *  FROM program where (program_adi like 'R%') order by program_adi asc"
 Set rst = cnn.Execute(sql_olustur) %>
 <% Do While Not rst.EOF%> 
   <div style="width:24%; float:left;">
                 <div align="left" class="list2"><a href="index-4.asp?id_type=<%=rst("gurup_id")%>&id_style=<%=rst("id")%>"><%=rst("program_adi")%></a></div>
          </div><%
rst.MoveNext
Loop
 
%>
                
               
    </div>
  <div style="float:left; width:85%; padding:10px 20px 15px 30px;border: #d5d2ce 1px solid; margin-left:35px;margin-TOP:5px;">
       <div><SPAN id="linkS" style="font-size:16PX;">S</SPAN></div>  <% 
 sql_olustur = "SELECT *  FROM program where (program_adi like 'S%') order by program_adi asc"
 Set rst = cnn.Execute(sql_olustur) %>
 <% Do While Not rst.EOF%> 
   <div style="width:24%; float:left;">
                 <div align="left" class="list2"><a href="index-4.asp?id_type=<%=rst("gurup_id")%>&id_style=<%=rst("id")%>"><%=rst("program_adi")%></a></div>
          </div><%
rst.MoveNext
Loop
 
%>
                
               
    </div>
  <div style="float:left; width:85%; padding:10px 20px 15px 30px;border: #d5d2ce 1px solid; margin-left:35px;margin-TOP:5px;">
     <div><SPAN id="linkT" style="font-size:16PX;">T</SPAN></div>   <% 
 sql_olustur = "SELECT *  FROM program where (program_adi like 'T%') order by program_adi asc"
 Set rst = cnn.Execute(sql_olustur) %>
 <% Do While Not rst.EOF%> 
   <div style="width:24%; float:left;">
                 <div align="left" class="list2"><a href="index-4.asp?id_type=<%=rst("gurup_id")%>&id_style=<%=rst("id")%>"><%=rst("program_adi")%></a></div>
          </div><%
rst.MoveNext
Loop
 
%>
                
               
    </div>
  <div style="float:left; width:85%; padding:10px 20px 15px 30px;border: #d5d2ce 1px solid; margin-left:35px;margin-TOP:5px;">
       <div><SPAN id="linkU" style="font-size:16PX;">U</SPAN></div>  <% 
 sql_olustur = "SELECT *  FROM program where (program_adi like 'U%') order by program_adi asc"
 Set rst = cnn.Execute(sql_olustur) %>
 <% Do While Not rst.EOF%> 
   <div style="width:24%; float:left;">
                 <div align="left" class="list2"><a href="index-4.asp?id_type=<%=rst("gurup_id")%>&id_style=<%=rst("id")%>"><%=rst("program_adi")%></a></div>
          </div><%
rst.MoveNext
Loop
 
%>
                
               
    </div>
  <div style="float:left; width:85%; padding:10px 20px 15px 30px;border: #d5d2ce 1px solid; margin-left:35px;margin-TOP:5px;">
       <div><SPAN id="linkV" style="font-size:16PX;">V</SPAN></div>  <% 
 sql_olustur = "SELECT *  FROM program where (program_adi like 'V%') order by program_adi asc"
 Set rst = cnn.Execute(sql_olustur) %>
 <% Do While Not rst.EOF%> 
   <div style="width:24%; float:left;">
                 <div align="left" class="list2"><a href="index-4.asp?id_type=<%=rst("gurup_id")%>&id_style=<%=rst("id")%>"><%=rst("program_adi")%></a></div>
          </div><%
rst.MoveNext
Loop
 
%>
                
               
    </div>

  
  <div style="float:left; width:85%; padding:10px 20px 15px 30px;border: #d5d2ce 1px solid; margin-left:35px;margin-TOP:5px;">
       <div><SPAN id="linkZ" style="font-size:16PX;">Z</SPAN></div>  <% 
 sql_olustur = "SELECT *  FROM program where (program_adi like 'Z%') order by program_adi asc"
 Set rst = cnn.Execute(sql_olustur) %>
 <% Do While Not rst.EOF%> 
   <div style="width:24%; float:left;">
                 <div align="left" class="list2"><a href="index-4.asp?id_type=<%=rst("gurup_id")%>&id_style=<%=rst("id")%>"><%=rst("program_adi")%></a></div>
          </div><%
rst.MoveNext
Loop
 
%>
                
               
    </div>
                  </fieldset>
          
       <fieldset class="step">
       </fieldset>
                  <fieldset class="step">
                  </fieldset>
                  
                    
</div>


  <!-- /container -->

  <div id="content" class="content-block"></div>
    <!--==============================footer=================================-->
    
     <div class="container">
        <div class="row"></div>
        <div class="row">
          <div class="span12">
            <div align="center"><em><a href="#">HOME</a> - <a href="#">U.S.  Passport Renewal</a>-<a href="#">Brazil Visa</a>-<a href="#">  Authentication</a> - <a href="#"> STATUS CHECK</a> -  <a href="#">CONTACT</a> <strong><br>
            <br>
            </strong>SPRINTVISAPASSPORT&copy; 2015 All Rights Reserved<br>
            <br>
             <strong><a href="http://www.karabulut.us" target="_blank">CREATED BY MBK</a> </strong></em><br>
             <br>
             <em><strong><a href="#"><img src="img/icon-1.png" alt=""> </a> <a href="#"><img src="img/icon-2.png" alt=""> </a><a href="#"><img src="img/icon-3.png" alt="" border="0"></a> <a href="#"><img src="img/icon-4.png" alt="" border="0"></a> </strong></em><br>
             <br>
            </div>
          </div>
        </div>  
      </div>
</div>
<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>