 <%
strDBPath = Server.MapPath("control/db/baris.mdb")              
Set cnn = Server.CreateObject("ADODB.Connection")             
Set rst2 = Server.CreateObject("ADODB.RecordSet")         
cnn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & strDBPath & ";"
%><!DOCTYPE html>
<html lang="en">
<head>
    <title>SprintVisaPassport</title>
  <meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
    <meta name="description" content="Your description">
    <meta name="keywords" content="Your keywords">
    <meta name="author" content="Your name">
    <link rel="stylesheet" href="css/bootstrap.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/responsive.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/camera.css" type="text/css" media="screen"> 

    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400,400italic,' rel='stylesheet' type='text/css'>
  <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="js/camera.js"></script>
    <script type="text/javascript" src="js/jquery.tweet.js"></script>
    <script type="text/javascript" src="js/forms.js"></script>

  <script>
      $(document).ready(function(){
      jQuery('.camera_wrap').camera();
    });     
    </script>   
  
  <!--[if lt IE 8]>
      <div style='text-align:center'><a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://www.theie6countdown.com/img/upgrade.jpg"border="0"alt=""/></a></div>  
  <![endif]-->
  
  <!--[if (gt IE 9)|!(IE)]><!-->
  <script type="text/javascript" src="js/jquery.mobile.customized.min.js"></script>
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
.style5 {
  font-size: 16px;
  color: #000000;
}
 body{
  color:#444444;
  font-size:13px;
  background: #f2f2f2;
  font-family:"Century Gothic", Helvetica, sans-serif;
  line-height: 25px;
}
-->
    </style>
      <style type="text/css">
<!--
.style3 {
  font-size: 18px;
  color: #000000;
}
-->
    </style>

</head>

<body>
<SCRIPT LANGUAGE="JavaScript" TYPE="text/javascript">
<!--

// Initialize class for Type and Style

function Type(id, type){

     this.id = id;

     this.type = type;

}

function Style(id, id_type, style){

     this.id = id;

     this.id_type = id_type;

     this.style = style;

}

// Initialize Array's Data for Type and Style

TypeArray = new Array(
 <% 
 sql_olustur = "SELECT *  FROM guruplar order by gurup_adi asc"
 Set rst = cnn.Execute(sql_olustur) %>
 <% Do While Not rst.EOF%> 
     new Type(<%=rst("id")%>, "<%=rst("gurup_adi")%>")<%
rst.MoveNext
if not rst.EOF then%>,<%
end if
Loop
 


%>
     );



StyleArray = new Array(
<% 
 sql_olustur = "SELECT *  FROM program order by program_adi asc"
 Set rst = cnn.Execute(sql_olustur) %>
 <% Do While Not rst.EOF%> 
     new Style(<%=rst("id")%>, <%=rst("gurup_id")%>, "<%=rst("program_adi")%>")<%
rst.MoveNext
if not rst.EOF then%>,<%
end if
Loop
 
%>
  );
   


function init(sel_type, sel_style){



for(i = 1; i <= TypeArray.length; i++){

     document.product.id_type.options[i]     = new Option(TypeArray[i-1].type, TypeArray[i-1].id);

     if(TypeArray[i-1].id == sel_type)

                    document.product.id_type.options[i].selected = true;

}

OnChange(sel_style);



}

function OnChange(sel_style){

sel_type_index = document.product.id_type.selectedIndex;

sel_type_value = parseInt(document.product.id_type[sel_type_index].value);


for(i = document.product.id_style.length - 1; i > 0; i--)

document.product.id_style.options[i] = null;


j=1;

for(i = 1; i <= StyleArray.length; i++){

if(StyleArray[i-1].id_type == sel_type_value){

document.product.id_style.options[j] = new Option(StyleArray[i-1].style, StyleArray[i-1].id);

if(StyleArray[i-1].id == sel_style)
document.product.id_style.options[j].selected = true;

     j++;

     }

}

}

//-->

</SCRIPT>

    <style type="text/css">
<!--
.style2 {
  font-size: 26px;
  font-weight: bold;
}
-->
    </style>
