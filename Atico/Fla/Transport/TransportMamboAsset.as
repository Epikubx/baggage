package
{
   import flash.display.MovieClip;
   
   public class TransportMamboAsset extends GrabbableMamboAsset
   {
       
      
      public var container:MovieClip;
      
      public var foreground:MovieClip;
      
      public var vehicle:String = "";
      
      public var catalogScale:Number = 0;
      
      public var catalogY:Number = 0;
      
      public var wearable:Boolean = true;
      
      public function TransportMamboAsset()
      {
         super();
         blocks = false;
      }
      
      override public function process() : void
      {
         attributes.vehicle = vehicle;
         if(catalogScale != 0)
         {
            attributes.catalogScale = catalogScale;
         }
         if(catalogY != 0)
         {
            attributes.catalogY = catalogY;
         }
         super.process();
      }
   }
}
