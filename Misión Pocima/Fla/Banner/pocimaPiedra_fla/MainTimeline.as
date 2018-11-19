package pocimaPiedra_fla
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.system.Security;
   import flash.text.TextField;
   
   public dynamic class MainTimeline extends MovieClip
   {
       
      
      public var close:SimpleButton;
      
      public var api:Object;
      
      public var mostrador:catalogBtn;
      
      public var SOapi:Object;
      
      public var ingredientes:Array;
      
      public var title:TextField;
      
      public var resultado:TextField;
      
      public var field1:TextField;
      
      public var separation:int;
      
      public var recicleBtn:MovieClip;
      
      public var textoTeFaltan:String;
      
      public var pocima:Object;
      
      public var ph:MovieClip;
      
      public function MainTimeline()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      public function acquireObjectAPI(param1:Object) : void
      {
         this.SOapi = param1;
      }
      
      public function acquireAPI(param1:Object) : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Object = null;
         var _loc7_:catalogBtn = null;
         var _loc8_:Object = null;
         this.api = param1;
         textoTeFaltan = param1.getText("TE FALTAN");
         _loc2_ = param1.user.allItems as Array;
         _loc3_ = 0;
         _loc4_ = 0;
         param1.libraries.fetch(pocima.asset,mostrador.delay);
         _loc5_ = 0;
         for each(_loc6_ in ingredientes)
         {
            _loc7_ = new catalogBtn();
            param1.libraries.fetch(_loc6_.asset,_loc7_.delay);
            for each(_loc8_ in _loc2_)
            {
               if(_loc8_.name == _loc6_.asset)
               {
                  _loc5_++;
                  _loc7_.ok.alpha = 1;
                  break;
               }
            }
            ph.addChild(_loc7_);
            _loc7_.x = _loc3_;
            _loc3_ = _loc3_ + (_loc7_.width + separation);
         }
         if(_loc5_ == ingredientes.length)
         {
            recicleBtn.addEventListener(MouseEvent.CLICK,canjea);
			resultado.visible = false;
         }
         else
         {
            recicleBtn.visible = false;
            resultado.text = textoTeFaltan + " " + String(ingredientes.length - _loc5_);
         }
      }
      
      public function reset() : void
      {
         recicleBtn.removeEventListener(MouseEvent.CLICK,canjea);
      }
      
      function frame1() : *
      {
         Security.allowDomain("*");
         Security.allowInsecureDomain("*");
         pocima = {
            "asset":"pocimaQuest.pocimaStone",
            "name":"MAUVAIS BOISSON"
         };
         ingredientes = [{
            "asset":"reyes2017/props.agua"
         },{
            "asset":"atlantisQuest.piedra"
         },{
            "asset":"insects.mariposa22"
         }];
         separation = 3;
         textoTeFaltan = "TE FALTAN";
         stop();
      }
      
      public function canjea(param1:MouseEvent) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in ingredientes)
         {
            SOapi.takeFromUser(_loc2_.asset,1);
         }
         api.giveUser(pocima.asset,1);
		 api.setProfileAttribute("questStoneFinished",1);
         recicleBtn.visible = false;
		 resultado.visible = true;
         resultado.text = "¡LISTO!";
		 gotoAndStop("gift");
         reset();
      }
   }
}