<div class="main">
    <!--==============================header=================================-->
    <header>
        <div class="container">
            <div class="row">
                <div class="span12 clearfix">
        
                    <div class="header-block">
                        <h1 class="brand"><a href="index.asp"><img src="img/Sprint-Visa-Logo2.png" alt="" width="391" height="100" border="0"></a></h1>
                        <div class="clearfix">
                            <form name="das" id="search-form" action="#" method="GET" accept-charset="utf-8" class="navbar-form" >
               
                              <a href="#" onClick="document.getElementById('search-form').submit()"></a>
                                <input type="text" name="s" onBlur="if(this.value=='') this.value=''" onFocus="if(this.value =='' ) this.value=''"  >
                            </form>
                        </div>
            <div style="line-height:20px; margin-right:10px; margin-top:15px; float:right; text-align:center;"><a href="sepet_ayrinti.asp"><span class="style3"> <%

                  Sqlx18 = "SELECT * FROM program_bilgi order by id desc"
                Set rs18=Server.CreateObject("Adodb.Recordset")
                rs18.open Sqlx18,cnn,1,3 
                If not rs18.Eof then
                  For gg8=1 to rs18.recordcount
                    if rs18.Eof then 
                    Exit For
                    End if
                    
                    
                    if request.Cookies("visa_id"&rs18("id")&"visa_id")="1" then
                      topik=topik+1
                            
                %> 
                 <%end if
                 rs18.movenext
                 
                       next
                       end if
                       
                       %><%=topik%> </span><img src="basket.gif" style="float:inherit;"> </a></div>
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
                            <li><a href="visas.asp">VISA</a></li>
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
    <div id="content">
  
      <div class="slider">
    <h1 class="b1">Travel visa requirements</h1>
    <h1 align="center" class="b2">WEBSITE<br><br>

UNDER CONSTRUCTION</h1>
          <div class="wrap-sTab">
                
                <label>Citizenship</label>
              
    <form name="product" action="index-4.asp" method="get"> 
    
                    <select name="id_type" style="width:238px;"  class="select" onChange="OnChange()"></select>
                    

                </div>    
        <div class="wrap-sTab2">        
        <label>Destination</label>
         <select name="id_style" size="1" style="width: 238px;" class="select" onchange='this.form.submit()'>
          </select>
                    
           
      </form>
    </div>
        
        
                  <div class="camera_wrap">
                    <div data-src="img/egypt.jpg"></div>
                    <div data-src="img/thai.jpg"></div>
                    <div data-src="img/dubai.jpg"></div>
                    
                  </div>
                  
  </div>
   </div>
  
 <footer>
     <div class="container" style="background-color:#FFFFFF; padding-top:15px;">
        <div class="row">
    <div style="width:70%; float:left;">
    <div style=" width:95%; margin-left:40px; padding-bottom:15px;border-bottom: 1px solid #e5e5e5;">
    <!--<img class="rsTmb" src="sendbinary.asp?path=aa2.gif&wit=690&kalite=100" />-->
                <img class="rsTmb" src="img/3steps.jpg" />

    </div>
       <% 
    
  sql_olustur = "SELECT *  FROM haberler "
   
   
   if request.QueryString("suzgec")="koda_gore" then
   kuyruk =  " order by id  asc"
   end if

   
   if request.QueryString("suzgec")="sehre_gore" then
   kuyruk =  " order by gurup asc"
   end if
   
   if request.QueryString("suzgec")="" then
   kuyruk =  " order by program_adi asc"
   end if 
     
   if request.QueryString("suzgec")="isme_gore" then
   kuyruk =  " order by program_adi asc"
   end if

if request.QueryString("suzgec")="tarih" then
   kuyruk =  " order by ziyaret_tarihi desc"
   end if
   
   
   if request.QueryString("suzgec")="pasif" then
   sql_olustur = sql_olustur & "where  bayii_durumu='Inactive'"
   end if
     if request.Form("arama")<> "" then
   sql_olustur = sql_olustur & "where  (program_adi like '%"&request.Form("arama")&"%')"
   end if
    
   if request.QueryString("harf")<>"" and request.QueryString("suzgec")="sehre_gore" and request.Form("arama")= "" then
   sql_olustur = sql_olustur & "where  gurup like '"&request.QueryString("harf")&"%'"
   end if
      
   if request.QueryString("harf")<>"" and request.QueryString("suzgec")="isme_gore" and request.Form("arama")= "" then
   sql_olustur = sql_olustur & "where  program_adi like '"&request.QueryString("harf")&"%'"
   end if
   if request.QueryString("harf")<>"" and request.QueryString("suzgec")="" and request.Form("arama")= "" then
   sql_olustur = sql_olustur & "where  program_adi like '"&request.QueryString("harf")&"%'"
   end if
      
   if request.QueryString("harf")<>"" and request.QueryString("suzgec")="koda_gore" and request.Form("arama")= "" then
   sql_olustur = sql_olustur & "where  id like '"&request.QueryString("harf")&"%'"
   end if
   
      if request.QueryString("harf")<>"" and request.QueryString("suzgec")="tarih" and request.Form("arama")= "" then
   sql_olustur = sql_olustur & "where  program_adi like '"&request.QueryString("harf")&"%'"
   end if
   


