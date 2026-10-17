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
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;

package org.allbinary.game.layer.hud.basic.PositionWidget_Package is

   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package BasicHud_Package renames org.allbinary.game.graphics.hud.BasicHud_Package;
   package BasicColor_Package renames org.allbinary.graphics.color.BasicColor_Package;

   type PositionWidget is tagged;
   type PositionWidget_Access is access all PositionWidget'Class;
   type PositionWidget_Access_Array is array (Natural range <>) of PositionWidget_Access;
   type PositionWidget_Access_Array_Access is access all PositionWidget_Access_Array;

   type PositionWidget is new BasicHud with record
      position : Integer;
      positionString : Unbounded_String;
   end record;

   procedure Initialize (This : in out PositionWidget'Class; position : Integer; location : Integer; direction : Integer; basicColor : BasicColor_Access);
   function Create (position : Integer; location : Integer; direction : Integer; basicColor : BasicColor_Access) return PositionWidget_Access;
   function get (This : in out PositionWidget) return Integer;
   procedure get (This : in out PositionWidget);
   procedure set (This : in out PositionWidget; position : Integer);
   procedure paint (This : in out PositionWidget; graphics : Graphics_Access);
   function toString (position : Integer) return Unbounded_String;
   procedure toString (position : Integer);

end org.allbinary.game.layer.hud.basic.PositionWidget_Package;


