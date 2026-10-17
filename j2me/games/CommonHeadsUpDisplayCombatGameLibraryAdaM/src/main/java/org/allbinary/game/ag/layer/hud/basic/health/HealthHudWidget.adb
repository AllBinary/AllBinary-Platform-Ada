--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify


package body org.allbinary.game.ag.layer.hud.basic.health.HealthHudWidget_Package is

   procedure Initialize_Fields (This : in out HealthHudWidget'Class) is
   begin
      null;
      
      
      
      This.max := 0;
      
      This.gameTickTimeDelayHelper := GameTickTimeDelayHelperFactory_Package.getInstance;
      This.timeDelayHelper := NoTimeDelayHelper_Package.SINGLETON;
      This.slowBeatTimeDelayHelper := TimeDelayHelper_Package.Create (1280);
      This.mediumBeatTimeDelayHelper := TimeDelayHelper_Package.Create (640);
      This.fastBeatTimeDelayHelper := TimeDelayHelper_Package.Create (320);
   end Initialize_Fields;


   procedure Initialize (This : in out HealthHudWidget'Class; animationInterface_Param : access Animation'Class; healthInterface_Param : access Health'Class; location : Integer; direction : Integer) is
      animationInterface : Animation_Access := Animation_Access (animationInterface_Param);
      healthInterface : Health_Access := Health_Access (healthInterface_Param);
   begin
        BasicHud_Package.Initialize (This, location, direction, 2, BasicColorFactory_Package.getInstance.WHITE);
        Initialize_Fields (This);
        This.animationInterface := animationInterface;
        This.healthInterface := healthInterface;
        This.healthInterface.addListener (HealthHudWidget_Access'(This'Unchecked_Access));
        This.healthScale := (((This.healthInterface.getMaxHealth) / (6))) + (1);
        This.onHealthChange;
        This.updateMaxWidth := (healthInterface.getMaxHealth) * (16);
        This.updateMaxHeight := 16;
        This.xArray := new Integer_Array'(0 .. (30) - 1 => 0);
        This.update;
   end Initialize;

   function Create (animationInterface_Param : access Animation'Class; healthInterface_Param : access Health'Class; location : Integer; direction : Integer) return HealthHudWidget_Access is
      This : constant HealthHudWidget_Access := new HealthHudWidget;
   begin
      HealthHudWidget_Package.Initialize (This.all, animationInterface_Param, healthInterface_Param, location, direction);
      return This;
   end Create;

   procedure update (This : in out HealthHudWidget) is
      index : Integer;
   begin
        if (This.xArray) /= (null) then
            for index in 0 .. (This.xArray'Length) - 1 loop
                This.xArray (index) := (This.getX) + (((index) * (16)));
            end loop;
        end if;
   end update;

   procedure setX (This : in out HealthHudWidget; x : Integer) is
   begin
        BasicHud (This).setX (x);
        This.update;
   end setX;

   procedure onHealthChange (This : in out HealthHudWidget) is
   begin
        This.max := ((This.healthInterface.getHealth) / (This.healthScale));
        This.timeDelayHelper := NoTimeDelayHelper_Package.SINGLETON;
        if ((This.max) <= (1)) and then (This.healthInterface.isAlive) then
            This.max := 1;
            if ((This.healthScale) - (This.healthInterface.getHealth)) > ((((This.healthScale) * (2))) / (3)) then
                This.timeDelayHelper := This.slowBeatTimeDelayHelper;
            elsif ((This.healthScale) - (This.healthInterface.getHealth)) > ((This.healthScale) / (3)) then
                This.timeDelayHelper := This.mediumBeatTimeDelayHelper;
            else
                This.timeDelayHelper := This.fastBeatTimeDelayHelper;
            end if;
        end if;
   end onHealthChange;

   procedure paint (This : in out HealthHudWidget; graphics_Param : access Graphics'Class) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
      index : Integer;
   begin
        This.myFontProcessor.process (graphics);
        for index in 0 .. (This.max) - 1 loop
            if This.timeDelayHelper.isTime (This.gameTickTimeDelayHelper.startTime) then
                This.animationInterface.paintXY (graphics, This.xArray (index), This.getY);
            end if;
        end loop;
   end paint;

   procedure paintThreed (This : in out HealthHudWidget; graphics_Param : access Graphics'Class) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
   begin
        null;
   end paintThreed;

end org.allbinary.game.ag.layer.hud.basic.health.HealthHudWidget_Package;


