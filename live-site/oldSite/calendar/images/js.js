//-----------------------------------------------------------------------------------------------------------
// Copyright: Maorong Zou, 2003, 2004. See LICENSE for details
// 
// webcalendar 2.8.5 and later
// common javascript code has been moved to here.
//
// $Header: /home/cvs/webCal/webCal2/images/js.js,v 1.20 2004/08/21 05:07:01 mzou Exp $
//-----------------------------------------------------------------------------------------------------------

// simple tooltip code, require an external variable
var w_tip=0,w_id=0;
var _ie=(document.all)?1:0,_nn=(document.layers)?2:0,_w3=(document.getElementById)?3:0;
function showtip(e,n) {var x,y,ex,ey,dw,lw,z; w_tip=n; if(_nn){z=document.layers[n];ex=e.pageX;ey=e.pageY;
if(document.width){dw=document.width;}else if(window.innerWidth){dw=window.innerWidth;}else {dw=800;}
if(z.clip.width){lw=z.clip.width;}else{lw=100;} if(ex+lw>dw){x=ex-lw-12;if(x<0){x=0;}} else {x=ex+8;} y=ey+12;
z.left=parseInt(x);z.top=parseInt(y);
if(w_timeout>0){w_id=setTimeout("doshowtip()",w_timeout);} else{z.visibility="show";}
}else if(_w3){var c=0;z=document.getElementById(n);
if(e.pageX){ex=e.pageX;ey=e.pageY;} else {ex=e.clientX;ey=e.clientY;c=1;}
if(document.width){dw=document.width;}else if(document.body.offsetWidth){dw=document.body.offsetWidth;}
else if(window.innerWidth){dw=window.innerWidth;}else {dw=800;}
if(z.style.width){lw=z.style.width;} else if(document.all){var _w=document.all[n];lw=_w.offsetWidth;}
if(!lw){lw=100;}if(ex+lw>dw){x=ex-lw-12;if(x<0){x=0;}} else {x=ex+8;}y=ey+12;
if(c && document.body.scrollTop){y+=document.body.scrollTop;}
z.style.left=parseInt(x);z.style.top=parseInt(y); 
if(w_timeout>0){w_id=setTimeout("doshowtip()",w_timeout);} else {z.style.visibility="visible";}
}else if(_ie){z=document.all[n];ex=e.clientX;ey=e.clientY;dw=document.body.offsetWidth;
lw=z.offsetWidth; if(!lw) {lw=100;}if(ex+lw>dw){x=ex-lw-12;if(x<0){x=0;}} else {x=ex+8;}
y=ey+12; if(document.body.scrollTop){y+=document.body.scrollTop;}
z.style.pixelLeft=parseInt(x);z.style.pixelTop=parseInt(y);
if(w_timeout>0){w_id=setTimeout("doshowtip()",w_timeout);} else{z.style.visibility="visible";}}}
function doshowtip(){ w_id=0; if(w_tip){ if(_nn){document.layers[w_tip].visibility="show";}
else if(_w3){document.getElementById(w_tip).style.visibility="visible";}
else if(_ie){document.all[w_tip].style.visibility="visible";}}}
function hidetip(n){if(w_id){ clearTimeout(w_id);w_id=0;}
if(_nn){document.layers[n].visibility="hide";}
else if(_w3){document.getElementById(n).style.visibility="hidden";}
else if(_ie){document.all[n].style.visibility="hidden";
}}


// js clock, require an image array cis[14]: 0--9/am/pm/:
function stim(h,m,a,t){var z=document.images; var x,y;
x=Math.floor(h/10);y=h%10;if(t){if(x==0 && y!=0)x=10;if(x==0 && y==0){x=1;y=2}}{z.a.src=cis[x].src;z.b.src=cis[y].src;}
x=Math.floor(m/10);y=m%10;{z.d.src=cis[x].src;z.e.src = cis[y].src;}
if(t){if(a==0){z.f.src=cis[11].src;}else{z.f.src=cis[12].src;}}}
function sdck(t,z){var x=document.images;
if(x && x.a){var D=new Date();var h=D.getHours();var m=D.getMinutes();
var a=0;if(t){if(h>=12){a=1; h-=12;if(h==0)h=12;}} stim(h,m,a,t); }
var u=10000;if(z)u=1000;if(t){setTimeout("sdck(1,0)",u);}else{setTimeout("sdck(0,0)",u);}}

