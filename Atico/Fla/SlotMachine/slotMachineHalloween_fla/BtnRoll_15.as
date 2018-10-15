package slotMachineHalloween_fla
{
   import flash.display.MovieClip;
	import flash.events.Event;
   
   public dynamic class BtnRoll_15 extends MovieClip
   {
       
	   public var api:Object;
      
      public function BtnRoll_15()
      {
         super();
         addFrameScript(0,frame1,1,frame2,2,frame3,3,frame4);
      }
      
      public function init() : void
      {
	     addEventListener(Event.ENTER_FRAME,checkVip);
      }	  
	  
      public function acquireAPI(param1:Object) : void
      {
         init();
         this.api = param1;
      }
	  
	  public function checkVip(param1:Event) : void
      {
		 if(this.api.getProfileAttribute("intentosSlot") >= "3")
         {
			gotoAndStop("pull");
         }
	  }
	  
      function frame1() : *
      {
         stop();
      }
      
      function frame2() : *
      {
         stop();
      }
      
      function frame3() : *
      {
         stop();
      }
	  
	  function frame4() : *
      {
         stop();
      }
   }
}
