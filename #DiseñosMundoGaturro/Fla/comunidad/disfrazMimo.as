package
{
   public dynamic class disfrazMimo extends ClothMamboAsset
   {
       
      
      public function disfrazMimo()
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
            "cloth":"remeraMimo_on",
            "leg":"jeanMimo_on",
            "foot":"botaMimo_on",
            "arm":"remeraMimo_brazo_on",
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
