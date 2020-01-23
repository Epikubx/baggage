package novedadesMgPc_fla
{
   import flash.display.MovieClip;
   
   public dynamic class maletaAngel extends MovieClip
   {
       
      
      public function maletaAngel()
      {
         super();
         addFrameScript(30,frame31);
      }
	  
	  function frame31() : *
	  {
		  if(Math.random() * 100 > 5)
         {
            gotoAndPlay(1);
         }
	  }
   }
}
