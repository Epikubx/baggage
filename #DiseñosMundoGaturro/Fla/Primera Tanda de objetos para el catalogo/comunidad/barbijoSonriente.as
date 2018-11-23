package
{
   public dynamic class barbijoSonriente extends ClothMamboAsset
   {
       
      
      public function barbijoSonriente()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      function frame1() : *
      {
         clothes = {"hats":"barbijoSonriente_on"};
      }
   }
}
