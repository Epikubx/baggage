package
{
   public dynamic class helado extends ClothMamboAsset
   {
       
      
      public function helado()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      function frame1() : *
      {
         clothes = {"gripFore":"helado_on"};
      }
   }
}
