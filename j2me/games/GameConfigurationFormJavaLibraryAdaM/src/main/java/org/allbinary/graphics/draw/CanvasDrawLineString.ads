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

limited with org.allbinary.graphics.draw.CanvasDrawLineString_Package;
package org.allbinary.graphics.draw.CanvasDrawLineString_Package_References is
   type CanvasDrawLineString_Access is access all org.allbinary.graphics.draw.CanvasDrawLineString_Package.CanvasDrawLineString'Class;
   type CanvasDrawLineString_Access_Array is array (Natural range <>) of CanvasDrawLineString_Access;
   type CanvasDrawLineString_Access_Array_Access is access all CanvasDrawLineString_Access_Array;
   type CanvasDrawLineString_Access_Array_Access_Array is array (Natural range <>) of CanvasDrawLineString_Access_Array_Access;
   type CanvasDrawLineString_Access_Array_Access_Array_Access is access all CanvasDrawLineString_Access_Array_Access_Array;
end org.allbinary.graphics.draw.CanvasDrawLineString_Package_References;

with org.allbinary.graphics.draw.CanvasDrawLineString_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
limited with org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package_References;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
limited with org.allbinary.graphics.draw.DrawStringUtil_Package;
with org.allbinary.graphics.draw.DrawStringUtil_Package_References;

package org.allbinary.graphics.draw.CanvasDrawLineString_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package Reference_Types is
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
   subtype MyFontProcessor_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access;
   use type MyFontProcessor_Access;
   subtype MyFontProcessor_Access_Array is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array;
   use type MyFontProcessor_Access_Array;
   subtype MyFontProcessor_Access_Array_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access;
   use type MyFontProcessor_Access_Array_Access;
   subtype MyFontProcessor_Access_Array_Access_Array is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access_Array;
   use type MyFontProcessor_Access_Array_Access_Array;
   subtype MyFontProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access_Array_Access;
   use type MyFontProcessor_Access_Array_Access_Array_Access;
   subtype DrawStringUtil_Access is org.allbinary.graphics.draw.DrawStringUtil_Package_References.DrawStringUtil_Access;
   use type DrawStringUtil_Access;
   subtype DrawStringUtil_Access_Array is org.allbinary.graphics.draw.DrawStringUtil_Package_References.DrawStringUtil_Access_Array;
   use type DrawStringUtil_Access_Array;
   subtype DrawStringUtil_Access_Array_Access is org.allbinary.graphics.draw.DrawStringUtil_Package_References.DrawStringUtil_Access_Array_Access;
   use type DrawStringUtil_Access_Array_Access;
   subtype DrawStringUtil_Access_Array_Access_Array is org.allbinary.graphics.draw.DrawStringUtil_Package_References.DrawStringUtil_Access_Array_Access_Array;
   use type DrawStringUtil_Access_Array_Access_Array;
   subtype DrawStringUtil_Access_Array_Access_Array_Access is org.allbinary.graphics.draw.DrawStringUtil_Package_References.DrawStringUtil_Access_Array_Access_Array_Access;
   use type DrawStringUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CanvasDrawLineString_Access is org.allbinary.graphics.draw.CanvasDrawLineString_Package_References.CanvasDrawLineString_Access;
   function "=" (Left, Right : CanvasDrawLineString_Access) return Boolean renames org.allbinary.graphics.draw.CanvasDrawLineString_Package_References."=";
   subtype CanvasDrawLineString_Access_Array is org.allbinary.graphics.draw.CanvasDrawLineString_Package_References.CanvasDrawLineString_Access_Array;
   function "=" (Left, Right : CanvasDrawLineString_Access_Array) return Boolean renames org.allbinary.graphics.draw.CanvasDrawLineString_Package_References."=";
   subtype CanvasDrawLineString_Access_Array_Access is org.allbinary.graphics.draw.CanvasDrawLineString_Package_References.CanvasDrawLineString_Access_Array_Access;
   function "=" (Left, Right : CanvasDrawLineString_Access_Array_Access) return Boolean renames org.allbinary.graphics.draw.CanvasDrawLineString_Package_References."=";
   subtype CanvasDrawLineString_Access_Array_Access_Array is org.allbinary.graphics.draw.CanvasDrawLineString_Package_References.CanvasDrawLineString_Access_Array_Access_Array;
   function "=" (Left, Right : CanvasDrawLineString_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.draw.CanvasDrawLineString_Package_References."=";
   subtype CanvasDrawLineString_Access_Array_Access_Array_Access is org.allbinary.graphics.draw.CanvasDrawLineString_Package_References.CanvasDrawLineString_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CanvasDrawLineString_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.draw.CanvasDrawLineString_Package_References."=";

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


