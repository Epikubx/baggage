package
{
   import flash.events.Event;
   
   public dynamic class tobogan_so extends HolderMamboAsset
   {
       
      
      public var api:Object;
      
      public var objectApi:Object;
      
      public var finished:Boolean;
      
      public var _e:Event;
      
      public function tobogan_so()
      {
         super();
         addFrameScript(0,frame1,4,frame5,5,frame6,29,frame30,127,frame128,141,frame142);
      }
      
      public function acquireAPI(param1:Object) : *
      {
         this.api = param1;
         addEventListener(Event.REMOVED_FROM_STAGE,removeListeners);
         addEventListener("childAdded",childAdded);
      }
      
      public function childAdded(param1:Event) : void
      {
         _e = param1;
      }
	  
	  public function animationFinished() : void
      {
         if(!finished && (_e as Object).sceneObject && (_e as Object).sceneObject == api.userView)
         {
            api.placeAvatarAt(13,9);
            api.moveToTileXY(13,9);
            trace("CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC");
            finished = true;
         }
      }
	  
	  public function lookRight() : void
	  {
		  api.setAvatarAttribute("effect","lookRight");
	  }
	  
	  public function lookLeft() : void
	  {
		  api.setAvatarAttribute("effect","lookLeft");
	  }
      
      public function removeListeners(param1:Event) : void
      {
         removeEventListener(Event.REMOVED_FROM_STAGE,removeListeners);
         removeEventListener("childAdded",childAdded);
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
            if(currentLabel == "ended")
            {
               stop();
            }
            else if(currentLabel != "on")
            {
               gotoAndPlay("on");
            }
         }
         else
         {
            gotoAndStop(1);
         }
      }
      
      function frame1() : *
      {
		 stop();
         action = "sit";
         addEventListener(Event.ADDED_TO_STAGE,init);
         addEventListener(Event.REMOVED_FROM_STAGE,reset);
         finished = false;
      }
      
      function frame5() : *
      {
         gotoAndPlay(1);
      }
	  
	  function frame6() : *
	  {
		 this.lookRight();
	  }
	  
	  function frame30() : *
	  {
		 this.lookLeft();
	  }
	  
	  function frame128() : *
	  {
		 this.lookRight();
	  }
	  
	  function frame142() : *
      {
         this.animationFinished();
      }
   }
}
