package newMap_fla
{
   import flash.display.MovieClip;
   
   public dynamic class eyecopy10_701 extends MovieClip
   {
       
      
      public var colorEye:MovieClip;
      
      public var color2:MovieClip;
      
      public function eyecopy10_701()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         this.colorEye.visible = true;
         this.colorEye.x = 10;
         this.colorEye.y = 17;
      }
   }
}
