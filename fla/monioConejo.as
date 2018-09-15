package
{
   public dynamic class monioConejo extends ClothMamboAsset
   {
       
      
      public function monioConejo()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         clothes = {"neck":"monioConejo_on"};
      }
   }
}
