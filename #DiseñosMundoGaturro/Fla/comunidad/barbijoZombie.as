package
{
   public dynamic class barbijoZombie extends ClothMamboAsset
   {
       
      
      public function barbijoZombie()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      function frame1() : *
      {
         clothes = {"hats":"barbijoZombie_on"};
      }
   }
}
