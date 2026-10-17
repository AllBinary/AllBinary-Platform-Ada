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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.game.ag.life.Life_Package; use org.allbinary.game.ag.life.Life_Package;
with org.allbinary.game.graphics.hud.BasicHud_Package; use org.allbinary.game.graphics.hud.BasicHud_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package; use org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.graphics.paint.PaintableInterface_Package; use org.allbinary.graphics.paint.PaintableInterface_Package;

package org.allbinary.game.ag.layer.hud.basic.life.LivesHudWidget_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package Life_Package renames Standard.org.allbinary.game.ag.life.Life_Package;
   package BasicHud_Package renames Standard.org.allbinary.game.graphics.hud.BasicHud_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package DisplayChangeEvent_Package renames Standard.org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
   package PaintableInterface_Package renames Standard.org.allbinary.graphics.paint.PaintableInterface_Package;

   type LivesHudWidget is tagged;
   type LivesHudWidget_Access is access all LivesHudWidget'Class;
   type LivesHudWidget_Access_Array is array (Natural range <>) of LivesHudWidget_Access;
   type LivesHudWidget_Access_Array_Access is access all LivesHudWidget_Access_Array;

   type LivesHudWidget is new BasicHud and PaintableInterface with record
      lifeInterface : Life_Access;
      xArray : Integer_Array_Access;
      animationInterface : Animation_Access;
   end record;

   procedure Initialize (This : in out LivesHudWidget'Class; animationInterface_Param : access Animation_Package.Animation'Class; lifeInterface_Param : access Life_Package.Life'Class; location : Integer; direction : Integer);
   function Create (animationInterface_Param : access Animation_Package.Animation'Class; lifeInterface_Param : access Life_Package.Life'Class; location : Integer; direction : Integer) return LivesHudWidget_Access;
   procedure updateMeasurement (This : in out LivesHudWidget; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure onDisplayChangeEvent (This : in out LivesHudWidget; displayChangeEvent_Param : access DisplayChangeEvent_Package.DisplayChangeEvent'Class);
   procedure setX (This : in out LivesHudWidget; x : Integer);
   procedure paint (This : in out LivesHudWidget; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure paintThreed (This : in out LivesHudWidget; graphics_Param : access Graphics_Package.Graphics'Class);
   function getLifeInterface (This : in out LivesHudWidget) return Life_Access;

end org.allbinary.game.ag.layer.hud.basic.life.LivesHudWidget_Package;


