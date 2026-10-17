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


   procedure Initialize (This : in out LivesHudWidget'Class; animationInterface : Animation_Access; lifeInterface : Life_Access; location : Integer; direction : Integer) is
      size : Integer;
   begin
        BasicHud_Package.Initialize (This, location, direction, 2, BasicColorFactory_Package.getInstance.WHITE);
        Initialize_Fields (This);
        This.lifeInterface := lifeInterface;
        size := Integer (This.getLifeInterface.getMaxlives);
        This.xArray := new Integer_Array'(0 .. (size) - 1 => 0);
        This.animationInterface := animationInterface;
        This.updateMaxWidth := (This.lifeInterface.getMaxlives) * (16);
        This.updateMaxHeight := 16;
   end Initialize;

   function Create (animationInterface : Animation_Access; lifeInterface : Life_Access; location : Integer; direction : Integer) return LivesHudWidget_Access is
      This : constant LivesHudWidget_Access := new LivesHudWidget;
   begin
      Initialize (This.all, animationInterface, lifeInterface, location, direction);
      return This;
   end Create;

   procedure updateMeasurement (This : in out LivesHudWidget; graphics : Graphics_Access) is
      maxLives : Integer;
      index : Integer;
   begin
        BasicHud (This).updateMeasurement (graphics);
        maxLives := Integer (This.getLifeInterface.getMaxlives);
        for index in 0 .. (maxLives) - 1 loop
            This.xArray (index) := (This.getX) + (((index) * (16)));
        end loop;
   end updateMeasurement;

   procedure onDisplayChangeEvent (This : in out LivesHudWidget; displayChangeEvent : DisplayChangeEvent_Access) is
   begin
        BasicHud (This).onDisplayChangeEvent (displayChangeEvent);
        This.myFontProcessor := This.updateMyFontProcessor;
   end onDisplayChangeEvent;

   procedure setX (This : in out LivesHudWidget; x : Integer) is
   begin
        BasicHud (This).setX (x);
        This.myFontProcessor := This.updateMyFontProcessor;
   end setX;

   procedure paint (This : in out LivesHudWidget; graphics : Graphics_Access) is
      index : Integer;
   begin
        This.myFontProcessor.process (graphics);
        index := Integer (This.getLifeInterface.get);
        while (Java_Pre_Decrement (index)) >= (0) loop
            This.animationInterface.paintXY (graphics, This.xArray (index), This.getY);
        end loop;
   end paint;

   procedure paintThreed (This : in out LivesHudWidget; graphics : Graphics_Access) is
   begin
        null;
   end paintThreed;

   function getLifeInterface (This : in out LivesHudWidget) return Life_Access is
   begin
        return This.lifeInterface;
   end getLifeInterface;

   procedure getLifeInterface (This : in out LivesHudWidget) is
      Java_Result : constant Life_Access := LivesHudWidget'Class (This).getLifeInterface;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLifeInterface;

end org.allbinary.game.ag.layer.hud.basic.life.LivesHudWidget_Package;


