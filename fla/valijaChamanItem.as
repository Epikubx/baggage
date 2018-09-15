package
{
   public dynamic class valijaChamanItem extends MamboAsset
   {
       
      
      public function valijaChamanItem()
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
