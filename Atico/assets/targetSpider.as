package assets
{
   import flash.display.MovieClip;
   
   public dynamic class targetSpider extends MovieClip
   {
       
      
      public var mouth1:MovieClip;
      
      public var mouth2:MovieClip;
      
      public var eye1:MovieClip;
      
      public var ears1:MovieClip;
      
      public var eye2:MovieClip;
      
      public var ears2:MovieClip;
      
      public var hats:MovieClip;
      
      public function targetSpider()
      {
         super();
         addFrameScript(48,frame49);
      }
      
      function frame49() : *
      {
         if(Math.random() * 100 > 8)
         {
            gotoAndPlay(1);
         }
      }
   }
}
