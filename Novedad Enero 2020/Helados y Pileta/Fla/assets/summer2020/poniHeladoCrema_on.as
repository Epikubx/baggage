﻿package
{
   public dynamic class poniHeladoCrema_on extends TransportOnMamboAsset
   {
       
      
      public function poniHeladoCrema_on()
      {
         super();
         addFrameScript(0,frame1,6,frame7);
      }
      
      function frame1() : *
      {
         speed = 100;
         type = "horse";
      }
      
      function frame7() : *
      {
         stop();
      }
   }
}
