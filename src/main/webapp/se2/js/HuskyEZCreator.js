// 이 부분은 nhn 객체가 없으면 빈 nhn객체를 생성하고 그 속성인 husky객체를 생성합니다.
if(typeof window.nhn=='undefined') window.nhn = {};
if (!nhn.husky) nhn.husky = {};

/*
============================================================================
이 부분은 husky의 속성인 EZCreator 객체를 생성하는 부분입니다. 
EZCreator객체는 아래와 같은 속성을 가집니다.

- createInIFrame( JSONObject )
- createInIFrame( oAppRef, elPlaceHolder, sSkinURI, fCreator, fOnAppLoad, bUseBlocker, htParams )
- showBlocker()
- hideBlocker()
============================================================================
*/
/**
 * @fileOverview This file contains application creation helper function, which would load up an HTML(Skin) file and then execute a specified create function.
 * @name HuskyEZCreator.js
 */
nhn.husky.EZCreator = new (function(){
	this.nBlockerCount = 0;
	/*
	========================================================================
	이 부분은 메서드 createInIFrame()를 정의하는 것입니다. 
	이 함수는 전달 인수가 하나인 경우 JSON 객체 형식으로 인수를 받는 방법과 
	이전 버전과의 호환성을 위해 각각의 인자를 받아 들이는 방식 두 가지가 있습니다.
	========================================================================
	*/
	this.createInIFrame = function(htOptions){
		if(arguments.length == 1){
			var oAppRef = htOptions.oAppRef;
			var elPlaceHolder = htOptions.elPlaceHolder;
			var sSkinURI = htOptions.sSkinURI;
			var fCreator = htOptions.fCreator;
			var fOnAppLoad = htOptions.fOnAppLoad;
			var bUseBlocker = htOptions.bUseBlocker;
			var htParams = htOptions.htParams || null;
		}else{
			// for backward compatibility only
			var oAppRef = arguments[0];
			var elPlaceHolder = arguments[1];
			var sSkinURI = arguments[2];
			var fCreator = arguments[3];
			var fOnAppLoad = arguments[4];
			var bUseBlocker = arguments[5];
			var htParams = arguments[6];
		}

		if(bUseBlocker) nhn.husky.EZCreator.showBlocker();

		/*
		=====================================================================
		이 부분은 이벤트 핸들러를 태그에 추가하는 함수 입니다. 
		비 익스플로러와 익스플로러용 두 부분으로 구성되어 있습니다.
		태그 객체에 addEventListener가 있으면 비 익스플로러, 
		그렇지 않으면 익스플로러용으로 구분합니다.
		=====================================================================
		*/
		var attachEvent = function(elNode, sEvent, fHandler){ 
			if(elNode.addEventListener){
				elNode.addEventListener(sEvent, fHandler, false);
			}else{
				elNode.attachEvent("on"+sEvent, fHandler);
			}
		} 
		
		// TEXTAREA 태그의 id가 지정되지 않았으면 경고 메시지를 표시합니다.
		if(!elPlaceHolder){
			alert("Placeholder is required!");
			return;
		}

		// elPlaceHolder가 객체가 아니면 id로 간주하고 해당 id의 객체를 가져와 다시 지정합니다.
		if(typeof(elPlaceHolder) != "object")
			elPlaceHolder = document.getElementById(elPlaceHolder);

		var elIFrame, nEditorWidth, nEditorHeight;
		 
		/*
		=====================================================================
		이 부분은 TEXTAREA를 대체할 IFRAME을 생성합니다. 
		페이지 로드 후에 스마트 에디터를 생성하고 사용할 수 있도록 합니다.
		=====================================================================
		*/
		try{
			elIFrame = document.createElement("<IFRAME frameborder=0 scrolling=no>");
		}catch(e){
			elIFrame = document.createElement("IFRAME");
			elIFrame.setAttribute("frameborder", "0");
			elIFrame.setAttribute("scrolling", "no");
		}
		
		elIFrame.style.width = "1px";
		elIFrame.style.height = "1px";
		elPlaceHolder.parentNode.insertBefore(elIFrame, elPlaceHolder.nextSibling);
		
		attachEvent(elIFrame, "load", function(){
			fCreator = elIFrame.contentWindow[fCreator] || elIFrame.contentWindow.createSEditor2;
			
//			top.document.title = ((new Date())-window.STime);
//			window.STime = new Date();
			
			try{
			
				nEditorWidth = elIFrame.contentWindow.document.body.scrollWidth || "500px";
				nEditorHeight = elIFrame.contentWindow.document.body.scrollHeight + 12;
				elIFrame.style.width =  "100%";
				elIFrame.style.height = nEditorHeight+ "px";
				elIFrame.contentWindow.document.body.style.margin = "0";
			}catch(e){
				nhn.husky.EZCreator.hideBlocker(true);
				elIFrame.style.border = "5px solid red";
				elIFrame.style.width = "500px";
				elIFrame.style.height = "500px";
				alert("Failed to access "+sSkinURI);
				return;
			}
			
			var oApp = fCreator(elPlaceHolder, htParams);	// oEditor
			

			oApp.elPlaceHolder = elPlaceHolder;

			oAppRef[oAppRef.length] = oApp;
			if(!oAppRef.getById) oAppRef.getById = {};
			
			if(elPlaceHolder.id) oAppRef.getById[elPlaceHolder.id] = oApp;

			oApp.run({fnOnAppReady:fOnAppLoad}); 
			
//			top.document.title += ", "+((new Date())-window.STime);
			nhn.husky.EZCreator.hideBlocker();
		});
//		window.STime = new Date();
		elIFrame.src = sSkinURI;
		this.elIFrame = elIFrame;
	};
	
	this.showBlocker = function(){
		if(this.nBlockerCount<1){
			var elBlocker = document.createElement("DIV");
			elBlocker.style.position = "absolute";
			elBlocker.style.top = 0;
			elBlocker.style.left = 0;
			elBlocker.style.backgroundColor = "#FFFFFF";
			elBlocker.style.width = "100%";

			document.body.appendChild(elBlocker);
			
			nhn.husky.EZCreator.elBlocker = elBlocker;
		}

		nhn.husky.EZCreator.elBlocker.style.height = Math.max(document.body.scrollHeight, document.body.clientHeight)+"px";
		
		this.nBlockerCount++;
	};
	
	this.hideBlocker = function(bForce){
		if(!bForce){
			if(--this.nBlockerCount > 0) return;
		}
		
		this.nBlockerCount = 0;
		
		if(nhn.husky.EZCreator.elBlocker) nhn.husky.EZCreator.elBlocker.style.display = "none";
	}
})();