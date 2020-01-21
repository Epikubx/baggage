package sky_fla
{
   import flash.display.MovieClip;
   
   public dynamic class aguaPileta extends MovieClip
   {
       
      
      public function aguaPileta()
      {
         super();
         addFrameScript(0,frame1,1,frame2);
      }
      
	  public function acquireAPI(param1:Object) : void
      {
         if(param1.isDesktop == true)
         {
            gotoAndStop(1);
         }
         else
         {
            gotoAndStop(2);
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
   }
}
