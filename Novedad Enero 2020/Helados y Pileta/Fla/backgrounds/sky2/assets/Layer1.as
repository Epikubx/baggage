package assets
{
   import flash.display.MovieClip;
   
   public dynamic class Layer1 extends MovieClip
   {
       
      
      public function Layer1()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      function frame1() : *
      {
         stop();
      }
   }
}
