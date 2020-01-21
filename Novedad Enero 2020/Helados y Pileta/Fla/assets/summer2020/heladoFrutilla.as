package
{
   public dynamic class heladoFrutilla extends ClothMamboAsset
   {
       
      
      public function heladoFrutilla()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      function frame1() : *
      {
         clothes = {"gripFore":"heladoFrutilla_on"};
      }
   }
}
