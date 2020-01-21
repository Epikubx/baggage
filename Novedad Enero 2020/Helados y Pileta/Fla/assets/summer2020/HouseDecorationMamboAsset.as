package
{
   public class HouseDecorationMamboAsset extends MamboAsset
   {
       
      
      public function HouseDecorationMamboAsset()
      {
         super();
      }
      
      private function addEvents() : void
      {
      }
      
      override public function process() : void
      {
         attributes.decoration = true;
         super.process();
      }
   }
}
