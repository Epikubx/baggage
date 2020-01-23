package newMap_fla
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.system.Security;
   import flash.ui.Mouse;
   
   public dynamic class MainTimeline extends MovieClip
   {
       
      
      public var gamesBtn:MovieClip;
      
      public var gameData:MovieClip;
      
      public var mouseCursor:MovieClip;
      
      public var storesBtn:MovieClip;
      
      public var bg:MovieClip;
      
      public var newsBtn:MovieClip;
      
      public var id:int;
      
      public var itemName:String;
      
      public var displayName:String;
      
      public var withPassportId:int;
      
      public var indoor:Boolean;
      
      public var coord:Array;
      
      public var petError:Boolean;
      
      public var categoriesBtns:Array;
      
      public var views:Array;
      
      public const NEW_USER_SESSION_COUNT:int = 15;
      
      public var configs:Array;
      
      public var names:Object;
      
      public var api:Object;
      
      public function MainTimeline()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      public function onVigut(param1:DisplayObject) : void
      {
         this.bg.common.vigutsShortcut.ph.addChild(this.adaptGift(param1,40,25));
      }
      
      public function setConfig(param1:*) : void
      {
         var _loc3_:* = undefined;
         this.configs.push(param1);
         var _loc2_:int = 0;
         while(_loc2_ < this.configs.length)
         {
            for(_loc3_ in this.configs[_loc2_].data)
            {
               this.names[_loc3_] = this.configs[_loc2_].data[_loc3_];
            }
            _loc2_++;
         }
      }
      
      public function acquireAPI(param1:Object) : *
      {
         this.api = param1;
         param1.freeze();
         this.init();
         this.storesBtn.text.text = param1.getText("TIENDAS");
         this.gamesBtn.text.text = param1.getText("JUEGOS");
         this.newsBtn.text.text = param1.getText("NOVEDADES");
         this.newsBtn.buttonMode = true;
         var _loc2_:String = param1.getProfileAttribute("map_state") as String;
         var _loc3_:* = param1.user.attributes.sessionCount < this.NEW_USER_SESSION_COUNT;
         var _loc4_:Number = param1.getProfileAttribute("lastReadNews") as Number;
         var _loc5_:Date = new Date(_loc4_);
         this.showNews(false);
         this.showGames(false);
         this.showStores(false);
         if(_loc5_.getTime() < param1.user.lastModified.getTime())
         {
            trace("NOVEDAD NO VISTA");
            _loc2_ = "news";
         }
         if(!_loc2_)
         {
            _loc2_ = "news";
         }
         this.doBocaRiverStuff();
         switch(_loc2_)
         {
            case "news":
               if(!_loc3_)
               {
                  this.doFlannyStuff();
                  this.showNews(true);
               }
               else
               {
                  this.showNews(false);
               }
               break;
            case "games":
               this.showGames(true);
               break;
            case "stores":
               this.showStores(true);
         }
         param1.fetchCurrentVigut(this.onVigut);
      }
      
      public function init() : void
      {
         this.categoriesBtns = [this.storesBtn,this.gamesBtn,this.newsBtn];
         this.views = [this.bg.all,this.bg.games,this.bg.common,this.bg.stores];
         this.setViewsListenersStatus(true);
         this.setCategorieListenersStatus(true);
         this.mouseCursor.mouseEnabled = false;
         this.mouseCursor.mouseChildren = false;
      }
      
      public function doFlannyStuff() : void
      {
         if(!this.api.isFlannyReady)
         {
            this.bg.common.flanys.visible = false;
         }
      }
      
      public function doBocaRiverStuff() : void
      {
         if(this.bg.common.riverGenerico)
         {
            this.bg.common.riverGenerico.gotoAndPlay("superclasico");
            this.names.riverGenerico.name = "¡FINALIZO LA COMPETENCIA!";
            this.names.riverGenerico.id = 51690077;
            this.names.riverGenerico.coord = [18,4];
            this.names.riverGenerico.tracking = "RIVER:SUPERCLÁSICO:MAPA";
         }
         if(this.bg.common.bocaGenerico)
         {
            this.bg.common.bocaGenerico.gotoAndPlay("superclasico");
            this.names.bocaGenerico.name = "¡FINALIZO LA COMPETENCIA!";
            this.names.bocaGenerico.id = 51690077;
            this.names.bocaGenerico.coord = [4,4];
            this.names.bocaGenerico.tracking = "BOCA:SUPERCLÁSICO:MAPA";
         }
      }
      
      public function getData(param1:MouseEvent) : Object
      {
         var _loc3_:Object = null;
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         while(_loc2_ && _loc2_ !== this.bg.all && !_loc3_)
         {
            _loc3_ = this.names[_loc2_.name];
            this.itemName = _loc2_.name;
            _loc2_ = _loc2_.parent;
         }
         return _loc3_;
      }
      
      public function adaptGift(param1:DisplayObject, param2:uint, param3:uint) : DisplayObject
      {
         var _loc4_:int = 25;
         var _loc5_:int = 20;
         var _loc6_:MovieClip = param1 as MovieClip;
         if(_loc6_ && "process" in _loc6_)
         {
            _loc6_.process();
            param1.x = param1.x - _loc4_ * (_loc6_.sizeW - 1);
            param1.x = param1.x + _loc4_ * 0.3 * (_loc6_.sizeH - 1);
            param1.y = param1.y - _loc5_ * (_loc6_.sizeH - 1);
         }
         var _loc7_:Number = param2 / param1.width;
         var _loc8_:Number = param3 / param1.height;
         var _loc9_:Number = Math.min(_loc7_,_loc8_);
         param1.scaleX = this.sign(param1.scaleX) * _loc9_;
         param1.scaleY = this.sign(param1.scaleY) * _loc9_;
         return param1;
      }
      
      public function sign(param1:Number) : int
      {
         return param1 > 0?1:param1 < 0?-1:0;
      }
      
      public function dispose() : void
      {
         this.setViewsListenersStatus(false);
         this.setCategorieListenersStatus(false);
         this.mouseCursor.stopDrag();
         this.names = null;
      }
      
      public function setAll(param1:Boolean) : void
      {
         this.showStores(param1);
         this.showNews(param1);
         this.showGames(param1);
      }
      
      public function onCategoryOver(param1:Event) : void
      {
         Mouse.show();
      }
      
      public function onCategoryView(param1:Event) : void
      {
         switch(param1.currentTarget)
         {
            case this.gamesBtn:
               this.showNews(false);
               this.showStores(false);
               if(!this.bg.games.visible)
               {
                  this.api.setSession("map_state","games");
               }
               else
               {
                  this.api.setSession("map_state","none");
               }
               this.showGames(!this.bg.games.visible);
               break;
            case this.newsBtn:
               this.showGames(false);
               this.showStores(false);
               if(!this.bg.common.visible)
               {
                  this.api.setSession("map_state","news");
               }
               else
               {
                  this.api.setSession("map_state","none");
               }
               this.showNews(!this.bg.common.visible);
               break;
            case this.storesBtn:
               this.showGames(false);
               this.showNews(false);
               if(!this.bg.stores.visible)
               {
                  this.api.setSession("map_state","stores");
               }
               else
               {
                  this.api.setSession("map_state","none");
               }
               this.showStores(!this.bg.stores.visible);
         }
      }
      
      public function showNews(param1:Boolean) : void
      {
         this.toggleView(param1,this.bg.common,this.newsBtn);
      }
      
      public function showGames(param1:Boolean) : void
      {
         this.toggleView(param1,this.bg.games,this.gamesBtn);
      }
      
      public function showStores(param1:Boolean) : void
      {
         this.toggleView(param1,this.bg.stores,this.storesBtn);
      }
      
      public function toggleView(param1:Boolean, param2:MovieClip, param3:MovieClip) : void
      {
         var _loc4_:int = 0;
         var _loc5_:DisplayObject = null;
         var _loc6_:Object = null;
         var _loc7_:String = null;
         var _loc8_:String = null;
         param2.visible = param1;
         param3.gotoAndStop(!!param1?2:1);
         if(param1)
         {
            _loc4_ = 0;
            while(_loc4_ < param2.numChildren)
            {
               _loc5_ = param2.getChildAt(_loc4_);
               if(_loc5_ && this.names && _loc5_.name in this.names)
               {
                  _loc6_ = this.names[_loc5_.name];
                  if(_loc6_ && _loc6_.countries)
                  {
                     _loc5_.visible = false;
                     for each(_loc7_ in _loc6_.countries)
                     {
                        if(_loc7_ == this.api.country)
                        {
                           _loc5_.visible = true;
                        }
                     }
                  }
                  if(_loc6_ && _loc6_.withoutCountries)
                  {
                     for each(_loc8_ in _loc6_.withoutCountries)
                     {
                        if(_loc8_ == this.api.country)
                        {
                           _loc5_.visible = false;
                        }
                     }
                  }
               }
               _loc4_++;
            }
         }
      }
      
      public function setCategorieListenersStatus(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         if(param1)
         {
            _loc2_ = 0;
            while(_loc2_ < this.categoriesBtns.length)
            {
               this.categoriesBtns[_loc2_].addEventListener(MouseEvent.ROLL_OVER,this.onCategoryOver);
               this.categoriesBtns[_loc2_].addEventListener(MouseEvent.CLICK,this.onCategoryView);
               _loc2_++;
            }
         }
         else
         {
            _loc2_ = 0;
            while(_loc2_ < this.categoriesBtns.length)
            {
               this.categoriesBtns[_loc2_].removeEventListener(MouseEvent.ROLL_OVER,this.onCategoryOver);
               this.categoriesBtns[_loc2_].removeEventListener(MouseEvent.CLICK,this.onCategoryView);
               _loc2_++;
            }
         }
      }
      
      public function setViewsListenersStatus(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         if(param1)
         {
            _loc2_ = 0;
            while(_loc2_ < this.views.length)
            {
               this.views[_loc2_].addEventListener(MouseEvent.MOUSE_OVER,this.over);
               this.views[_loc2_].addEventListener(MouseEvent.ROLL_OUT,this.out);
               this.views[_loc2_].addEventListener(MouseEvent.CLICK,this.click);
               _loc2_++;
            }
         }
         else
         {
            _loc2_ = 0;
            while(_loc2_ < this.views.length)
            {
               this.views[_loc2_].removeEventListener(MouseEvent.MOUSE_OVER,this.over);
               this.views[_loc2_].removeEventListener(MouseEvent.ROLL_OUT,this.out);
               this.views[_loc2_].removeEventListener(MouseEvent.CLICK,this.click);
               _loc2_++;
            }
         }
      }
      
      public function over(param1:MouseEvent) : void
      {
         this.mouseCursor.startDrag(true);
         this.mouseCursor.alpha = 1;
         Mouse.hide();
         var _loc2_:Object = this.getData(param1);
         if(_loc2_)
         {
            this.mouseCursor.startDrag(true);
            this.changeRoom(_loc2_.name);
         }
      }
      
      public function out(param1:MouseEvent) : void
      {
         Mouse.show();
         this.mouseCursor.stopDrag();
         this.mouseCursor.alpha = 0;
      }
      
      public function click(param1:MouseEvent) : void
      {
         var _loc2_:Object = this.getData(param1);
         if(_loc2_ && _loc2_.tracking && this.api)
         {
            this.api.trackEvent(_loc2_.tracking,"true");
            if(_loc2_.tracking.indexOf("RIVER") != -1)
            {
               this.api.setSession("superclasico","river");
            }
            if(_loc2_.tracking.indexOf("BOCA") != -1)
            {
               this.api.setSession("superclasico","boca");
            }
         }
         if(_loc2_)
         {
            this.gotoRoom(_loc2_);
         }
      }
      
      public function gotoRoom(param1:Object) : void
      {
         this.id = param1.id;
         this.displayName = param1.name;
         if("withPassportId" in param1)
         {
            this.withPassportId = param1.withPassportId;
         }
         else
         {
            this.withPassportId = this.id;
         }
         this.indoor = !!param1.indoor;
         if(param1.coord)
         {
            this.coord = param1.coord;
         }
         dispatchEvent(new Event(Event.SELECT,true));
         if(this.petError)
         {
            this.mouseCursor.gotoAndPlay("pet");
            this.petError = false;
         }
      }
      
      public function changeRoom(param1:String) : *
      {
         var _loc2_:DisplayObjectContainer = null;
         if(this.mouseCursor.tooltip.field.text != param1)
         {
            this.mouseCursor.tooltip.gotoAndPlay(1);
            this.mouseCursor.tooltip.field.text = param1;
            _loc2_ = this.mouseCursor.parent;
            _loc2_.removeChild(this.mouseCursor);
            _loc2_.addChild(this.mouseCursor);
            _loc2_ = null;
         }
      }
      
      function frame1() : *
      {
         Security.allowDomain("*");
         Security.allowInsecureDomain("*");
         this.itemName = "";
         this.displayName = "";
         this.configs = [];
         this.names = {};
      }
   }
}
