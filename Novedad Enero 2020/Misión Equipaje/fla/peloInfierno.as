package
{
   public dynamic class peloInfierno extends ClothMamboAsset
   {
       
      
      public function peloInfierno()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         clothes = {"hairs":"peloInfierno_on"};
      }
   }
}
