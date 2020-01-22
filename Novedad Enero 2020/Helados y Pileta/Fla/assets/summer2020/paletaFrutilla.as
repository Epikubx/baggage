package
{
   public dynamic class paletaFrutilla extends ConsumableMamboAsset
   {
       
      
      public function paletaFrutilla()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      function frame1() : *
      {
         adds.action = "icecream.adventureTime.paletaFrutilla";
		 adds.effect = "glow.F684A2";
      }
   }
}
