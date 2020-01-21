package
{
   public dynamic class paletaChocolate extends ConsumableMamboAsset
   {
       
      
      public function paletaChocolate()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      function frame1() : *
      {
         adds.action = "icecream.adventureTime.paletaChocolate";
      }
   }
}
