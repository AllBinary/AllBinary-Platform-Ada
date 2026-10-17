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
--  with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.graphics.hud.BasicHud_Package; use org.allbinary.game.graphics.hud.BasicHud_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.logic.math.PrimitiveLongSingleton_Package; use org.allbinary.logic.math.PrimitiveLongSingleton_Package;

package org.allbinary.game.ag.layer.hud.basic.time.TimeHudWidget_Package is

   package BasicHud_Package renames Standard.org.allbinary.game.graphics.hud.BasicHud_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package PrimitiveLongSingleton_Package renames Standard.org.allbinary.logic.math.PrimitiveLongSingleton_Package;

   type TimeHudWidget is tagged;
   type TimeHudWidget_Access is access all TimeHudWidget'Class;
   type TimeHudWidget_Access_Array is array (Natural range <>) of TimeHudWidget_Access;
   type TimeHudWidget_Access_Array_Access is access all TimeHudWidget_Access_Array;

   type TimeHudWidget is new BasicHud with record
      TIME_STRING : Unbounded_String;
      TIME_CHAR_ARRAY : Character_Array_Access;
      offset : Integer;
      string_Id : Character_Array_Access;
      totalDigits : Integer;
      timer : Timer_Access;
   end record;

   procedure Initialize (This : in out TimeHudWidget'Class; location : Integer; direction : Integer; bufferZone : Integer; basicColor : BasicColor_Access; timer : Timer_Access);
   function Create (location : Integer; direction : Integer; bufferZone : Integer; basicColor : BasicColor_Access; timer : Timer_Access) return TimeHudWidget_Access;
   function getInstance (location : Integer; direction : Integer; basicColor : BasicColor_Access; timer : Timer_Access) return TimeHudWidget_Access;
   procedure getInstance (location : Integer; direction : Integer; basicColor : BasicColor_Access; timer : Timer_Access);
   procedure updateMeasurement (This : in out TimeHudWidget; graphics : Graphics_Access);
   procedure update (This : in out TimeHudWidget);
   procedure set (This : in out TimeHudWidget);
   function getTimer (This : in out TimeHudWidget) return Timer_Access;
   procedure getTimer (This : in out TimeHudWidget);
   procedure paint (This : in out TimeHudWidget; graphics : Graphics_Access);

end org.allbinary.game.ag.layer.hud.basic.time.TimeHudWidget_Package;


