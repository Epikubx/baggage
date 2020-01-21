package
{
   public dynamic class peloHelado extends ClothMamboAsset
   {
       
      
      public function peloHelado()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      function frame1() : *
      {
         clothes = {"hairs":"peloHelado_on"};
      }
   }
}