// simple clock: 12am/pm style
function setClock12() { var now = new Date(); var Hours= now.getHours();var Minutes= now.getMinutes();
var Value=""+((Hours>12)?Hours-12:Hours); Value+=((Minutes<10)?":0" : ":")+Minutes;
Value+=(Hours >=12) ? " pm" : " am"; document.ck.dclock.value = Value; setTimeout ("setClock12()", 10000);
}

// simple clock: 24 hour style
function setClock24() { var now = new Date(); var Hours= now.getHours();var Minutes= now.getMinutes();
var Value=""+Hours; Value+=((Minutes<10)?":0" : ":")+Minutes;
document.ck.dclock.value = Value; setTimeout ("setClock24()", 10000);}

// open a popup window
function openpopup(url,name,width,height){
var popupwin=window.open(url,name,"scrollbars=yes,resizable=yes,width="+width+",height="+height);
if(window.focus){popupwin.window.focus();}}

function pdl(url){
var dwin=window.open(url +'&inpopup=1',"detail","scrollbars=yes,resizable=yes,menubar=no,width=640,height=500");
if(window.focus){dwin.window.focus();}}

function pdll(url){
var ldwin=window.open(url,"fbtbl","scrollbars=yes,resizable=yes,menubar=no,width=800,height=600");
if(window.focus){ldwin.window.focus();}}

// in event editor, select fg/bg colors 
function doinitfgbgpair(ekind){
var fm=window.document.webcalo,om=window.opener.document.webcalo;
var i,j,n,elt,tmp,fg,bg,lab,rstr,ary,ptn,nam;
if(ekind=='a'){rstr=om.apair.value;}else if(ekind=='t'){rstr=om.tpair.value;}
else if(ekind=='m'){rstr=om.mpair.value;}else if(ekind=='s'){rstr=om.spair.value;}
ary = rstr.split("|");n=ary.length; ptn=/([^,]+),([^,]*),([^,]*)/; j=0;
for(i=0;i<n && i<10;i++){elt=ary[i];tmp=elt.match(ptn);
if(tmp != null){lab=tmp[1];fg=tmp[2];bg=tmp[3];
nam='lab'+j; fm.elements[nam].value=lab; nam='c'+j+'fg'; fm.elements[nam].value=fg;
nam='c'+j+'bg'; fm.elements[nam].value=bg; j++; }}}

function dosubmitfgbg(ekind){
var fm=window.document.webcalo,om=window.opener.document.webcalo;
var i,fg,bg,lab,fgv,bgv,labv,rstr; rstr='';
for(i=0;i<10;i++){lab='lab'+i; fg ='c'+i+'fg'; bg='c'+i+'bg';
labv=fm.elements[lab].value; fgv=fm.elements[fg].value;bgv=fm.elements[bg].value;
if(fgv != "" || bgv != ""){if(labv == ""){labv="????";}else{labv=labv.replace(/,/g, ".");}
rstr += labv + ',' + fgv + ',' + bgv + '|'; }}
if(ekind == 'a') { om.apair.value=rstr;}else if(ekind == 't') { om.tpair.value=rstr;}
else if(ekind == 'm') { om.mpair.value=rstr;}else if(ekind == 's') { om.spair.value=rstr;}
om.ret_p.value="option"; self.close(); om.submit();}

