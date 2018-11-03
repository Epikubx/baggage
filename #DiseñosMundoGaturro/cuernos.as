package
{
   public dynamic class cuernos extends ClothMamboAsset
   {
       
      
      public function cuernos()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      function frame1() : *
      {
         clothes = {"hats":"cuernos_on", "accesories":""};
      }
   }
}
