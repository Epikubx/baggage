package newMap_fla
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   
   public dynamic class scrollBtns_26 extends MovieClip
   {
       
      
      public var up:SimpleButton;
      
      public var down:SimpleButton;
      
      public function scrollBtns_26()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         stop();
      }
   }
}
