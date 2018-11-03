package
{
   public dynamic class remeraTeen extends ClothMamboAsset
   {
       
      
      public function remeraTeen()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      function frame1() : *
      {
         clothes = {"cloth":"remeraTeen_on", "arm":"remeraTeen_brazo_on"};
      }
   }
}