%><% Set rst = cnn.Execute(sql_olustur&kuyruk) %>
 <% Do While Not rst.EOF
 i=i+1 %>
          <div class="span4" style="padding-bottom:5px;"> 
            <div class="indent-2">
                <h2><%=rst("program_adi")%></h2>  
                <div align="justify">
          <%

set FSO = Server.CreateObject("Scripting.FileSystemObject")

'// Listelenecek Klasör Ayarlaniyor
strKlasor = Request.Querystring("klasor")
If strKlasor <> "" and FSO.FolderExists(strKlasor) Then
strAnaKlasor = strKlasor
Else
strAnaKlasor = "D:\inetpub\sprintvisapassport.com\www\control\haber_dosyalari\"&rst("id")
End If

'// Klasör Nesneleri Olusturuluyor
set Klasorler = FSO.GetFolder(strAnaKlasor)
Set AltKlasorler = Klasorler.SubFolders
Set Dosyalar = Klasorler.Files

'// Üst Klasöre link Veriliyor
If Klasorler.IsRootFolder = False Then
Set UstKlasor = Klasorler.ParentFolder
UsteLink = "<a href=""?klasor="& UstKlasor.Path &""">Üst Klasör</a>"
Else '// Eger Üst Klasör Ana Klasörse
UsteLink = "<b>En Üst Klasördesiniz</b>" 
End If
%>

<%
i=00
For Each Dosya In Dosyalar 
i=i+1
path="control/haber_dosyalari/"&rst("id")&"/"&Dosya.Name   %>
    <img class="rsTmb" src="sendbinary.asp?path=<%=path%>&wit=350&kalite=100" /></a>
    <%Next
%> <%=rst("reminder")%><br>
                <a href="haber_ayrinti.asp?id=<%=rst("id")%>" class="btn pull-right">more</a>
                </div>
            </div>
      </div>
        <%
rst.MoveNext
Loop
 


%>
  </div>
  <div style="width:25%; float:right;border-left: 1px solid #e5e5e5;"> 
            <div style="width:90%; float:right;">
                <h2>Visa Services</h2>
                <ul class="list">
                  <li><a href="#">Canada Visa Service</a></li>

<li><a href="http://sprintvisapassport.com/index-4.asp?id_type=13&id_style=13"> Afghanistan Visa Service</a></li>
<li><a href="http://sprintvisapassport.com/index-4.asp?id_type=13&id_style=6">China Visa Service</a></li>
<li><a href="http://sprintvisapassport.com/index-4.asp?id_type=13&id_style=7">Brazil Visa Service</a></li>
<li><a href="http://sprintvisapassport.com/index-4.asp?id_type=13&id_style=5">India Visa Service</a></li>
<li><a href="http://sprintvisapassport.com/index-4.asp?id_type=13&id_style=3">Turkey Visa Service</a></li>
<li><a href="http://sprintvisapassport.com/index-4.asp?id_type=13&id_style=4">Saudi Arabia Visa Service</a></li>
<li><a href="http://sprintvisapassport.com/index-4.asp?id_type=13&id_style=3">Turkey Visa Service</a></li>
<li><a href="http://sprintvisapassport.com/index-4.asp?id_type=13&id_style=4">Saudi Arabia Visa Service</a></li>
<li><a href="http://sprintvisapassport.com/index-4.asp?id_type=13&id_style=3">Turkey Visa Service</a></li>
<li><a href="http://sprintvisapassport.com/index-4.asp?id_type=13&id_style=4">Saudi Arabia Visa Service</a></li>
                </ul>  
                <a href="#" class="btn pull-right btn-list-indent">more</a>
           
           </div> </div>   
       
  </div>
</div>         

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
    </footer>

<SCRIPT LANGUAGE="JavaScript" TYPE="text/javascript">

<!--

//init(5, 31); // Initialize comboboxes by selected sel_type and sel_style

init(); // Default initialize comboboxes for Type and Style

//-->

</SCRIPT>
<script type="text/javascript" src="js/bootstrap.js"></script>
</div>
</body>
</html>