var cristalli={urls:["https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"],events_queue:{events:[],add:function(a,b){cristalli.events_queue.events[a]=b},consume:function(){for(var a in cristalli.events_queue.events){var b=cristalli.events_queue.events[a];if(typeof b=="function"){try{b()}catch(c){}cristalli.events_queue.events.splice(a)}}}}};(function(a){a.include=function(b,c){function d(){}function e(b,c,e){var k,o;/\.css$/.test(b)?(k=g.createElement("link"),k.href=b,k.rel="stylesheet",k.type="text/css",g.head.appendChild(k),c()):(i++,k=g.createElement("script"),k.onload=k.onreadystatechange=function(g,h){h=0,g=this.readyState||g.type,!g.search("load|complete")&&!o&&(e?(b=function(){a[e]?f(c):setTimeout(b,j),++h>j&&(b=d)})():f(c),o=j)},k.async=!0,k.src=b,g[h].appendChild(k))}function f(a){function b(){!--i&&c()}a.length?a(b):(a(),b())}var g=document,h="body",i=0,j=1;!b.pop&&(b=[b]),c=c||d,function k(a,f,l,m){if(!g[h])return setTimeout(k,j);for(a=b.length;a--;)m=d,l=!1,b[a].pop?(f=b[a][0],m=b[a][1],l=b[a][2]):f=b[a],e(f,m,l);!i&&c()}()}})(this),cristalli.analytics={init:function(){}},cristalli.analytics.init();var start_slide_photo=function(a){var b=a.length,c=[];$.each(a,function(a,b){c.push($(b))});var d=function(a){var e=a&&a<b?a:0,f=e===0?b-1:e-1,g=c[e],h=c[f];h.is(":visible")&&h.fadeOut(),g.fadeIn(function(){setTimeout(function(){d(e+1)},3e3)})};d(0)};