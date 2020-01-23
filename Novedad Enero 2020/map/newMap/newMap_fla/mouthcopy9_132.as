package newMap_fla
{
   import flash.display.MovieClip;
   
   public dynamic class mouthcopy9_132 extends MovieClip
   {
       
      
      public var color1:MovieClip;
      
      public function mouthcopy9_132()
      {
         super();
         addFrameScript(4,this.frame5,6,this.frame7,13,this.frame14,23,this.frame24,30,this.frame31);
      }
      
      function frame5() : *
      {
         stop();
      }
      
      function frame7() : *
      {
         this.color1.gotoAndStop("boring");
      }
      
      function frame14() : *
      {
         this.color1.gotoAndStop("angry");
      }
      
      function frame24() : *
      {
         this.color1.gotoAndStop("laugh");
      }
      
      function frame31() : *
      {
         this.color1.gotoAndStop("loved");
      }
   }
}
