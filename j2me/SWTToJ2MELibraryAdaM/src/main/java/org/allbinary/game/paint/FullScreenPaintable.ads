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

with AllBinary_Java;
limited with org.allbinary.game.paint.FullScreenPaintable_Package;
package org.allbinary.game.paint.FullScreenPaintable_Package_References is
   type FullScreenPaintable_Access is access all org.allbinary.game.paint.FullScreenPaintable_Package.FullScreenPaintable'Class;
   type FullScreenPaintable_Access_Array is array (Natural range <>) of FullScreenPaintable_Access;
   type FullScreenPaintable_Access_Array_Access is access all FullScreenPaintable_Access_Array;
   type FullScreenPaintable_Access_Array_Access_Array is array (Natural range <>) of FullScreenPaintable_Access_Array_Access;
   type FullScreenPaintable_Access_Array_Access_Array_Access is access all FullScreenPaintable_Access_Array_Access_Array;
   type FullScreenPaintable_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FullScreenPaintable_Access_Array_Access;
   end record;
   function Java_Box (Value : FullScreenPaintable_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FullScreenPaintable_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FullScreenPaintable_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FullScreenPaintable_Access_Array_Access is (if Value /= null and then Value.all in FullScreenPaintable_Access_Array_Object'Class then FullScreenPaintable_Access_Array_Object'Class (Value.all).Value else null);
   type FullScreenPaintable_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FullScreenPaintable_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : FullScreenPaintable_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FullScreenPaintable_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FullScreenPaintable_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FullScreenPaintable_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in FullScreenPaintable_Access_Array_Access_Array_Object'Class then FullScreenPaintable_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.paint.FullScreenPaintable_Package_References;

with org.allbinary.game.paint.FullScreenPaintable_Package_References;
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
limited with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References;
limited with org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package_References;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;

package org.allbinary.game.paint.FullScreenPaintable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;
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
   subtype DisplayInfoSingleton_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access;
   use type DisplayInfoSingleton_Access;
   subtype DisplayInfoSingleton_Access_Array is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array;
   use type DisplayInfoSingleton_Access_Array;
   subtype DisplayInfoSingleton_Access_Array_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access;
   use type DisplayInfoSingleton_Access_Array_Access;
   subtype DisplayInfoSingleton_Access_Array_Access_Array is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access_Array;
   use type DisplayInfoSingleton_Access_Array_Access_Array;
   subtype DisplayInfoSingleton_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access_Array_Access;
   use type DisplayInfoSingleton_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype FullScreenPaintable_Access is org.allbinary.game.paint.FullScreenPaintable_Package_References.FullScreenPaintable_Access;
   function "=" (Left, Right : FullScreenPaintable_Access) return Boolean renames org.allbinary.game.paint.FullScreenPaintable_Package_References."=";
   subtype FullScreenPaintable_Access_Array is org.allbinary.game.paint.FullScreenPaintable_Package_References.FullScreenPaintable_Access_Array;
   function "=" (Left, Right : FullScreenPaintable_Access_Array) return Boolean renames org.allbinary.game.paint.FullScreenPaintable_Package_References."=";
   subtype FullScreenPaintable_Access_Array_Access is org.allbinary.game.paint.FullScreenPaintable_Package_References.FullScreenPaintable_Access_Array_Access;
   function "=" (Left, Right : FullScreenPaintable_Access_Array_Access) return Boolean renames org.allbinary.game.paint.FullScreenPaintable_Package_References."=";
   function Java_Box (Value : FullScreenPaintable_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.paint.FullScreenPaintable_Package_References.Java_Box;
   function Java_Unbox_FullScreenPaintable_Access_Array (Value : access Java_Object'Class) return FullScreenPaintable_Access_Array_Access renames org.allbinary.game.paint.FullScreenPaintable_Package_References.Java_Unbox_FullScreenPaintable_Access_Array;
   subtype FullScreenPaintable_Access_Array_Access_Array is org.allbinary.game.paint.FullScreenPaintable_Package_References.FullScreenPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : FullScreenPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.paint.FullScreenPaintable_Package_References."=";
   subtype FullScreenPaintable_Access_Array_Access_Array_Access is org.allbinary.game.paint.FullScreenPaintable_Package_References.FullScreenPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FullScreenPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.paint.FullScreenPaintable_Package_References."=";
   function Java_Box (Value : FullScreenPaintable_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.paint.FullScreenPaintable_Package_References.Java_Box;
   function Java_Unbox_FullScreenPaintable_Access_Array_Access_Array (Value : access Java_Object'Class) return FullScreenPaintable_Access_Array_Access_Array_Access renames org.allbinary.game.paint.FullScreenPaintable_Package_References.Java_Unbox_FullScreenPaintable_Access_Array_Access_Array;

   type FullScreenPaintable is new Paintable and UpdateMyFontInterface with record
      displayInfo : DisplayInfoSingleton_Access;
      myFontProcessor : MyFontProcessor_Access;
      FULLSCREEN_TEXT : Unbounded_String;
      anchor : Integer;
      Y : Integer;
      beginWidth : Integer;
   end record;

   procedure Initialize (This : in out FullScreenPaintable'Class);
   function Create return FullScreenPaintable_Access;
   function getInstance return FullScreenPaintable_Access;
   procedure updateMeasurement (This : in out FullScreenPaintable; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure paint (This : in out FullScreenPaintable; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.paint.FullScreenPaintable_Package;


