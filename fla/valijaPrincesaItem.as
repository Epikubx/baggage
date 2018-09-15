package
{
   public dynamic class valijaPrincesaItem extends MamboAsset
   {
       
      
      public function valijaPrincesaItem()
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
