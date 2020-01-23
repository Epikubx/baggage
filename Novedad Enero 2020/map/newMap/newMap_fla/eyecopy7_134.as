package newMap_fla
{
   import flash.display.MovieClip;
   
   public dynamic class eyecopy7_134 extends MovieClip
   {
       
      
      public var color2:MovieClip;
      
      public function eyecopy7_134()
      {
         super();
         addFrameScript(4,this.frame5,12,this.frame13,20,this.frame21,25,this.frame26,31,this.frame32,39,this.frame40);
      }
      
      function frame5() : *
      {
         stop();
      }
      
      function frame13() : *
      {
         this.color2.gotoAndStop("half");
      }
      
      function frame21() : *
      {
         this.color2.gotoAndStop("half");
      }
      
      function frame26() : *
      {
         this.color2.gotoAndStop("closed");
      }
      
      function frame32() : *
      {
         this.color2.gotoAndStop("half");
      }
      
      function frame40() : *
      {
         this.color2.gotoAndStop("angry");
      }
   }
}
