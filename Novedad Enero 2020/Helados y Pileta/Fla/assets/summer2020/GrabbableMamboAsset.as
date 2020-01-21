package
{
   public class GrabbableMamboAsset extends MamboAsset
   {
       
      
      public var session:Boolean = false;
      
      public var stackBy:int = 1;
      
      public function GrabbableMamboAsset()
      {
         super();
         stackBy = 1;
         session = false;
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
