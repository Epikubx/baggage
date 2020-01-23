package novedadesMgPc_fla
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.system.Security;
   import flash.text.TextField;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.events.Event;
   import flash.utils.Timer;
   import flash.events.TimerEvent;
   import flash.utils.setTimeout
   
   public dynamic class MainTimeline extends MovieClip
   {
       
      
      public var title:TextField;
      
      public var close:SimpleButton;
      
      public var info:SimpleButton;
	   
	  public var btnNext:MovieClip;
	   
	  public var btnBack:MovieClip;
      
      public var api:Object;
	   
	  public var maletaAngel:MovieClip;
	   
	  public var maletaConejo:MovieClip;
      
      public function MainTimeline()
      {
         super();
         addFrameScript(0,this.frame1,1,frame2);
      }
      
	  
      public function acquireAPI(param1:Object) : void
      {
         this.api = param1;
         this.alpha = 0;
         param1.freeze();
         this.alpha = 1;
         trace("******************************************");
         this.info.addEventListener(MouseEvent.CLICK,this.clicked);
         addEventListener(Event.REMOVED_FROM_STAGE,this.removed);
      }
	  
      public function clicked(param1:MouseEvent) : void
      {
         api.openURL("https://descargas.mundogaturro.com/mundogaturro_installer_la.exe");
      }
	  
	  public function clickedButton(param1:MouseEvent) : *
      {
         var _loc2_:MovieClip = MovieClip(param1.currentTarget);
         if(_loc2_ == btnNext)
         {
            nextFrame();
         }
         else
         {
            prevFrame();
         }
      }
      
      public function removed(param1:Event) : void
      {
         if(this.info)
         {
            this.info.removeEventListener(MouseEvent.CLICK,this.clicked);
         }
         removeEventListener(Event.REMOVED_FROM_STAGE,this.removed);
      }
      
      function frame1() : *
      {
         Security.allowDomain("*");
         Security.allowInsecureDomain("*");
         stop();
		 btnNext.addEventListener(MouseEvent.CLICK,clickedButton);
         btnNext.buttonMode = true;
      }
	  
	  function frame2() : *
      {
         stop();
         btnBack.addEventListener(MouseEvent.CLICK,clickedButton);
         btnBack.buttonMode = true;
      }
   }
}