// event editor: colors
function setclrpair(){
fm=window.document.webcal,o=fm.clrpair,sidx=o.selectedIndex,v=o.options[sidx].value,ptn=/^([^,]*),([^,]*)/,result=v.match(ptn);
if(result !=null){var fg=result[1],bg=result[2];fm.fgclr.value=fg; fm.bgclr.value=bg;fm.pfgclr.selectedIndex=0;fm.pbgclr.selectedIndex=0;}}
function psetfg(){
var fm=window.document.webcal,o=fm.pfgclr,sidx=o.selectedIndex;
fm.fgclr.value=o.options[sidx].value;if(fm.clrpair){fm.clrpair.selectedIndex=0;}}
function psetbg(){
var fm=window.document.webcal,o=fm.pbgclr,sidx=o.selectedIndex;
fm.bgclr.value=o.options[sidx].value;if(fm.clrpair){fm.clrpair.selectedIndex=0;}}

function set_cell_css(){
var fm=window.document.webcal; var idx=fm.nucss.selectedIndex;
if(idx>0){var v=fm.nucss.options[idx].value; fm.cbg.value=v;}}

//-----------------------------------------------------------------------------------------------------------
function sactivedates(){
var fm=document.csearch; var idx=fm.ss.selectedIndex; var d1=false;if(idx==3){d1=true;}
fm.sfmonth.disabled=d1;fm.sfday.disabled=d1;fm.stmonth.disabled=d1;fm.stday.disabled=d1;
}
function activatetime(tf){
var fm=document.webcal; var idx=fm.k.selectedIndex;
var d1=false,d2=false; if(idx==3) {d1=d2=true;}else if(idx==1){d1=true;}
fm.shour.disabled=d2;fm.smin.disabled=d2; if(!tf){fm.sampm.disabled=d2;}
if(fm.ehour){fm.ehour.disabled=d1;fm.emin.disabled=d1; if(!tf){fm.eampm.disabled=d1;}}
}
// reset color/css selection in event editor
function resetclrs(f1,b1,f2,b2,f3,b3,f4,b4,css1,css2,css3,css4,tf){
var fm=window.document.webcal,idx=fm.k.selectedIndex;
if(idx==0){fm.fgclr.value=f1; fm.bgclr.value=b1;if(fm.css){fm.css.selectedIndex=css1;}}
else if(idx==1){fm.fgclr.value=f2; fm.bgclr.value=b2;if(fm.css){fm.css.selectedIndex=css2;}}
else if(idx==2){fm.fgclr.value=f3; fm.bgclr.value=b3;if(fm.css){fm.css.selectedIndex=css3;}}
else {fm.fgclr.value=f4;fm.bgclr.value=b4;if(fm.css){fm.css.selectedIndex=css4;}}
activatetime(tf);
}

// admin screen: fill in meeting group name and members
function setgp(name,members) {
window.opener.document.mgpeditor.mpts.value=members;
window.opener.document.mgpeditor.mgpname.value=name;}
function setggp(name,members) {
window.opener.document.gmgpeditor.gmpts.value=members;
window.opener.document.gmgpeditor.gmgpname.value=name;}

// popup reminder
function minimizewin(){ window.resizeTo(10,10); window.moveTo(window.screen.width,window.screen.height); window.blur();}
function normalwin() { window.resizeTo(400,256); window.moveTo(0,0);window.focus();}
function setSnoozeTimer(){
var d=self.document.timer.ti,v=d.value-1;
if(v<=0){self.close();}else{d.value=" "+v;setTimeout("setSnoozeTimer()",60000);}}
function setsnooze(){
var fm=self.document.timer,s=fm.ti.value, d=parseInt(fm.snooze.value);
if(d<=0){d=1;} if(s==0){s=1;} if(d>s){d=s-0.5;} setTimeout("normalwin()",d*60000); minimizewin();}

// contact list
function ckalladdresses(){var form=document.ab;
for(var i=0; i<form.elements.length; i++){
if(form.elements[i].type == "checkbox"){form.elements[i].checked=true; }}}
function uckalladdresses(){var form=document.ab;
for(var i=0; i<form.elements.length; i++){ 
if(form.elements[i].type == "checkbox"){form.elements[i].checked=false;}}}
function domail() {
var ptn=/^A.+/; var a=0; var f=document.ab; var url="mailto:"; var n=f.elements.length -1;
for(var i=0; i<=n;i++){var e=f.elements[i]; if(e.name.match(ptn) && e.checked){ url = url + e.value +','; a++;}}
if(a==0){alert('Please select one or more email address first');}else {document.location=url;}}

