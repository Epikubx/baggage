package
{
   public dynamic class peloMulticolor extends ClothMamboAsset
   {
       
      
      public function peloMulticolor()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         clothes = {"hairs":"peloMulticolor_on"};
      }
   }
}
