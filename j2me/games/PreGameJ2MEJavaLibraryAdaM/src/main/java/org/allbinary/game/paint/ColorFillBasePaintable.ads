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
limited with org.allbinary.game.paint.ColorFillBasePaintable_Package;
package org.allbinary.game.paint.ColorFillBasePaintable_Package_References is
   type ColorFillBasePaintable_Access is access all org.allbinary.game.paint.ColorFillBasePaintable_Package.ColorFillBasePaintable'Class;
   type ColorFillBasePaintable_Access_Array is array (Natural range <>) of ColorFillBasePaintable_Access;
   type ColorFillBasePaintable_Access_Array_Access is access all ColorFillBasePaintable_Access_Array;
   type ColorFillBasePaintable_Access_Array_Access_Array is array (Natural range <>) of ColorFillBasePaintable_Access_Array_Access;
   type ColorFillBasePaintable_Access_Array_Access_Array_Access is access all ColorFillBasePaintable_Access_Array_Access_Array;
   type ColorFillBasePaintable_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ColorFillBasePaintable_Access_Array_Access;
   end record;
   function Java_Box (Value : ColorFillBasePaintable_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ColorFillBasePaintable_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ColorFillBasePaintable_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ColorFillBasePaintable_Access_Array_Access is (if Value /= null and then Value.all in ColorFillBasePaintable_Access_Array_Object'Class then ColorFillBasePaintable_Access_Array_Object'Class (Value.all).Value else null);
   type ColorFillBasePaintable_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ColorFillBasePaintable_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ColorFillBasePaintable_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ColorFillBasePaintable_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ColorFillBasePaintable_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ColorFillBasePaintable_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ColorFillBasePaintable_Access_Array_Access_Array_Object'Class then ColorFillBasePaintable_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.paint.ColorFillBasePaintable_Package_References;

with org.allbinary.game.paint.ColorFillBasePaintable_Package_References;
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
with org.allbinary.graphics.color.ColorCompositeInterface_Package; use org.allbinary.graphics.color.ColorCompositeInterface_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;

package org.allbinary.game.paint.ColorFillBasePaintable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package ColorCompositeInterface_Package renames Standard.org.allbinary.graphics.color.ColorCompositeInterface_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype ColorFillBasePaintable_Access is org.allbinary.game.paint.ColorFillBasePaintable_Package_References.ColorFillBasePaintable_Access;
   function "=" (Left, Right : ColorFillBasePaintable_Access) return Boolean renames org.allbinary.game.paint.ColorFillBasePaintable_Package_References."=";
   subtype ColorFillBasePaintable_Access_Array is org.allbinary.game.paint.ColorFillBasePaintable_Package_References.ColorFillBasePaintable_Access_Array;
   function "=" (Left, Right : ColorFillBasePaintable_Access_Array) return Boolean renames org.allbinary.game.paint.ColorFillBasePaintable_Package_References."=";
   subtype ColorFillBasePaintable_Access_Array_Access is org.allbinary.game.paint.ColorFillBasePaintable_Package_References.ColorFillBasePaintable_Access_Array_Access;
   function "=" (Left, Right : ColorFillBasePaintable_Access_Array_Access) return Boolean renames org.allbinary.game.paint.ColorFillBasePaintable_Package_References."=";
   function Java_Box (Value : ColorFillBasePaintable_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.paint.ColorFillBasePaintable_Package_References.Java_Box;
   function Java_Unbox_ColorFillBasePaintable_Access_Array (Value : access Java_Object'Class) return ColorFillBasePaintable_Access_Array_Access renames org.allbinary.game.paint.ColorFillBasePaintable_Package_References.Java_Unbox_ColorFillBasePaintable_Access_Array;
   subtype ColorFillBasePaintable_Access_Array_Access_Array is org.allbinary.game.paint.ColorFillBasePaintable_Package_References.ColorFillBasePaintable_Access_Array_Access_Array;
   function "=" (Left, Right : ColorFillBasePaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.paint.ColorFillBasePaintable_Package_References."=";
   subtype ColorFillBasePaintable_Access_Array_Access_Array_Access is org.allbinary.game.paint.ColorFillBasePaintable_Package_References.ColorFillBasePaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ColorFillBasePaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.paint.ColorFillBasePaintable_Package_References."=";
   function Java_Box (Value : ColorFillBasePaintable_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.paint.ColorFillBasePaintable_Package_References.Java_Box;
   function Java_Unbox_ColorFillBasePaintable_Access_Array_Access_Array (Value : access Java_Object'Class) return ColorFillBasePaintable_Access_Array_Access_Array_Access renames org.allbinary.game.paint.ColorFillBasePaintable_Package_References.Java_Unbox_ColorFillBasePaintable_Access_Array_Access_Array;

   type ColorFillBasePaintable is new Paintable and ColorCompositeInterface with record
      basicColor : BasicColor_Access;
      colorP : Integer;
   end record;

   procedure Initialize (This : in out ColorFillBasePaintable'Class; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (basicColor_Param : access BasicColor_Package.BasicColor'Class) return ColorFillBasePaintable_Access;
   procedure setBasicColorP (This : in out ColorFillBasePaintable; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   function getBasicColorP (This : in out ColorFillBasePaintable) return BasicColor_Access;
   function getColor (This : in out ColorFillBasePaintable) return Integer;
   procedure setColor (This : in out ColorFillBasePaintable; color : Integer);
   procedure paint (This : in out ColorFillBasePaintable; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.paint.ColorFillBasePaintable_Package;


