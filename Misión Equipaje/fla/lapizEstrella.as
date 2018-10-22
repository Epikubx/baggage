package
{
   public dynamic class lapizEstrella extends TransportMamboAsset
   {
       
      
      public function lapizEstrella()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      function frame1() : *
      {
         vehicle = "lapizEstrella_on";
      }
   }
}
