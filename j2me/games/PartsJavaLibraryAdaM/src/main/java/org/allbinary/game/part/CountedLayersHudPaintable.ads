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
limited with org.allbinary.game.part.CountedLayersHudPaintable_Package;
package org.allbinary.game.part.CountedLayersHudPaintable_Package_References is
   type CountedLayersHudPaintable_Access is access all org.allbinary.game.part.CountedLayersHudPaintable_Package.CountedLayersHudPaintable'Class;
   type CountedLayersHudPaintable_Access_Array is array (Natural range <>) of CountedLayersHudPaintable_Access;
   type CountedLayersHudPaintable_Access_Array_Access is access all CountedLayersHudPaintable_Access_Array;
   type CountedLayersHudPaintable_Access_Array_Access_Array is array (Natural range <>) of CountedLayersHudPaintable_Access_Array_Access;
   type CountedLayersHudPaintable_Access_Array_Access_Array_Access is access all CountedLayersHudPaintable_Access_Array_Access_Array;
   type CountedLayersHudPaintable_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CountedLayersHudPaintable_Access_Array_Access;
   end record;
   function Java_Box (Value : CountedLayersHudPaintable_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CountedLayersHudPaintable_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CountedLayersHudPaintable_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CountedLayersHudPaintable_Access_Array_Access is (if Value /= null and then Value.all in CountedLayersHudPaintable_Access_Array_Object'Class then CountedLayersHudPaintable_Access_Array_Object'Class (Value.all).Value else null);
   type CountedLayersHudPaintable_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CountedLayersHudPaintable_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CountedLayersHudPaintable_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CountedLayersHudPaintable_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CountedLayersHudPaintable_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CountedLayersHudPaintable_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CountedLayersHudPaintable_Access_Array_Access_Array_Object'Class then CountedLayersHudPaintable_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.part.CountedLayersHudPaintable_Package_References;

with org.allbinary.game.part.CountedLayersHudPaintable_Package_References;
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
with org.allbinary.graphics.paint.PaintableInterface_Package; use org.allbinary.graphics.paint.PaintableInterface_Package;
limited with org.allbinary.game.part.PartInterface_Package;
with org.allbinary.game.part.PartInterface_Package_References;

package org.allbinary.game.part.CountedLayersHudPaintable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package PaintableInterface_Package renames Standard.org.allbinary.graphics.paint.PaintableInterface_Package;
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
   subtype PartInterface_Access is org.allbinary.game.part.PartInterface_Package_References.PartInterface_Access;
   use type PartInterface_Access;
   subtype PartInterface_Access_Array is org.allbinary.game.part.PartInterface_Package_References.PartInterface_Access_Array;
   use type PartInterface_Access_Array;
   subtype PartInterface_Access_Array_Access is org.allbinary.game.part.PartInterface_Package_References.PartInterface_Access_Array_Access;
   use type PartInterface_Access_Array_Access;
   subtype PartInterface_Access_Array_Access_Array is org.allbinary.game.part.PartInterface_Package_References.PartInterface_Access_Array_Access_Array;
   use type PartInterface_Access_Array_Access_Array;
   subtype PartInterface_Access_Array_Access_Array_Access is org.allbinary.game.part.PartInterface_Package_References.PartInterface_Access_Array_Access_Array_Access;
   use type PartInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CountedLayersHudPaintable_Access is org.allbinary.game.part.CountedLayersHudPaintable_Package_References.CountedLayersHudPaintable_Access;
   function "=" (Left, Right : CountedLayersHudPaintable_Access) return Boolean renames org.allbinary.game.part.CountedLayersHudPaintable_Package_References."=";
   subtype CountedLayersHudPaintable_Access_Array is org.allbinary.game.part.CountedLayersHudPaintable_Package_References.CountedLayersHudPaintable_Access_Array;
   function "=" (Left, Right : CountedLayersHudPaintable_Access_Array) return Boolean renames org.allbinary.game.part.CountedLayersHudPaintable_Package_References."=";
   subtype CountedLayersHudPaintable_Access_Array_Access is org.allbinary.game.part.CountedLayersHudPaintable_Package_References.CountedLayersHudPaintable_Access_Array_Access;
   function "=" (Left, Right : CountedLayersHudPaintable_Access_Array_Access) return Boolean renames org.allbinary.game.part.CountedLayersHudPaintable_Package_References."=";
   function Java_Box (Value : CountedLayersHudPaintable_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.part.CountedLayersHudPaintable_Package_References.Java_Box;
   function Java_Unbox_CountedLayersHudPaintable_Access_Array (Value : access Java_Object'Class) return CountedLayersHudPaintable_Access_Array_Access renames org.allbinary.game.part.CountedLayersHudPaintable_Package_References.Java_Unbox_CountedLayersHudPaintable_Access_Array;
   subtype CountedLayersHudPaintable_Access_Array_Access_Array is org.allbinary.game.part.CountedLayersHudPaintable_Package_References.CountedLayersHudPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : CountedLayersHudPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.part.CountedLayersHudPaintable_Package_References."=";
   subtype CountedLayersHudPaintable_Access_Array_Access_Array_Access is org.allbinary.game.part.CountedLayersHudPaintable_Package_References.CountedLayersHudPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CountedLayersHudPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.part.CountedLayersHudPaintable_Package_References."=";
   function Java_Box (Value : CountedLayersHudPaintable_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.part.CountedLayersHudPaintable_Package_References.Java_Box;
   function Java_Unbox_CountedLayersHudPaintable_Access_Array_Access_Array (Value : access Java_Object'Class) return CountedLayersHudPaintable_Access_Array_Access_Array_Access renames org.allbinary.game.part.CountedLayersHudPaintable_Package_References.Java_Unbox_CountedLayersHudPaintable_Access_Array_Access_Array;

   type CountedLayersHudPaintable is new Java_Object and PaintableInterface and UpdateMyFontInterface with record
      displayInfoSingleton : DisplayInfoSingleton_Access;
      partInterfaceArray : PartInterface_Access_Array_Access;
      countedTotalStringColor : Integer;
      countedPartsBorder : Integer;
      startIndex : Integer;
      dropSize : Integer;
      myFontProcessor : MyFontProcessor_Access;
      height : Integer;
   end record;
   XXStringWidth : Integer;

   procedure Initialize (This : in out CountedLayersHudPaintable'Class; partInterfaceArray : PartInterface_Access_Array_Access; dropSize : Integer; startIndex : Integer; countedTotalStringColor : Integer; countedPartsBorder : Integer);
   function Create (partInterfaceArray : PartInterface_Access_Array_Access; dropSize : Integer; startIndex : Integer; countedTotalStringColor : Integer; countedPartsBorder : Integer) return CountedLayersHudPaintable_Access;
   procedure updateMeasurement (This : in out CountedLayersHudPaintable; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure paint (This : in out CountedLayersHudPaintable; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure paintThreed (This : in out CountedLayersHudPaintable; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.part.CountedLayersHudPaintable_Package;


