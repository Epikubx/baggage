package
{
   public dynamic class pocimaStone extends ClothMamboAsset
   {
       
      
      public function pocimaStone()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      function frame1() : *
      {
         clothes = {
            "cloth":"remeraStone_on",
            "arm":"remeraStone_brazo_on",
            "leg":"pantalonStone_on",
            "hats":"gorroStone_on",
            "hairs":"",
            "mouths":"",
            "neck":"",
            "accesories":"",
            "foot":"",
            "armFore":"",
            "armBack":"",
            "glove":"",
            "gloveFore":"",
            "gloveBack":"",
            "grip":"",
            "gripFore":"",
            "gripBack":"",
            "transport":""
         };
      }
   }
}
