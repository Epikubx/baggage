package transport2_fla
{
   import flash.display.MovieClip;
   import flash.system.Security;
   
   public dynamic class MainTimeline extends MovieClip
   {
       
      
      public function MainTimeline()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      function frame1() : *
      {
         Security.allowDomain("*");
         Security.allowInsecureDomain("*");
      }
   }
}
