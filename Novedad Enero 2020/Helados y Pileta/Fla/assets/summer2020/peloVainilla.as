package
{
   public dynamic class peloVainilla extends ClothMamboAsset
   {
       
      
      public function peloVainilla()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      function frame1() : *
      {
         clothes = {"hairs":"peloVainilla_on"};
      }
   }
}
