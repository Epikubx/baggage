package
{
   public dynamic class valijaDiabloItem extends MamboAsset
   {
       
      
      public function valijaDiabloItem()
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
