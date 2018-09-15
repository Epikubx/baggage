package
{
   public class ClothMamboAsset extends GrabbableMamboAsset
   {
       
      
      public var clothes:Object;
      
      public var wearable:Boolean = true;
      
      public function ClothMamboAsset()
      {
         super();
         this.clothes = {};
         blocks = false;
      }
      
      override public function process() : void
      {
         var _loc1_:* = null;
         for(_loc1_ in this.clothes)
         {
            attributes["wear_" + _loc1_] = this.clothes[_loc1_];
         }
         super.process();
      }
   }
}
