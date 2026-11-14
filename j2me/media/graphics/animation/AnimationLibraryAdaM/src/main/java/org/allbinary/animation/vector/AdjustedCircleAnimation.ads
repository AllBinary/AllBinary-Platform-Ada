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
limited with org.allbinary.animation.vector.AdjustedCircleAnimation_Package;
package org.allbinary.animation.vector.AdjustedCircleAnimation_Package_References is
   type AdjustedCircleAnimation_Access is access all org.allbinary.animation.vector.AdjustedCircleAnimation_Package.AdjustedCircleAnimation'Class;
   type AdjustedCircleAnimation_Access_Array is array (Natural range <>) of AdjustedCircleAnimation_Access;
   type AdjustedCircleAnimation_Access_Array_Access is access all AdjustedCircleAnimation_Access_Array;
   type AdjustedCircleAnimation_Access_Array_Access_Array is array (Natural range <>) of AdjustedCircleAnimation_Access_Array_Access;
   type AdjustedCircleAnimation_Access_Array_Access_Array_Access is access all AdjustedCircleAnimation_Access_Array_Access_Array;
   type AdjustedCircleAnimation_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AdjustedCircleAnimation_Access_Array_Access;
   end record;
   function Java_Box (Value : AdjustedCircleAnimation_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AdjustedCircleAnimation_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AdjustedCircleAnimation_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AdjustedCircleAnimation_Access_Array_Access is (if Value /= null and then Value.all in AdjustedCircleAnimation_Access_Array_Object'Class then AdjustedCircleAnimation_Access_Array_Object'Class (Value.all).Value else null);
   type AdjustedCircleAnimation_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AdjustedCircleAnimation_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AdjustedCircleAnimation_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AdjustedCircleAnimation_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AdjustedCircleAnimation_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AdjustedCircleAnimation_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AdjustedCircleAnimation_Access_Array_Access_Array_Object'Class then AdjustedCircleAnimation_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.vector.AdjustedCircleAnimation_Package_References;

with org.allbinary.animation.vector.AdjustedCircleAnimation_Package_References;
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
with org.allbinary.animation.vector.CircleAnimation_Package; use org.allbinary.animation.vector.CircleAnimation_Package;

package org.allbinary.animation.vector.AdjustedCircleAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
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


   subtype AdjustedCircleAnimation_Access is org.allbinary.animation.vector.AdjustedCircleAnimation_Package_References.AdjustedCircleAnimation_Access;
   function "=" (Left, Right : AdjustedCircleAnimation_Access) return Boolean renames org.allbinary.animation.vector.AdjustedCircleAnimation_Package_References."=";
   subtype AdjustedCircleAnimation_Access_Array is org.allbinary.animation.vector.AdjustedCircleAnimation_Package_References.AdjustedCircleAnimation_Access_Array;
   function "=" (Left, Right : AdjustedCircleAnimation_Access_Array) return Boolean renames org.allbinary.animation.vector.AdjustedCircleAnimation_Package_References."=";
   subtype AdjustedCircleAnimation_Access_Array_Access is org.allbinary.animation.vector.AdjustedCircleAnimation_Package_References.AdjustedCircleAnimation_Access_Array_Access;
   function "=" (Left, Right : AdjustedCircleAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.vector.AdjustedCircleAnimation_Package_References."=";
   function Java_Box (Value : AdjustedCircleAnimation_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.vector.AdjustedCircleAnimation_Package_References.Java_Box;
   function Java_Unbox_AdjustedCircleAnimation_Access_Array (Value : access Java_Object'Class) return AdjustedCircleAnimation_Access_Array_Access renames org.allbinary.animation.vector.AdjustedCircleAnimation_Package_References.Java_Unbox_AdjustedCircleAnimation_Access_Array;
   subtype AdjustedCircleAnimation_Access_Array_Access_Array is org.allbinary.animation.vector.AdjustedCircleAnimation_Package_References.AdjustedCircleAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : AdjustedCircleAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.vector.AdjustedCircleAnimation_Package_References."=";
   subtype AdjustedCircleAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.vector.AdjustedCircleAnimation_Package_References.AdjustedCircleAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdjustedCircleAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.vector.AdjustedCircleAnimation_Package_References."=";
   function Java_Box (Value : AdjustedCircleAnimation_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.vector.AdjustedCircleAnimation_Package_References.Java_Box;
   function Java_Unbox_AdjustedCircleAnimation_Access_Array_Access_Array (Value : access Java_Object'Class) return AdjustedCircleAnimation_Access_Array_Access_Array_Access renames org.allbinary.animation.vector.AdjustedCircleAnimation_Package_References.Java_Unbox_AdjustedCircleAnimation_Access_Array_Access_Array;

   type AdjustedCircleAnimation is new CircleAnimation with record
      xAdjustment : Integer;
      yAdjustment : Integer;
   end record;

   procedure Initialize (This : in out AdjustedCircleAnimation'Class; width : Integer; height : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (width : Integer; height : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) return AdjustedCircleAnimation_Access;
   function createAnimation (width : Integer; height : Integer; xAdjustment : Integer; yAdjustment : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) return AdjustedCircleAnimation_Access;
   procedure createAnimation (width : Integer; height : Integer; xAdjustment : Integer; yAdjustment : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   function createW (width : Integer; height : Integer; innerWidth : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) return AdjustedCircleAnimation_Access;
   procedure createW (width : Integer; height : Integer; innerWidth : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   procedure initXY (This : in out AdjustedCircleAnimation; xAdjustment : Integer; yAdjustment : Integer);
   procedure init (This : in out AdjustedCircleAnimation; innerWidth : Integer);
   procedure paintXY (This : in out AdjustedCircleAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);

end org.allbinary.animation.vector.AdjustedCircleAnimation_Package;


