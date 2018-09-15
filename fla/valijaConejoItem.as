package
{
   public dynamic class valijaConejoItem extends MamboAsset
   {
       
      
      public function valijaConejoItem()
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
