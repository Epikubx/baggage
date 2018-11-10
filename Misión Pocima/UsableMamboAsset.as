package
{
   public class UsableMamboAsset extends GrabbableMamboAsset
   {
       
      
      public var adds:Object;
      
      public function UsableMamboAsset()
      {
         adds = {};
         super();
      }
      
      override public function process() : void
      {
         var _loc1_:* = null;
         for(_loc1_ in adds)
         {
            attributes["attr_" + _loc1_] = adds[_loc1_];
         }
         super.process();
      }
   }
}
