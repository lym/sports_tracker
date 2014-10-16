/*==================================================
  $Id: tabber.js,v 1.9 2006/04/27 20:51:51 pat Exp $
  tabber.js by Patrick Fitzgerald pat@barelyfitz.com

  Documentation can be found at the following URL:
  http://www.barelyfitz.com/projects/tabber/

  License (http://www.opensource.org/licenses/mit-license.php)

  Copyright (c) 2006 Patrick Fitzgerald

  Permission is hereby granted, free of charge, to any person
  obtaining a copy of this software and associated documentation files
  (the "Software"), to deal in the Software without restriction,
  including without limitation the rights to use, copy, modify, merge,
  publish, distribute, sublicense, and/or sell copies of the Software,
  and to permit persons to whom the Software is furnished to do so,
  subject to the following conditions:

  The above copyright notice and this permission notice shall be
  included in all copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
  MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
  NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
  ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
  CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
  SOFTWARE.
  ==================================================*/
function tabberObj(e){var t;this.div=null,this.classMain="tabber",this.classMainLive="tabberlive",this.classTab="tabbertab",this.classTabDefault="tabbertabdefault",this.classNav="tabbernav",this.classTabHide="tabbertabhide",this.classNavActive="tabberactive",this.titleElements=["h2","h3","h4","h5","h6"],this.titleElementsStripHTML=!0,this.removeTitle=!0,this.addLinkId=!1,this.linkIdFormat="<tabberid>nav<tabnumberone>";for(t in e)this[t]=e[t];this.REclassMain=new RegExp("\\b"+this.classMain+"\\b","gi"),this.REclassMainLive=new RegExp("\\b"+this.classMainLive+"\\b","gi"),this.REclassTab=new RegExp("\\b"+this.classTab+"\\b","gi"),this.REclassTabDefault=new RegExp("\\b"+this.classTabDefault+"\\b","gi"),this.REclassTabHide=new RegExp("\\b"+this.classTabHide+"\\b","gi"),this.tabs=new Array,this.div&&(this.init(this.div),this.div=null)}function tabberAutomatic(e){var t,n,r;e||(e={}),t=new tabberObj(e),n=document.getElementsByTagName("div");for(r=0;r<n.length;r++)n[r].className&&n[r].className.match(t.REclassMain)&&(e.div=n[r],n[r].tabber=new tabberObj(e));return this}function tabberAutomaticOnLoad(e){var t;e||(e={}),t=window.onload,typeof window.onload!="function"?window.onload=function(){tabberAutomatic(e)}:window.onload=function(){t(),tabberAutomatic(e)}}tabberObj.prototype.init=function(e){var t,n,r,i,s=0,o,u,a,f,l;if(!document.getElementsByTagName)return!1;e.id&&(this.id=e.id),this.tabs.length=0,t=e.childNodes;for(n=0;n<t.length;n++)t[n].className&&t[n].className.match(this.REclassTab)&&(i=new Object,i.div=t[n],this.tabs[this.tabs.length]=i,t[n].className.match(this.REclassTabDefault)&&(s=this.tabs.length-1));o=document.createElement("ul"),o.className=this.classNav;for(n=0;n<this.tabs.length;n++){i=this.tabs[n],i.headingText=i.div.title,this.removeTitle&&(i.div.title="");if(!i.headingText)for(r=0;r<this.titleElements.length;r++){l=i.div.getElementsByTagName(this.titleElements[r])[0];if(l){i.headingText=l.innerHTML,this.titleElementsStripHTML&&(i.headingText.replace(/<br>/gi," "),i.headingText=i.headingText.replace(/<[^>]+>/g,""));break}}i.headingText||(i.headingText=n+1),u=document.createElement("li"),i.li=u,a=document.createElement("a"),a.appendChild(document.createTextNode(i.headingText)),a.href="javascript:void(null);",a.title=i.headingText,a.onclick=this.navClick,a.tabber=this,a.tabberIndex=n,this.addLinkId&&this.linkIdFormat&&(f=this.linkIdFormat,f=f.replace(/<tabberid>/gi,this.id),f=f.replace(/<tabnumberzero>/gi,n),f=f.replace(/<tabnumberone>/gi,n+1),f=f.replace(/<tabtitle>/gi,i.headingText.replace(/[^a-zA-Z0-9\-]/gi,"")),a.id=f),u.appendChild(a),o.appendChild(u)}return e.insertBefore(o,e.firstChild),e.className=e.className.replace(this.REclassMain,this.classMainLive),this.tabShow(s),typeof this.onLoad=="function"&&this.onLoad({tabber:this}),this},tabberObj.prototype.navClick=function(e){var t,n,r,i,s;n=this;if(!n.tabber)return!1;r=n.tabber,i=n.tabberIndex,n.blur();if(typeof r.onClick=="function"){s={tabber:r,index:i,event:e},e||(s.event=window.event),t=r.onClick(s);if(t===!1)return!1}return r.tabShow(i),!1},tabberObj.prototype.tabHideAll=function(){var e;for(e=0;e<this.tabs.length;e++)this.tabHide(e)},tabberObj.prototype.tabHide=function(e){var t;return this.tabs[e]?(t=this.tabs[e].div,t.className.match(this.REclassTabHide)||(t.className+=" "+this.classTabHide),this.navClearActive(e),this):!1},tabberObj.prototype.tabShow=function(e){var t;return this.tabs[e]?(this.tabHideAll(),t=this.tabs[e].div,t.className=t.className.replace(this.REclassTabHide,""),this.navSetActive(e),typeof this.onTabDisplay=="function"&&this.onTabDisplay({tabber:this,index:e}),this):!1},tabberObj.prototype.navSetActive=function(e){return this.tabs[e].li.className=this.classNavActive,this},tabberObj.prototype.navClearActive=function(e){return this.tabs[e].li.className="",this},typeof tabberOptions=="undefined"?tabberAutomaticOnLoad():tabberOptions.manualStartup||tabberAutomaticOnLoad(tabberOptions);