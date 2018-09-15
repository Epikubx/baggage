package
{
   public dynamic class collarIndio extends ClothMamboAsset
   {
       
      
      public function collarIndio()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         clothes = {"neck":"collarIndio_on"};
      }
   }
}
