package
{
   public dynamic class heladoChocolate extends ClothMamboAsset
   {
       
      
      public function heladoChocolate()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      function frame1() : *
      {
         clothes = {"gripFore":"heladoChocolate_on"};
      }
   }
}
