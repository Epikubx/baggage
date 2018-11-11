package
{
   import flash.display.MovieClip;
   
   public class NpcMamboAsset extends MamboAsset
   {
       
      
      public var behavior:String;
      
      public var proposalFeature:String;
      
      public var monitorAttributes:Boolean = false;
      
      public function NpcMamboAsset()
      {
         super();
      }
      
      override public function process() : void
      {
         attributes.behavior = behavior;
         attributes.monitorAttributes = monitorAttributes;
         if(proposalFeature)
         {
            attributes.proposalFeature = proposalFeature;
         }
         super.process();
      }
   }
}
