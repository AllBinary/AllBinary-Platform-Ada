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


package body org.allbinary.game.ag.layer.hud.basic.life.LivesHudWidget_Package is

   procedure Initialize_Fields (This : in out LivesHudWidget'Class) is
   begin
      null;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out LivesHudWidget'Class; animationInterface_Param : access Animation_Package.Animation'Class; lifeInterface_Param : access Life_Package.Life'Class; location : Integer; direction : Integer) is
      animationInterface : constant Animation_Access := Animation_Access (animationInterface_Param);
      lifeInterface : constant Life_Access := Life_Access (lifeInterface_Param);
      size : Integer;
   begin
        BasicHud_Package.Initialize (This, location, direction, 2, BasicColorFactory_Package.getInstance.WHITE);
        Initialize_Fields (This);
        This.lifeInterface := lifeInterface;
        size := Integer (LivesHudWidget'Class (This).getLifeInterface.getMaxlives);
        This.xArray := new Integer_Array'(0 .. (size) - 1 => 0);
        This.animationInterface := animationInterface;
        This.updateMaxWidth := (This.lifeInterface.getMaxlives) * (16);
        This.updateMaxHeight := 16;
   end Initialize;

   function Create (animationInterface_Param : access Animation_Package.Animation'Class; lifeInterface_Param : access Life_Package.Life'Class; location : Integer; direction : Integer) return LivesHudWidget_Access is
      This : constant LivesHudWidget_Access := new LivesHudWidget;
   begin
      LivesHudWidget_Package.Initialize (This.all, animationInterface_Param, lifeInterface_Param, location, direction);
      return This;
   end Create;

   procedure updateMeasurement (This : in out LivesHudWidget; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      maxLives : Integer;
      index : Integer;
   begin
        BasicHud (This).updateMeasurement (graphics);
        maxLives := Integer (LivesHudWidget'Class (This).getLifeInterface.getMaxlives);
        for index in 0 .. (maxLives) - 1 loop
            This.xArray (index) := (LivesHudWidget'Class (This).getX) + (((index) * (16)));
        end loop;
   end updateMeasurement;

   procedure onDisplayChangeEvent (This : in out LivesHudWidget; displayChangeEvent_Param : access DisplayChangeEvent_Package.DisplayChangeEvent'Class) is
      displayChangeEvent : constant DisplayChangeEvent_Access := DisplayChangeEvent_Access (displayChangeEvent_Param);
   begin
        BasicHud (This).onDisplayChangeEvent (displayChangeEvent);
        This.myFontProcessor := This.updateMyFontProcessor;
   end onDisplayChangeEvent;

   procedure setX (This : in out LivesHudWidget; x : Integer) is
   begin
        BasicHud (This).setX (x);
        This.myFontProcessor := This.updateMyFontProcessor;
   end setX;

   procedure paint (This : in out LivesHudWidget; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      index : Integer;
   begin
        This.myFontProcessor.process (graphics);
        index := Integer (LivesHudWidget'Class (This).getLifeInterface.get);
        while (Java_Pre_Decrement (index)) >= (0) loop
            This.animationInterface.paintXY (graphics, This.xArray (index), LivesHudWidget'Class (This).getY);
        end loop;
   end paint;

   procedure paintThreed (This : in out LivesHudWidget; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        null;
   end paintThreed;

   function getLifeInterface (This : in out LivesHudWidget) return Life_Access is
   begin
        return This.lifeInterface;
   end getLifeInterface;

end org.allbinary.game.ag.layer.hud.basic.life.LivesHudWidget_Package;


