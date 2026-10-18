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
with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.graphics.hud.BasicHud_Package; use org.allbinary.game.graphics.hud.BasicHud_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.paint.PaintableInterface_Package; use org.allbinary.graphics.paint.PaintableInterface_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.math.PrimitiveLongUtil_Package; use org.allbinary.logic.math.PrimitiveLongUtil_Package;

package org.allbinary.game.ag.layer.hud.basic.level.LevelHudWidget_Package is

   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package BasicHud_Package renames Standard.org.allbinary.game.graphics.hud.BasicHud_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package PaintableInterface_Package renames Standard.org.allbinary.graphics.paint.PaintableInterface_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package PrimitiveLongUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveLongUtil_Package;

   type LevelHudWidget is tagged;
   type LevelHudWidget_Access is access all LevelHudWidget'Class;
   type LevelHudWidget_Access_Array is array (Natural range <>) of LevelHudWidget_Access;
   type LevelHudWidget_Access_Array_Access is access all LevelHudWidget_Access_Array;

   type LevelHudWidget is new BasicHud and PaintableInterface with record
      level : Integer;
      maxlevel : Integer;
      levelString : Character_Array_Access;
      levelNumberCharArray : Character_Array_Access;
      levelNumberTotalDigits : Integer;
      offset : Integer;
      primitiveLongUtil : PrimitiveLongUtil_Access;
   end record;

   procedure Initialize (This : in out LevelHudWidget'Class; maxlevel : Integer; location : Integer; direction : Integer);
   function Create (maxlevel : Integer; location : Integer; direction : Integer) return LevelHudWidget_Access;
   function createHud (maxlevel : Integer; location : Integer; direction : Integer) return LevelHudWidget_Access;
   procedure createHud (maxlevel : Integer; location : Integer; direction : Integer);
   procedure updateMeasurement (This : in out LevelHudWidget; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure update (This : in out LevelHudWidget);
   procedure setLevel (This : in out LevelHudWidget; level : Integer);
   procedure nextLevel (This : in out LevelHudWidget);
   procedure previousLevel (This : in out LevelHudWidget);
   function isComplete (This : in out LevelHudWidget) return Boolean;
   procedure paint (This : in out LevelHudWidget; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure paintThreed (This : in out LevelHudWidget; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.ag.layer.hud.basic.level.LevelHudWidget_Package;


