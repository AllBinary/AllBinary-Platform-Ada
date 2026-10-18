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
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.draw.DrawStringUtil_Package; use org.allbinary.graphics.draw.DrawStringUtil_Package;

package org.allbinary.graphics.draw.CanvasDrawLineString_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;

   type CanvasDrawLineString is tagged;
   type CanvasDrawLineString_Access is access all CanvasDrawLineString'Class;
   type CanvasDrawLineString_Access_Array is array (Natural range <>) of CanvasDrawLineString_Access;
   type CanvasDrawLineString_Access_Array_Access is access all CanvasDrawLineString_Access_Array;
   type CanvasDrawLineString_Access_Array_Access_Array is array (Natural range <>) of CanvasDrawLineString_Access_Array_Access;
   type CanvasDrawLineString_Access_Array_Access_Array_Access is access all CanvasDrawLineString_Access_Array_Access_Array;

   type CanvasDrawLineString is new Java_Object and UpdateMyFontInterface with record
      drawStringUtil : DrawStringUtil_Access;
      myFontProcessor : MyFontProcessor_Access;
      x : Integer;
      y : Integer;
      fontHeight : Integer;
   end record;
   NULL_CANVAS_DRAW_LINE_STRING : CanvasDrawLineString_Access;

   procedure Initialize (This : in out CanvasDrawLineString'Class; x : Integer; y : Integer);
   function Create (x : Integer; y : Integer) return CanvasDrawLineString_Access;
   procedure updateMeasurement (This : in out CanvasDrawLineString; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure paint (This : in out CanvasDrawLineString; graphics_Param : access Graphics_Package.Graphics'Class; string_Id : Unbounded_String; line : Integer);

end org.allbinary.graphics.draw.CanvasDrawLineString_Package;


