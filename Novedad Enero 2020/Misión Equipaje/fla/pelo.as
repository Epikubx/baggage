package
{
   public dynamic class pelo extends ClothMamboAsset
   {
       
      
      public function pelo()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         clothes = {"hairs":"pelo_on"};
      }
   }
}
