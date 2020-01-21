package
{
   public class NpcMamboAsset extends MamboAsset
   {
       
      
      public var behavior:String;
      
      public var monitorAttributes:Boolean = false;
      
      public function NpcMamboAsset()
      {
         super();
      }
      
      override public function process() : void
      {
         attributes.behavior = behavior;
         attributes.monitorAttributes = monitorAttributes;
         super.process();
      }
   }
}
