package
{
   public dynamic class peloFruillaChico extends ClothMamboAsset
   {
       
      
      public function peloFruillaChico()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      function frame1() : *
      {
         clothes = {"hairs":"peloFruillaChico_on"};
      }
   }
}
