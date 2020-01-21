package
{
   public dynamic class paletaSandia extends ConsumableMamboAsset
   {
       
      
      public function paletaSandia()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      function frame1() : *
      {
         adds.action = "icecream.adventureTime.paletaSandia";
      }
   }
}
