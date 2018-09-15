package
{
   public dynamic class pelucaConejo extends ClothMamboAsset
   {
       
      
      public function pelucaConejo()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         clothes = {
            "hairs":"pelucaConejo_on"
         };
      }
   }
}
