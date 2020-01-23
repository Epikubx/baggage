package newMap_fla
{
   import flash.display.MovieClip;
   
   public dynamic class Headcopy4_691 extends MovieClip
   {
       
      
      public var nose:MovieClip;
      
      public var mouth1:MovieClip;
      
      public var mouth2:MovieClip;
      
      public var eye1:MovieClip;
      
      public var ears1:MovieClip;
      
      public var eye2:MovieClip;
      
      public var ears2:MovieClip;
      
      public function Headcopy4_691()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      public function reset() : void
      {
         this.eye1.color2.gotoAndStop(1);
         this.eye2.color2.gotoAndStop(1);
         this.mouth1.color1.gotoAndStop(1);
         this.mouth2.color1.gotoAndStop(1);
         this.eye1.gotoAndStop(1);
         this.eye2.gotoAndStop(1);
         this.mouth1.gotoAndStop(1);
         this.mouth2.gotoAndStop(1);
      }
      
      public function eyes(param1:String) : void
      {
         this.eye1.gotoAndStop(param1);
         this.eye2.gotoAndStop(param1);
      }
      
      public function mouth(param1:String) : void
      {
         this.mouth1.gotoAndStop(param1);
         this.mouth2.gotoAndStop(param1);
      }
      
      function frame1() : *
      {
      }
   }
}