// post notes
//var nzins = new Array(32); for(var i=0;i<32;i++) nzins[i]=0;
//function fpostnote(url,n){
//var i,w,h,s,t,u,v,x,y,j,f,ff;
//f=0;for(i=0;i<31;i++){if(nzins[i] && nzins[i].name == n && ! nzins[i].closed){f=nzins[i];break;} }
//if(f){f.focus();}else{ h=screen.height;w=screen.width;
//for(i=0;i<31;i++){ if(! nzins[i] || ! nzins[i].name || nzins[i].name == n){nzins[i]=0;break;} }
//s=1+Math.floor(h/200),t=i%s; u=Math.floor(i/s);x=400*u;y= t*200;
//ff= "width=400,height=200,menubar=no,scrollbars=yes,resizable=yes,location=0,left="+x+",top=" + y;
//v=window.open(url,n, ff);v.focus();nzins[i]=v;}}

function postnote(url,n){
var ff="width=400,height=200,menubar=no,scrollbars=yes,resizable=yes,location=0,left=8,top=8";
var v=window.open(url,n,ff);v.focus();}

function sca(str, which) {
if(which==1){var v=window.opener.document.webcal;v.w.value = str;v.submit();self.close();}
else if(which==2){var v=window.opener.document.adeletecal; 
if(v.calendar2bedeleted.value != ''){v.calendar2bedeleted.value +=', ';}v.calendar2bedeleted.value += str ;}
else if(which==0){window.opener.document.inport.tcal.value = str; self.close();}}

