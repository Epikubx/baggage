package
{
   public dynamic class valijaAngelItem extends MamboAsset
   {
       
      
      public function valijaAngelItem()
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
