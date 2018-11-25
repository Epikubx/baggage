package
{
   public dynamic class ropas_so extends NpcMamboAsset
   {
       
      
      public function ropas_so()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      function frame1() : *
      {
         behavior = "ofertasRopa";
		  stop();
      }
   }
}
