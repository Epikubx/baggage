package
{
   import flash.events.Event;
   
   public dynamic class hamacaParaguaya_so extends HolderMamboAsset
   {
       
      
      public function hamacaParaguaya_so()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      public function init(param1:Event = null) : void
      {
         addEventListener(Event.ENTER_FRAME,enterFrames);
      }
      
      public function reset(param1:Event = null) : void
      {
         removeEventListener(Event.ENTER_FRAME,enterFrames);
      }
      
      public function enterFrames(param1:Event) : void
      {
         if(container.numChildren == 0)
         {
            gotoAndStop(1);
         }
         else if(container.numChildren > 0)
         {
            play();
         }
         else
         {
            stop();
         }
      }
      
      function frame1() : *
      {
         sizeH = 2;
         action = "sit";
         stop();
         addEventListener(Event.ADDED_TO_STAGE,init);
         addEventListener(Event.REMOVED_FROM_STAGE,reset);
      }
   }
}
