package
{
   public dynamic class valijaSirenaItem extends MamboAsset
   {
       
      
      public function valijaSirenaItem()
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
