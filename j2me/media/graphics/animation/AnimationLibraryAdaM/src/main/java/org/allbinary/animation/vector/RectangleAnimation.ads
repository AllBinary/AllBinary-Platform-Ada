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
limited with org.allbinary.animation.vector.RectangleAnimation_Package;
package org.allbinary.animation.vector.RectangleAnimation_Package_References is
   type RectangleAnimation_Access is access all org.allbinary.animation.vector.RectangleAnimation_Package.RectangleAnimation'Class;
   type RectangleAnimation_Access_Array is array (Natural range <>) of RectangleAnimation_Access;
   type RectangleAnimation_Access_Array_Access is access all RectangleAnimation_Access_Array;
   type RectangleAnimation_Access_Array_Access_Array is array (Natural range <>) of RectangleAnimation_Access_Array_Access;
   type RectangleAnimation_Access_Array_Access_Array_Access is access all RectangleAnimation_Access_Array_Access_Array;
   type RectangleAnimation_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RectangleAnimation_Access_Array_Access;
   end record;
   function Java_Box (Value : RectangleAnimation_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RectangleAnimation_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RectangleAnimation_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RectangleAnimation_Access_Array_Access is (if Value /= null and then Value.all in RectangleAnimation_Access_Array_Object'Class then RectangleAnimation_Access_Array_Object'Class (Value.all).Value else null);
   type RectangleAnimation_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RectangleAnimation_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : RectangleAnimation_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RectangleAnimation_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RectangleAnimation_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RectangleAnimation_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in RectangleAnimation_Access_Array_Access_Array_Object'Class then RectangleAnimation_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.vector.RectangleAnimation_Package_References;

with org.allbinary.animation.vector.RectangleAnimation_Package_References;
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
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.color.ColorCompositeInterface_Package; use org.allbinary.graphics.color.ColorCompositeInterface_Package;

package org.allbinary.animation.vector.RectangleAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package ColorCompositeInterface_Package renames Standard.org.allbinary.graphics.color.ColorCompositeInterface_Package;
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


   subtype RectangleAnimation_Access is org.allbinary.animation.vector.RectangleAnimation_Package_References.RectangleAnimation_Access;
   function "=" (Left, Right : RectangleAnimation_Access) return Boolean renames org.allbinary.animation.vector.RectangleAnimation_Package_References."=";
   subtype RectangleAnimation_Access_Array is org.allbinary.animation.vector.RectangleAnimation_Package_References.RectangleAnimation_Access_Array;
   function "=" (Left, Right : RectangleAnimation_Access_Array) return Boolean renames org.allbinary.animation.vector.RectangleAnimation_Package_References."=";
   subtype RectangleAnimation_Access_Array_Access is org.allbinary.animation.vector.RectangleAnimation_Package_References.RectangleAnimation_Access_Array_Access;
   function "=" (Left, Right : RectangleAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.vector.RectangleAnimation_Package_References."=";
   function Java_Box (Value : RectangleAnimation_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.vector.RectangleAnimation_Package_References.Java_Box;
   function Java_Unbox_RectangleAnimation_Access_Array (Value : access Java_Object'Class) return RectangleAnimation_Access_Array_Access renames org.allbinary.animation.vector.RectangleAnimation_Package_References.Java_Unbox_RectangleAnimation_Access_Array;
   subtype RectangleAnimation_Access_Array_Access_Array is org.allbinary.animation.vector.RectangleAnimation_Package_References.RectangleAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : RectangleAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.vector.RectangleAnimation_Package_References."=";
   subtype RectangleAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.vector.RectangleAnimation_Package_References.RectangleAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RectangleAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.vector.RectangleAnimation_Package_References."=";
   function Java_Box (Value : RectangleAnimation_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.vector.RectangleAnimation_Package_References.Java_Box;
   function Java_Unbox_RectangleAnimation_Access_Array_Access_Array (Value : access Java_Object'Class) return RectangleAnimation_Access_Array_Access_Array_Access renames org.allbinary.animation.vector.RectangleAnimation_Package_References.Java_Unbox_RectangleAnimation_Access_Array_Access_Array;

   type RectangleAnimation is new Animation_Package.Animation and ColorCompositeInterface with record
      width : Integer;
      height : Integer;
   end record;

   procedure Initialize (This : in out RectangleAnimation'Class; width : Integer; height : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (width : Integer; height : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) return RectangleAnimation_Access;
   procedure nextFrame (This : in out RectangleAnimation);
   procedure paintXY (This : in out RectangleAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);
   procedure setWidth (This : in out RectangleAnimation; width : Integer);
   procedure setHeight (This : in out RectangleAnimation; height : Integer);
   function getBasicColorP (This : in out RectangleAnimation) return BasicColor_Access;
   procedure setBasicColorP (This : in out RectangleAnimation; basicColor_Param : access BasicColor_Package.BasicColor'Class);

end org.allbinary.animation.vector.RectangleAnimation_Package;


