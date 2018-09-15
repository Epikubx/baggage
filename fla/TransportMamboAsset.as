package
{
   public class TransportMamboAsset extends GrabbableMamboAsset
   {
       
      
      public var vehicle:String = "";
      
      public var wearable:Boolean = true;
      
      public function TransportMamboAsset()
      {
         super();
         blocks = false;
      }
      
      override public function process() : void
      {
         attributes.vehicle = this.vehicle;
         super.process();
      }
   }
}
