package newMap_fla
{
   import flash.display.MovieClip;
   
   public dynamic class glow_320 extends MovieClip
   {
       
      
      public function glow_320()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
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
