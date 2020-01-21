package
{
   public class TransportMamboAsset extends MamboAsset
   {
       
      
      public var vehicle:String = "";
      
      public var wearable:Boolean = true;
      
      public var speed:uint = 0;
      
      public var type:String = "";
      
      public function TransportMamboAsset()
      {
         super();
         blocks = false;
      }
      
      override public function process() : void
      {
         attributes.vehicle = vehicle;
         super.process();
      }
   }
}
