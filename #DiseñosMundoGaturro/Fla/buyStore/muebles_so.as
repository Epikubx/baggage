package
{
   public dynamic class muebles_so extends NpcMamboAsset
   {
       
      
      public function muebles_so()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      function frame1() : *
      {
         behavior = "ofertaMuebles";
      }
   }
}
