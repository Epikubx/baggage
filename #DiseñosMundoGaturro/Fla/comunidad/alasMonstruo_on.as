﻿package
{
   public dynamic class alasMonstruo_on extends TransportOnMamboAsset
   {
       
      
      public function alasMonstruo_on()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      function frame1() : *
      {
         speed = 300;
         type = "gorro";
      }
   }
}
