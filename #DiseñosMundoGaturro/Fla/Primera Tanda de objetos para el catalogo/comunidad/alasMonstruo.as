package
{
   public dynamic class alasMonstruo extends TransportMamboAsset
   {
       
      
      public function alasMonstruo()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      function frame1() : *
      {
         vehicle = "alasMonstruo_on";
      }
   }
}