// event editor: general recurrence/frequency editor
function cfreq(des){
var o=window.document.webcal, s=o.occurs.selectedIndex, v=o.occurs.options[s].value,
nt=o.repeat.value, url=des + v +'&ntt=' + nt;
fwin=window.open(url,"calendars","scrollbars=yes,resizable=yes,width=700,height=500");
if(window.focus){fwin.window.focus();}}
function pfreq(d){
var fm=window.document.webcal, o=fm.occurs, sidx= o.selectedIndex;
if(sidx == 16) {if(o.options[16].value =='Custom') {cfreq(d);} else {fm.hidden_occurs.value=o.options[16].value;}}
else{fm.hidden_occurs.value='';} fm.enddate.value="";}
// select category
function setcat(){
var fm=window.document.webcal, o=fm.cats, sidx= o.selectedIndex;
var v; if(sidx>0) {v=fm.cats.options[sidx].value;}else v=""; fm.cat.value=v;
}
function resetED(){var fm=window.document.webcal; if(fm.rforever.checked){fm.enddate.value="";}}
function rmED(){window.document.webcal.enddate.value="";}
// customize recurring rule
function cfreqD(){
var fm=window.opener.document.webcal,o=fm.occurs,tt=window.document.fd.nd.value,ntt=window.document.fd.ntt.value;
var ntv = parseInt(ntt);
if(! ntt || isNaN(ntv) || ntv <0 ) {alert("repeat count must be a nonnegative integer"); return false;}
if(! tt) {alert("Please enter a number first"); return false;}
var vv= parseInt(tt);
if(vv < 0) { alert("Sorry, time runs forward in this universe"); return false;}
else if(vv == 0) { alert("Recurring frequency must be a positive integer"); return false;}
else if(isNaN(vv)) {alert("Recurring frequency must be a number"); return false;}
if(vv==1) { o.options[16].text="Daily";}
else {o.options[16].text="Every " + vv + " days";}
var nval;
if(vv==1){nval='Daily';}else if(vv==2){nval='EveryOtherDay';}else if(vv==3) {nval='Every3rdDay';}
else if(vv==4) {nval='Every4thDay';}else if(vv==5) {nval='Every5thDay';}else if(vv==6) {nval='Every6thDay';}
else{nval="ZD," + vv + ",0";}
o.options[16].value=nval;
fm.repeat.value=ntv;
o.selectedIndex=0; o.selectedIndex=16; 
fm.hidden_occurs.value=nval;
self.close();
}
function cfreqWD(){
var fm=window.opener.document.webcal,o=fm.occurs,tt=window.document.fwd.nwd.value,ntt=window.document.fwd.ntt.value;
var ntv = parseInt(ntt);
if(! ntt || isNaN(ntv) || ntv <0 ) {alert("repeat count must be a nonnegative integer"); return false;}
if(! tt) {alert("Please enter a number first"); return false;}
var vv= parseInt(tt);
if(vv < 0) { alert("Sorry, time runs forward in this universe"); return false;}
else if(vv == 0) { alert("Recurring frequency must be a positive integer"); return false;}
else if(isNaN(vv)) {alert("Recurring frequency must be a number"); return false;}
var nwk=vv%5; var nval="";
if(nwk==0){ var nn=vv/5;
 if(vv==5){o.options[16].text="Weekly";nval="Weekly";} else if(vv==10){o.options[16].text="Biweekly";nval="Every2Weeks";}
 else { o.options[16].text="Every " + nn + " weeks"; nval="ZW,"+nn+",0";}}
else { o.options[16].text="Every " + vv + " weekdays"; nval = "ZX,"+vv+",0";}
o.options[16].value=nval;
fm.repeat.value=ntv;
o.selectedIndex=0; o.selectedIndex=16; 
fm.hidden_occurs.value=nval;
self.close();
}
function cfreqM() {
var fm=window.opener.document.webcal;
var o=fm.occurs;
var tt=window.document.fm.nm.value;
var ntt=window.document.fm.ntt.value;
var ntv = parseInt(ntt);
var vv= parseInt(tt);
if(! ntt || isNaN(ntv) || ntv <0 ) {alert("repeat count must be a nonnegative integer"); return false;}
if(vv < 0) { alert("Sorry, time runs forward in this universe"); return false;}
else if(vv == 0) { alert("Recurring frequency must be a positive integer"); return false;}
else if(isNaN(vv)) {alert("Recurring frequency must be a number"); return false;}
var wd=1; if(window.document.fm.dwd[1].checked){wd=2;}
if(wd==1) {
if(vv==1) {o.options[16].text="Monthly on the same day";}
else {o.options[16].text="Every " + vv + " months on the same day";}
var nval="ZMD," + vv + ",0";
o.options[16].value=nval;
o.selectedIndex=0; o.selectedIndex=16; 
fm.hidden_occurs.value=nval;
} else {
if(vv==1){o.options[16].text="Monthly on the same weekday";}
else { o.options[16].text="Every " + vv + " months on the same weekday";}
var nval="ZMWD," + vv + ",0";
o.options[16].value=nval;
o.selectedIndex=0; o.selectedIndex=16; 
fm.hidden_occurs.value=nval;
}
fm.repeat.value=ntv;
self.close();
}
function cfreqMN() {
var fm=window.opener.document.webcal;
var o=fm.occurs;
var tt=window.document.fmn.nm.value;
var ntt=window.document.fmn.ntt.value;
var ntv = parseInt(ntt);
var vv= parseInt(tt);
if(! ntt || isNaN(ntv) || ntv <0 ) {alert("repeat count must be a nonnegative integer"); return false;}
if(vv < 0) { alert("Sorry, time runs forward in this universe"); return false;}
else if(vv == 0) { alert("Recurring frequency must be a positive integer"); return false;}
else if(isNaN(vv)) {alert("Recurring frequency must be a number"); return false;}
var wd=1; if(window.document.fmn.dwd[1].checked){wd=2;}
if(wd==1) {
if(vv==1) {o.options[16].text="Monthly on the same day counting backwards";}
else {o.options[16].text="Every " + vv + " months on the same day counting backwards";}
var nval="ZMND," + vv + ",0";
o.options[16].value=nval;
o.selectedIndex=0; o.selectedIndex=16; 
fm.hidden_occurs.value=nval;
} else {
if(vv==1){o.options[16].text="Monthly on the same weekday counting backwards";}
else { o.options[16].text="Every " + vv + " months on the same weekday counting backwards";}
var nval="ZMNW," + vv + ",0";
o.options[16].value=nval;
o.selectedIndex=0; o.selectedIndex=16; 
fm.hidden_occurs.value=nval;
}
fm.repeat.value=ntv;
self.close();
}
function cfreqW() {
var fm=window.opener.document.webcal;
var o=fm.occurs;    
var f=window.document.fw;
var tt=window.document.fw.nw.value;
var ntt=window.document.fw.ntt.value;
var ntv = parseInt(ntt);
var wd=0, s="";
if(! ntt || isNaN(ntv) || ntv <0 ) {alert("repeat count must be a nonnegative integer"); return false;}
if(f.d0.checked){ wd |= 0x1; s+="Su";} if(f.d1.checked){ wd |= 0x2; s+="Mo";}
if(f.d2.checked){ wd |= 0x4; s+="Tu";} if(f.d3.checked){ wd |= 0x8; s+="We";}
if(f.d4.checked){ wd |= 0x10;s+="Th";} if(f.d5.checked){ wd |= 0x20;s+="Fr";}
if(f.d6.checked){ wd |= 0x40;s+="Sa";}
if(! tt ) { alert("Please enter a number first"); return false;}
if(wd==0) { alert("Please select days on which the event repeats"); return false;}
var vv= parseInt(tt);
if(vv < 0) { alert("Sorry, time runs forward in this universe"); return false;}
else if(vv == 0) { alert("Recurring frequency must be a positive integer"); return false;}
else if(isNaN(vv)) {alert("Recurring frequency must be a number"); return false;}
if(vv==1) { o.options[16].text="Weekly on " + s;}
else if(vv==2) { o.options[16].text="Biweekly on " + s;}
else {o.options[16].text="Every " + vv + " weeks on " + s;}
var nval="ZW," + vv + "," + wd;
o.options[16].value=nval;
fm.repeat.value=ntv;
o.selectedIndex=0; o.selectedIndex=16; 
fm.hidden_occurs.value=nval;
self.close();
}
function pform(oin) {
var sidx=window.opener.document.webcal.occurs.selectedIndex;    
var ntv=window.opener.document.webcal.repeat.value;
if(sidx == 16) {
 var opera_hack=window.opener.document.webcal.hidden_occurs.value;
 if(opera_hack != '') {oin=opera_hack;}
}
var ptn=/^Z([^,]+),([^,]+),(.+)/;
var result= oin.match(ptn);
if(result != null) {
 var kk=result[1], vv=result[2], ww= result[3];
 if(kk == 'D') {
   window.document.fd.nd.value=vv;
   window.document.fd.ntt.value=ntv;
} else if(kk == 'MD') {
  var form=window.document.fm; 
  form.nm.value=vv; form.dwd[0].checked = true;
  window.document.fm.ntt.value=ntv;
} else if(kk == 'MWD') {
  var form=window.document.fm; 
  form.nm.value=vv; form.dwd[1].checked = true;
  window.document.fm.ntt.value=ntv;
} else if(kk == 'MND') {
  var form=window.document.fmn; 
  form.nm.value=vv; form.dwd[0].checked = true;
  window.document.fm.ntt.value=ntv;
} else if(kk == 'MNW') {
  var form=window.document.fmn; 
  form.nm.value=vv; form.dwd[1].checked = true;
  window.document.fm.ntt.value=ntv;
} else if(kk == 'W') {
  var form=window.document.fw;  form.nw.value=vv; form.ntt.value=ntv;
  if(ww & 0x1) {form.d0.checked=true;}  if(ww & 0x2) {form.d1.checked=true;}
  if(ww & 0x4) {form.d2.checked=true;}  if(ww & 0x8) {form.d3.checked=true;}
  if(ww & 0x10) {form.d4.checked=true;} if(ww & 0x20) {form.d5.checked=true;}
  if(ww & 0x40) {form.d6.checked=true;}
}}}

