package
{
   public dynamic class orcoMascara extends ClothMamboAsset
   {
       
      
      public function orcoMascara()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      function frame1() : *
      {
         clothes = {
            "hats":"orcoMascara_on",
            "hairs":"",
            "mouths":"",
            "accesories":""
         };
      }
   }
}
