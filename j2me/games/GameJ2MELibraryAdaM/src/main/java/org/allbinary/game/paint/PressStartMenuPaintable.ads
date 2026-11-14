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
limited with org.allbinary.game.paint.PressStartMenuPaintable_Package;
package org.allbinary.game.paint.PressStartMenuPaintable_Package_References is
   type PressStartMenuPaintable_Access is access all org.allbinary.game.paint.PressStartMenuPaintable_Package.PressStartMenuPaintable'Class;
   type PressStartMenuPaintable_Access_Array is array (Natural range <>) of PressStartMenuPaintable_Access;
   type PressStartMenuPaintable_Access_Array_Access is access all PressStartMenuPaintable_Access_Array;
   type PressStartMenuPaintable_Access_Array_Access_Array is array (Natural range <>) of PressStartMenuPaintable_Access_Array_Access;
   type PressStartMenuPaintable_Access_Array_Access_Array_Access is access all PressStartMenuPaintable_Access_Array_Access_Array;
   type PressStartMenuPaintable_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PressStartMenuPaintable_Access_Array_Access;
   end record;
   function Java_Box (Value : PressStartMenuPaintable_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PressStartMenuPaintable_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PressStartMenuPaintable_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PressStartMenuPaintable_Access_Array_Access is (if Value /= null and then Value.all in PressStartMenuPaintable_Access_Array_Object'Class then PressStartMenuPaintable_Access_Array_Object'Class (Value.all).Value else null);
   type PressStartMenuPaintable_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PressStartMenuPaintable_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PressStartMenuPaintable_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PressStartMenuPaintable_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PressStartMenuPaintable_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PressStartMenuPaintable_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PressStartMenuPaintable_Access_Array_Access_Array_Object'Class then PressStartMenuPaintable_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.paint.PressStartMenuPaintable_Package_References;

with org.allbinary.game.paint.PressStartMenuPaintable_Package_References;
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
limited with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;

package org.allbinary.game.paint.PressStartMenuPaintable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
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
   subtype TimeDelayHelper_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access;
   use type TimeDelayHelper_Access;
   subtype TimeDelayHelper_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array;
   use type TimeDelayHelper_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access;
   subtype TimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array;
   use type TimeDelayHelper_Access_Array_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PressStartMenuPaintable_Access is org.allbinary.game.paint.PressStartMenuPaintable_Package_References.PressStartMenuPaintable_Access;
   function "=" (Left, Right : PressStartMenuPaintable_Access) return Boolean renames org.allbinary.game.paint.PressStartMenuPaintable_Package_References."=";
   subtype PressStartMenuPaintable_Access_Array is org.allbinary.game.paint.PressStartMenuPaintable_Package_References.PressStartMenuPaintable_Access_Array;
   function "=" (Left, Right : PressStartMenuPaintable_Access_Array) return Boolean renames org.allbinary.game.paint.PressStartMenuPaintable_Package_References."=";
   subtype PressStartMenuPaintable_Access_Array_Access is org.allbinary.game.paint.PressStartMenuPaintable_Package_References.PressStartMenuPaintable_Access_Array_Access;
   function "=" (Left, Right : PressStartMenuPaintable_Access_Array_Access) return Boolean renames org.allbinary.game.paint.PressStartMenuPaintable_Package_References."=";
   function Java_Box (Value : PressStartMenuPaintable_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.paint.PressStartMenuPaintable_Package_References.Java_Box;
   function Java_Unbox_PressStartMenuPaintable_Access_Array (Value : access Java_Object'Class) return PressStartMenuPaintable_Access_Array_Access renames org.allbinary.game.paint.PressStartMenuPaintable_Package_References.Java_Unbox_PressStartMenuPaintable_Access_Array;
   subtype PressStartMenuPaintable_Access_Array_Access_Array is org.allbinary.game.paint.PressStartMenuPaintable_Package_References.PressStartMenuPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : PressStartMenuPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.paint.PressStartMenuPaintable_Package_References."=";
   subtype PressStartMenuPaintable_Access_Array_Access_Array_Access is org.allbinary.game.paint.PressStartMenuPaintable_Package_References.PressStartMenuPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PressStartMenuPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.paint.PressStartMenuPaintable_Package_References."=";
   function Java_Box (Value : PressStartMenuPaintable_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.paint.PressStartMenuPaintable_Package_References.Java_Box;
   function Java_Unbox_PressStartMenuPaintable_Access_Array_Access_Array (Value : access Java_Object'Class) return PressStartMenuPaintable_Access_Array_Access_Array_Access renames org.allbinary.game.paint.PressStartMenuPaintable_Package_References.Java_Unbox_PressStartMenuPaintable_Access_Array_Access_Array;

   type PressStartMenuPaintable is new Paintable and UpdateMyFontInterface with record
      displayInfo : DisplayInfoSingleton_Access;
      PRESS_START : Unbounded_String;
      KEY_START : Unbounded_String;
      MENU_START : Unbounded_String;
      myFontProcessor : MyFontProcessor_Access;
      startString : Unbounded_String;
      timeDelayHelper : TimeDelayHelper_Access;
      flash : Boolean;
      anchor : Integer;
      beginWidth : Integer;
      line : Integer;
   end record;

   procedure Initialize (This : in out PressStartMenuPaintable'Class);
   function Create return PressStartMenuPaintable_Access;
   procedure updateMeasurement (This : in out PressStartMenuPaintable; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure paint (This : in out PressStartMenuPaintable; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure setFlash (This : in out PressStartMenuPaintable; flash : Boolean);
   function isFlash (This : in out PressStartMenuPaintable) return Boolean;

end org.allbinary.game.paint.PressStartMenuPaintable_Package;


