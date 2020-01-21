package
{
   public dynamic class peloHeladoChocolate extends ClothMamboAsset
   {
       
      
      public function peloHeladoChocolate()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      function frame1() : *
      {
         clothes = {"hairs":"peloHeladoChocolate_on"};
      }
   }
}
