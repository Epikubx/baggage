package newMap_fla
{
   import flash.display.MovieClip;
   
   public dynamic class Head_235 extends MovieClip
   {
       
      
      public var accesories:MovieClip;
      
      public var mouths:MovieClip;
      
      public var mouth1:MovieClip;
      
      public var mouth2:MovieClip;
      
      public var hairs:MovieClip;
      
      public var eye1:MovieClip;
      
      public var ears1:MovieClip;
      
      public var hats:MovieClip;
      
      public var eye2:MovieClip;
      
      public var ears2:MovieClip;
      
      public function Head_235()
      {
         super();
         addFrameScript(0,this.frame1,4,this.frame5,9,this.frame10,16,this.frame17,23,this.frame24,32,this.frame33,40,this.frame41,46,this.frame47,53,this.frame54,63,this.frame64,71,this.frame72,79,this.frame80,88,this.frame89);
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
      
      function frame5() : *
      {
         stop();
         this.reset();
      }
      
      function frame10() : *
      {
         this.reset();
         this.mouth("angry");
         this.eyes("angry");
      }
      
      function frame17() : *
      {
         this.reset();
         this.eyes("halfClosed");
         this.mouth("boring");
      }
      
      function frame24() : *
      {
         this.reset();
         this.mouth("laugh");
      }
      
      function frame33() : *
      {
         this.reset();
         this.eyes("love");
         this.mouth("love");
      }
      
      function frame41() : *
      {
         this.reset();
         this.eyes("money");
      }
      
      function frame47() : *
      {
         this.eyes("up");
      }
      
      function frame54() : *
      {
         this.reset();
      }
      
      function frame64() : *
      {
         this.reset();
         this.eyes("boca01");
         this.mouth("love");
      }
      
      function frame72() : *
      {
         this.reset();
         this.eyes("halfClosed");
         this.mouth("shy");
      }
      
      function frame80() : *
      {
         this.reset();
         this.mouth("laugh");
         this.eye1.gotoAndStop("closed");
      }
      
      function frame89() : *
      {
         this.reset();
         this.eyes("blank");
         this.mouth("blank");
      }
   }
}
