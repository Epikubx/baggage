package newMap_fla
{
   import flash.display.MovieClip;
   
   public dynamic class eye_240 extends MovieClip
   {
       
      
      public var color2:MovieClip;
      
      public function eye_240()
      {
         super();
         addFrameScript(4,this.frame5,12,this.frame13,20,this.frame21,25,this.frame26,31,this.frame32,39,this.frame40,49,this.frame50);
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
      
      function frame50() : *
      {
         this.color2.gotoAndStop("half");
      }
   }
}
