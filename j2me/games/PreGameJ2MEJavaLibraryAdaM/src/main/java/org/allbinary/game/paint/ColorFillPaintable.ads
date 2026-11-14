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
limited with org.allbinary.game.paint.ColorFillPaintable_Package;
package org.allbinary.game.paint.ColorFillPaintable_Package_References is
   type ColorFillPaintable_Access is access all org.allbinary.game.paint.ColorFillPaintable_Package.ColorFillPaintable'Class;
   type ColorFillPaintable_Access_Array is array (Natural range <>) of ColorFillPaintable_Access;
   type ColorFillPaintable_Access_Array_Access is access all ColorFillPaintable_Access_Array;
   type ColorFillPaintable_Access_Array_Access_Array is array (Natural range <>) of ColorFillPaintable_Access_Array_Access;
   type ColorFillPaintable_Access_Array_Access_Array_Access is access all ColorFillPaintable_Access_Array_Access_Array;
   type ColorFillPaintable_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ColorFillPaintable_Access_Array_Access;
   end record;
   function Java_Box (Value : ColorFillPaintable_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ColorFillPaintable_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ColorFillPaintable_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ColorFillPaintable_Access_Array_Access is (if Value /= null and then Value.all in ColorFillPaintable_Access_Array_Object'Class then ColorFillPaintable_Access_Array_Object'Class (Value.all).Value else null);
   type ColorFillPaintable_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ColorFillPaintable_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ColorFillPaintable_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ColorFillPaintable_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ColorFillPaintable_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ColorFillPaintable_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ColorFillPaintable_Access_Array_Access_Array_Object'Class then ColorFillPaintable_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.paint.ColorFillPaintable_Package_References;

with org.allbinary.game.paint.ColorFillPaintable_Package_References;
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
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
limited with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References;
with org.allbinary.game.paint.ColorFillBasePaintable_Package; use org.allbinary.game.paint.ColorFillBasePaintable_Package;

package org.allbinary.game.paint.ColorFillPaintable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
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
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype ColorFillPaintable_Access is org.allbinary.game.paint.ColorFillPaintable_Package_References.ColorFillPaintable_Access;
   function "=" (Left, Right : ColorFillPaintable_Access) return Boolean renames org.allbinary.game.paint.ColorFillPaintable_Package_References."=";
   subtype ColorFillPaintable_Access_Array is org.allbinary.game.paint.ColorFillPaintable_Package_References.ColorFillPaintable_Access_Array;
   function "=" (Left, Right : ColorFillPaintable_Access_Array) return Boolean renames org.allbinary.game.paint.ColorFillPaintable_Package_References."=";
   subtype ColorFillPaintable_Access_Array_Access is org.allbinary.game.paint.ColorFillPaintable_Package_References.ColorFillPaintable_Access_Array_Access;
   function "=" (Left, Right : ColorFillPaintable_Access_Array_Access) return Boolean renames org.allbinary.game.paint.ColorFillPaintable_Package_References."=";
   function Java_Box (Value : ColorFillPaintable_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.paint.ColorFillPaintable_Package_References.Java_Box;
   function Java_Unbox_ColorFillPaintable_Access_Array (Value : access Java_Object'Class) return ColorFillPaintable_Access_Array_Access renames org.allbinary.game.paint.ColorFillPaintable_Package_References.Java_Unbox_ColorFillPaintable_Access_Array;
   subtype ColorFillPaintable_Access_Array_Access_Array is org.allbinary.game.paint.ColorFillPaintable_Package_References.ColorFillPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : ColorFillPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.paint.ColorFillPaintable_Package_References."=";
   subtype ColorFillPaintable_Access_Array_Access_Array_Access is org.allbinary.game.paint.ColorFillPaintable_Package_References.ColorFillPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ColorFillPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.paint.ColorFillPaintable_Package_References."=";
   function Java_Box (Value : ColorFillPaintable_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.paint.ColorFillPaintable_Package_References.Java_Box;
   function Java_Unbox_ColorFillPaintable_Access_Array_Access_Array (Value : access Java_Object'Class) return ColorFillPaintable_Access_Array_Access_Array_Access renames org.allbinary.game.paint.ColorFillPaintable_Package_References.Java_Unbox_ColorFillPaintable_Access_Array_Access_Array;

   type ColorFillPaintable is new ColorFillBasePaintable with record
      displayInfoSingleton : DisplayInfoSingleton_Access;
   end record;

   procedure Initialize (This : in out ColorFillPaintable'Class; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (basicColor_Param : access BasicColor_Package.BasicColor'Class) return ColorFillPaintable_Access;
   procedure paint (This : in out ColorFillPaintable; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.paint.ColorFillPaintable_Package;


