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
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.game.graphics.hud.BasicHud_Package; use org.allbinary.game.graphics.hud.BasicHud_Package;
with org.allbinary.game.layer.hud.LapInfo_Package; use org.allbinary.game.layer.hud.LapInfo_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;

package org.allbinary.game.layer.hud.basic.LapWidget_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package BasicHud_Package renames Standard.org.allbinary.game.graphics.hud.BasicHud_Package;
   package LapInfo_Package renames Standard.org.allbinary.game.layer.hud.LapInfo_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;

   type LapWidget is tagged;
   type LapWidget_Access is access all LapWidget'Class;
   type LapWidget_Access_Array is array (Natural range <>) of LapWidget_Access;
   type LapWidget_Access_Array_Access is access all LapWidget_Access_Array;

   type LapWidget is new BasicHud with record
      LAP_STR : Unbounded_String;
      OF_STR : Unbounded_String;
      string_Id : Unbounded_String;
   end record;

   procedure Initialize (This : in out LapWidget'Class; location : Integer; direction : Integer; basicColor : BasicColor_Access);
   function Create (location : Integer; direction : Integer; basicColor : BasicColor_Access) return LapWidget_Access;
   procedure update (This : in out LapWidget; lapInfo : LapInfo_Access);
   procedure paint (This : in out LapWidget; graphics : Graphics_Access);

end org.allbinary.game.layer.hud.basic.LapWidget_Package;


