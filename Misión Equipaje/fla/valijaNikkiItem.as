package
{
   public dynamic class valijaNikkiItem extends MamboAsset
   {
       
      
      public function valijaNikkiItem()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         questItem = true;
         stop();
      }
   }
}
