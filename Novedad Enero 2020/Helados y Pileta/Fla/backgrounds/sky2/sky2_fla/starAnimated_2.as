package sky2_fla
{
   import flash.display.MovieClip;
   
   public dynamic class starAnimated_2 extends MovieClip
   {
       
      
      public function starAnimated_2()
      {
         super();
         addFrameScript(0,frame1,105,frame106);
      }
      
      function frame1() : *
      {
         gotoAndPlay(Math.round(Math.random() * 80));
      }
      
      function frame106() : *
      {
         gotoAndPlay(2);
      }
   }
}
