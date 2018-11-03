package
{
   public dynamic class remeraMimoFem extends ClothMamboAsset
   {
       
      
      public function remeraMimoFem()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      function frame1() : *
      {
         clothes = {
            "hats":"gorroMimo_on",
            "mouths":"",
            "neck":"",
            "accesories":"",
            "cloth":"remeraMimoFem_on",
            "leg":"jeanMimo_on",
            "foot":"botaMimo_on",
            "arm":"remeraMimoFem_brazo_on",
            "armFore":"",
            "armBack":"",
            "glove":"",
            "gloveFore":"",
            "gloveBack":"",
            "grip":"",
            "gripFore":"",
            "gripBack":"",
            "customization":""
         };
      }
   }
}