//-----------------------------------------------------------------------------------------------------------
function fmtdate(m,d,y,f){
var r="";if(d<10){d="0"+d;}if(m<10){m="0"+m;}
if(f==0) {r=m+"/"+d+"/"+y;}
else if(f==1) {r=d+"/"+m+"/"+y;}
else if(f==2) {r=y+"-"+m+"-"+d;}
else if(f==3) {r=d+"-"+m+"-"+y;}
else if(f==4) {r=d+"."+m+"."+y;}
else if(f==5) {r=d+"/"+m+"-"+d;}
else if(f==6) {r=y+"."+m+"."+d;}
else if(f==7) {r=y+"/"+m+"/"+d;}
else if(f==8) {r=d+"-"+m+"-"+y+".";}
else if(f==9) {r=y+"."+m+"."+d;}
return r;
}
function fmttime(h,m,f){
var ap=""; 
if(f==0){if(h<12){ap="AM";}else{ap="PM";if(h>12){h-=12;}}}
if(h<10){h="0"+h;}if(m<10){m="0"+m;}
return h+":"+m+ap;
}
function timetravel(dfmt,tfmt,eknd){
var fm=window.document.webcal,dte=fm.sdate.value,thr=fm.shour.value,tmn=fm.smin.value;
var mn,day,year,hour,min,nhour,nmin,nmn,nday,nyear,aa,ab,tmp;
if(dfmt==0)     {aa=dte.split("/");mn=aa[0];day=aa[1];year=aa[2];}
else if(dfmt==1){aa=dte.split("/");day=aa[0];mn=aa[1];year=aa[2];}
else if(dfmt==2){aa=dte.split("-");year=aa[0];mn=aa[1];day=aa[2];}
else if(dfmt==3){aa=dte.split("-");day=aa[0];mn=aa[1];year=aa[2];}
else if(dfmt==4){aa=dte.split(".");day=aa[0];mn=aa[1];year=aa[2];}
else if(dfmt==5){aa=dte.split("/");day=aa[0];tmp=aa[1];ab=tmp.split("-"); mn=ab[0]; year=ab[1];}
else if(dfmt==6){aa=dte.split(".");year=aa[0];mn=aa[1];day=aa[2];}
else if(dfmt==7){aa=dte.split("/");year=aa[0];mn=aa[1];day=aa[2];}
else if(dfmt==8){aa=dte.split("-");day=aa[0];mn=aa[1];year=aa[2];}
else if(dfmt==9){aa=dte.split(".");year=aa[0];mn=aa[1];day=aa[2];}
day=""+day;mn=""+mn;year=""+year;
var bad=0; var ptn=/([1-9][0-9]*)/; var result= day.match(ptn);if(result){day=result[1];}
result=mn.match(ptn);if(result){mn=result[1];}result=year.match(ptn);if(result){year=result[1];}
year=parseInt(year);mn=parseInt(mn);day=parseInt(day);
if(year<50){year+=2000;}else if(year<100){year+=1900;}
thr=""+thr;tmn=""+tmn; result=thr.match(ptn);if(result){thr=result[1];}
result=tmn.match(ptn);if(result){tmn=result[1];}
hour=parseInt(thr);min=parseInt(tmn);if(tfmt==0){var apm=fm.sampm.value; if(apm=='pm') {hour +=12;}}
tmp=new Date();nmn=tmp.getMonth()+1;nday=tmp.getDate();nyear=tmp.getFullYear();
nhour=tmp.getHours();nmin=tmp.getMinutes();
if(nyear>year){bad=1;} else if(nyear==year){
 if(nmn>mn){bad=1;} else if(nmn==mn){
   if(nday>day){bad =1;} else if(nday==day) {
     if(eknd<4 && (nhour>hour || (nhour==hour && nmin>min))) {bad=1;}
   }
 }
}
if(bad){ var cd,ct,ed,et;
cd=fmtdate(nmn,nday,nyear,dfmt); ct=fmttime(nhour,nmin,tfmt);
ed=fmtdate(mn,day,year,dfmt); if(eknd<4){et=fmttime(hour,min,tfmt);}else{et="00:00-23:59";}
 return confirm("This event occurs in the past.\n\n **Event Date Time: " + ed + " "+ et +"\nCurrent Date Time: " +cd +" " +ct +"\n\n" + 'Please confirm.');
}
return true;       
}
function setnotecat(){var fm=document.webcalnotes;var idx=fm.ignore.selectedIndex;fm.ncat.value=fm.ignore.options[idx].value;}
//-----------------------------------------------------------------------------------------------------------
function nhover(tdcell,hover,on,off){if(hover){tdcell.style.backgroundColor=on;}else{tdcell.style.backgroundColor=off;}}
function chover(tdcell,hover,on,off){if(hover){tdcell.className=on;}else{tdcell.className=off;}}
function ngoto(tdcell,url){window.location.href=url;}
//-----------------------------------------------------------------------------------------------------------
var _ie5_5up=0; var _agt=navigator.userAgent.toLowerCase(); var _tmp=_agt.indexOf("msie");
if(_tmp != -1){ _agt=_agt.substr(5+_tmp,5);if(parseFloat(_agt)>=5.5){_ie5_5up=1;}}   
function dndmv(){if(_ie5_5up){if(window.event.button==1){window.event.srcElement.dragDrop();}}}
function dndst(){if(_ie5_5up){var ele=window.event.srcElement; var dt=window.event.dataTransfer; var txt="";
while(ele != null && ele.tagName != "A" && ele.tagName != "a") {ele=ele.parentElement;};
if(ele){var tx=ele.id+"";if(tx.indexOf("_:",0) == 0){txt=tx;}} dt.setData("text",txt);dt.effectAllowed="move";}}
function dnden(){if(_ie5_5up){window.event.srcElement.style.filter="progid:DXImageTransform.Microsoft.Alpha(opacity=30);";
window.event.returnValue=false;window.event.dataTransfer.dropEffect="move";}}
function dndlv(){if(_ie5_5up){window.event.srcElement.style.filter="progid:DXImageTransform.Microsoft.Alpha(opacity=100);";
 window.event.returnValue=false;}}
