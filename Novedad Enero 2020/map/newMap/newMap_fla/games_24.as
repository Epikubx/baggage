package newMap_fla
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.setTimeout;
   
   public dynamic class games_24 extends MovieClip
   {
       
      
      public var g_supershake:spiders;
      
      public var g_jetpackSpace:jetpackSpace;
      
      public var g_bouncer:bouncer;
      
      public var g_basket:MovieClip;
      
      public var g_accesibilidad:accesibilidad;
      
      public var g_fracciones:fracciones;
      
      public var g_dressers:dressers;
      
      public var g_personajes:personajes;
      
      public var g_spacehunters:spacehunters;
      
      public var g_geocat:geocat;
      
      public var g_termometro:termometro;
      
      public var g_maquinadeltiempo:maquinadeltiempo;
      
      public var g_findthecat:findthecat;
      
      public var g_skateNieve:skateNieve;
      
      public var g_spiders:supershake;
      
      public var g_penales:penales;
      
      public var g_mascotaball:mascotaball;
      
      public var g_decathlon:decathlon;
      
      public var g_misiongps:misiongps;
      
      public var g_baby:baby;
      
      public var g_climbing:climbing;
      
      public var g_inflaglobo:inflaglobo;
      
      public var g_flymetothemoon:flymetothemoon;
      
      public var g_extraterrestres:extraterrestres;
      
      public var g_clima:clima;
      
      public var g_jumprope:jumprope;
      
      public var g_snowball:snowball;
      
      public var g_petwit:petwit;
      
      public var g_islandPlatform:islandPlatform;
      
      public var g_platformDream:platformDream;
      
      public var g_turismo:MovieClip;
      
      public var g_cooking:cooking;
      
      public var g_skate:skate;
      
      public var g_matatopos:matatopos;
      
      public var g_dance:dance;
      
      public var g_speed:speed;
      
      public var g_ingredientes:MovieClip;
      
      public var g_petrolling:petrolling;
      
      public var g_tumbaBeach:tumbaBeach;
      
      public var g_snowPenguin:snowPenguin;
      
      public var g_treasurehunters:treasurehunters;
      
      public var g_penguin:penguin;
      
      public var g_aquawoman:aquawoman;
      
      public var g_naturalessupermercado:naturalessupermercado;
      
      public var g_fruitbouncer:fruitbouncer;
      
      public var g_whackacat2:whackacat2;
      
      public var gamesBackground:MovieClip;
      
      public var g_spaceInvaders:spaceInvaders;
      
      public var g_martillo:martillo;
      
      public var g_driving:driving;
      
      public var g_matematica:matematica;
      
      public var g_butterflies:butterflies;
      
      public var g_bibliotecav2:MovieClip;
      
      public var g_jetpack:jetpack;
      
      public var g_huesos:huesos;
      
      public var g_petglamor:petglamor;
      
      public var g_tumba:tumba;
      
      public var g_skateJump:skateJump;
      
      public var g_petpower:petpower;
      
      public var g_islandcannon:islandcannon;
      
      public var g_match:match;
      
      public var g_ratonBala:ratonBala;
      
      public var g_planes:planes;
      
      public var g_pirates:pirates;
      
      public var g_dungeon:dungeon;
      
      public var g_snowwar:snowwar;
      
      public var mascaraGames:MovieClip;
      
      public var scrollBtns:MovieClip;
      
      public var g_letras:letras;
      
      public var g_temperaturas:temperaturas;
      
      public var g_ecofotos:ecofotos;
      
      public var g_colourcode:colourcode;
      
      public var g_petvet:petvet;
      
      public var g_runjump:runjump;
      
      public var g_islandhunters:islandhunters;
      
      public var yTop:int;
      
      public var yBottom:int;
      
      public var scrollFactor:int;
      
      public function games_24()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      public function init(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.init);
         addEventListener(Event.REMOVED_FROM_STAGE,this.reset);
         this.scrollBtns.up.addEventListener(MouseEvent.CLICK,this.scrollOver_up);
         this.scrollBtns.down.addEventListener(MouseEvent.CLICK,this.scrollOver_down);
      }
      
      public function reset(param1:Event) : void
      {
         this.scrollBtns.up.removeEventListener(MouseEvent.ROLL_OVER,this.scrollOver_up);
         this.scrollBtns.down.removeEventListener(MouseEvent.ROLL_OVER,this.scrollOver_down);
         removeEventListener(Event.REMOVED_FROM_STAGE,this.reset);
      }
      
      public function scrollOver_up(param1:MouseEvent) : void
      {
         this.scrollBtns.gotoAndStop(3);
         this.scrollUp();
         setTimeout(this.resetScrollBtns,300);
      }
      
      public function scrollOver_down(param1:MouseEvent) : void
      {
         this.scrollBtns.gotoAndStop(2);
         this.scrollDown();
         setTimeout(this.resetScrollBtns,300);
      }
      
      public function resetScrollBtns() : void
      {
         this.scrollBtns.gotoAndStop(1);
      }
      
      public function scrollUp() : void
      {
         if(y >= this.yBottom)
         {
            return;
         }
         this.y = this.y + this.scrollFactor;
         this.gamesBackground.y = this.gamesBackground.y - this.scrollFactor;
         this.scrollBtns.y = this.scrollBtns.y - this.scrollFactor;
         this.mascaraGames.y = this.mascaraGames.y - this.scrollFactor;
      }
      
      public function scrollDown() : void
      {
         if(y <= this.yTop)
         {
            return;
         }
         this.y = this.y - this.scrollFactor;
         this.gamesBackground.y = this.gamesBackground.y + this.scrollFactor;
         this.scrollBtns.y = this.scrollBtns.y + this.scrollFactor;
         this.mascaraGames.y = this.mascaraGames.y + this.scrollFactor;
      }
      
      function frame1() : *
      {
         addEventListener(Event.ADDED_TO_STAGE,this.init);
         this.yTop = -120;
         this.yBottom = 0;
         this.scrollFactor = 74;
      }
   }
}
