package
{
   public dynamic class remeraMimoFem extends ClothMamboAsset
   {
       
      
      public function remeraMimoFem()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      function frame1() : *
      {
         clothes = {
            "cloth":"remeraMimoFem_on",
            "arm":"remeraMimoFem_brazo_on",
         };
      }
   }
}