function dndov(){if(_ie5_5up){var txt=window.event.dataTransfer.getData("text")+"";
 if(txt.indexOf("_:",0)==0){window.event.returnValue=false;}}}
function dnddp(){if(_ie5_5up){window.event.srcElement.style.filter="progid:DXImageTransform.Microsoft.Alpha(opacity=100);";
window.event.returnValue=false; var dndsrc=window.event.dataTransfer.getData("text")+"";
 if(dndsrc.indexOf("_:",0) == 0) { var ele=window.event.srcElement; var f=0;
 while(ele!=null && f==0){if(ele.tagName=="TD"){var tid=ele.id;if(tid && tid.indexOf(":",0)!=-1){f=1;}} 
 if(f==0){ele=ele.parentElement;}}
 if(ele){var dndtgt=ele.id; var cmd="dndsrc="+dndsrc+"&dndtgt="+dndtgt;dodnd(cmd);}}}}
//-----------------------------------------------------------------------------------------------------------
function showclr(w){
var fm=window.document.webcalo;
var tgt=eval("fm."+w+"btn"), fg=eval("fm."+w+"fg.value"),bg=eval("fm."+w+"bg.value");
tgt.style.color=fg; tgt.style.backgroundColor=bg;}
function showclrpair(i){
var fm=window.document.webcalo; var lab=eval("fm.lab" + i);var fg=eval("fm.c"+i+"fg.value");
var bg=eval("fm.c"+i+"bg.value"); lab.style.color=fg;lab.style.backgroundColor=bg;
}
//-----------------------------------------------------------------------------------------------------------
