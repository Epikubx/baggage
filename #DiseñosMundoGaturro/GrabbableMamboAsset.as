package
{
   public class GrabbableMamboAsset extends MamboAsset
   {
       
      
      public var stackBy:int = 1;
      
      public var session:Boolean = false;
      
      public function GrabbableMamboAsset()
      {
         super();
         blocks = false;
      }
      
      override public function process() : void
      {
         if(stackBy !== 1)
         {
            attributes.stackBy = stackBy === -1?int.MAX_VALUE:stackBy;
         }
         attributes.grabbable = true;
         attributes.session = session;
         super.process();
      }
   }
}
