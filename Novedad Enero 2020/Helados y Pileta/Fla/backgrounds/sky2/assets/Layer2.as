package assets
{
   import flash.display.MovieClip;
   
   public dynamic class Layer2 extends MovieClip
   {
	   
      public function Layer2()
      {
         super();
		 addFrameScript(0,frame1,1,frame2);
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
