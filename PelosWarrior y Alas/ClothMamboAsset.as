package
{
   public class ClothMamboAsset extends GrabbableMamboAsset
   {
       
      
      public var clothes:Object;
      
      public var wearable:Boolean = true;
      
      public function ClothMamboAsset()
      {
         clothes = {};
         super();
         blocks = false;
      }
      
      override public function process() : void
      {
         var _loc1_:* = null;
         for(_loc1_ in clothes)
         {
            attributes["wear_" + _loc1_] = clothes[_loc1_];
         }
         super.process();
      }
   }
}
