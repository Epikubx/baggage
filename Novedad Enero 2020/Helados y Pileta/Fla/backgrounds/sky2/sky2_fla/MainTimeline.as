package sky2_fla
{
   import assets.Layer1;
   import assets.Layer2;
   import assets.Layer3;
   import flash.display.MovieClip;
   import flash.system.Security;
   import flash.utils.setTimeout;
   
   public dynamic class MainTimeline extends MovieClip
   {
       
	  public var api:Object;
	   
      public var layer1:Layer1;
      
      public var layer2:Layer2;
      
      public var layer3:Layer3;
      
      public var interval:int;
      
      public const ANIM_LENGTH:int = 5000;
      
      public function MainTimeline()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      public function acquireAPI(param1:Object) : void
      {
         if(param1.isDesktop == true)
         {
            layer2.gotoAndStop(1);
         }
         else
         {
            layer2.gotoAndStop(2);
         }
         var _loc2_:String = param1.weather;
         this.layer1.gotoAndStop(_loc2_);
      }
      
      public function changeAnimation() : void
      {
         if(Math.random() * 1000 > 500)
         {
            layer3.cohetes.gotoAndStop(1);
         }
         else
         {
            layer3.cohetes.gotoAndStop(2);
         }
      }
      
      public function waitAnimation() : void
      {
         if(!parent)
         {
            return;
         }
         layer3.cohetes.visible = false;
         newInterval();
         changeAnimation();
         setTimeout(repeatAnimation,interval);
      }
      
      public function newInterval() : void
      {
         interval = 10000 + int(Math.random() * 5000);
      }
      
      public function repeatAnimation() : void
      {
         if(!parent)
         {
            return;
         }
         layer3.cohetes.visible = true;
         layer3.cohetes.anim.gotoAndPlay(1);
         setTimeout(waitAnimation,ANIM_LENGTH);
      }
      
      function frame1() : *
      {
         Security.allowDomain("*");
         Security.allowInsecureDomain("*");
      }
   }
}
