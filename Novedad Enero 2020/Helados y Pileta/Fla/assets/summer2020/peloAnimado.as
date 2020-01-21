package
{
   public dynamic class peloAnimado extends ClothMamboAsset
   {
       
      
      public function peloAnimado()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      function frame1() : *
      {
         clothes = {"hairs":"peloAnimado_on"};
      }
   }
}
