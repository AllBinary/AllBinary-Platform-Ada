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
limited with org.allbinary.animation.VectorBaseRotationAnimation_Package;
package org.allbinary.animation.VectorBaseRotationAnimation_Package_References is
   type VectorBaseRotationAnimation_Access is access all org.allbinary.animation.VectorBaseRotationAnimation_Package.VectorBaseRotationAnimation'Class;
   type VectorBaseRotationAnimation_Access_Array is array (Natural range <>) of VectorBaseRotationAnimation_Access;
   type VectorBaseRotationAnimation_Access_Array_Access is access all VectorBaseRotationAnimation_Access_Array;
   type VectorBaseRotationAnimation_Access_Array_Access_Array is array (Natural range <>) of VectorBaseRotationAnimation_Access_Array_Access;
   type VectorBaseRotationAnimation_Access_Array_Access_Array_Access is access all VectorBaseRotationAnimation_Access_Array_Access_Array;
   type VectorBaseRotationAnimation_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : VectorBaseRotationAnimation_Access_Array_Access;
   end record;
   function Java_Box (Value : VectorBaseRotationAnimation_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new VectorBaseRotationAnimation_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_VectorBaseRotationAnimation_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return VectorBaseRotationAnimation_Access_Array_Access is (if Value /= null and then Value.all in VectorBaseRotationAnimation_Access_Array_Object'Class then VectorBaseRotationAnimation_Access_Array_Object'Class (Value.all).Value else null);
   type VectorBaseRotationAnimation_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : VectorBaseRotationAnimation_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : VectorBaseRotationAnimation_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new VectorBaseRotationAnimation_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_VectorBaseRotationAnimation_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return VectorBaseRotationAnimation_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in VectorBaseRotationAnimation_Access_Array_Access_Array_Object'Class then VectorBaseRotationAnimation_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.VectorBaseRotationAnimation_Package_References;

with org.allbinary.animation.VectorBaseRotationAnimation_Package_References;
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
limited with org.allbinary.math.AngleInfo_Package;
with org.allbinary.math.AngleInfo_Package_References;
with org.allbinary.animation.RotationAnimation_Package; use org.allbinary.animation.RotationAnimation_Package;
with org.allbinary.animation.VectorAnimationInterface_Package; use org.allbinary.animation.VectorAnimationInterface_Package;
limited with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationBehavior_Package_References;

package org.allbinary.animation.VectorBaseRotationAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;
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
   subtype AngleInfo_Access is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access;
   use type AngleInfo_Access;
   subtype AngleInfo_Access_Array is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array;
   use type AngleInfo_Access_Array;
   subtype AngleInfo_Access_Array_Access is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array_Access;
   use type AngleInfo_Access_Array_Access;
   subtype AngleInfo_Access_Array_Access_Array is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array_Access_Array;
   use type AngleInfo_Access_Array_Access_Array;
   subtype AngleInfo_Access_Array_Access_Array_Access is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array_Access_Array_Access;
   use type AngleInfo_Access_Array_Access_Array_Access;
   subtype AnimationBehavior_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access;
   use type AnimationBehavior_Access;
   subtype AnimationBehavior_Access_Array is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array;
   use type AnimationBehavior_Access_Array;
   subtype AnimationBehavior_Access_Array_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access;
   use type AnimationBehavior_Access_Array_Access;
   subtype AnimationBehavior_Access_Array_Access_Array is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access_Array;
   use type AnimationBehavior_Access_Array_Access_Array;
   subtype AnimationBehavior_Access_Array_Access_Array_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access_Array_Access;
   use type AnimationBehavior_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype VectorBaseRotationAnimation_Access is org.allbinary.animation.VectorBaseRotationAnimation_Package_References.VectorBaseRotationAnimation_Access;
   function "=" (Left, Right : VectorBaseRotationAnimation_Access) return Boolean renames org.allbinary.animation.VectorBaseRotationAnimation_Package_References."=";
   subtype VectorBaseRotationAnimation_Access_Array is org.allbinary.animation.VectorBaseRotationAnimation_Package_References.VectorBaseRotationAnimation_Access_Array;
   function "=" (Left, Right : VectorBaseRotationAnimation_Access_Array) return Boolean renames org.allbinary.animation.VectorBaseRotationAnimation_Package_References."=";
   subtype VectorBaseRotationAnimation_Access_Array_Access is org.allbinary.animation.VectorBaseRotationAnimation_Package_References.VectorBaseRotationAnimation_Access_Array_Access;
   function "=" (Left, Right : VectorBaseRotationAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.VectorBaseRotationAnimation_Package_References."=";
   function Java_Box (Value : VectorBaseRotationAnimation_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.VectorBaseRotationAnimation_Package_References.Java_Box;
   function Java_Unbox_VectorBaseRotationAnimation_Access_Array (Value : access Java_Object'Class) return VectorBaseRotationAnimation_Access_Array_Access renames org.allbinary.animation.VectorBaseRotationAnimation_Package_References.Java_Unbox_VectorBaseRotationAnimation_Access_Array;
   subtype VectorBaseRotationAnimation_Access_Array_Access_Array is org.allbinary.animation.VectorBaseRotationAnimation_Package_References.VectorBaseRotationAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : VectorBaseRotationAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.VectorBaseRotationAnimation_Package_References."=";
   subtype VectorBaseRotationAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.VectorBaseRotationAnimation_Package_References.VectorBaseRotationAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VectorBaseRotationAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.VectorBaseRotationAnimation_Package_References."=";
   function Java_Box (Value : VectorBaseRotationAnimation_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.VectorBaseRotationAnimation_Package_References.Java_Box;
   function Java_Unbox_VectorBaseRotationAnimation_Access_Array_Access_Array (Value : access Java_Object'Class) return VectorBaseRotationAnimation_Access_Array_Access_Array_Access renames org.allbinary.animation.VectorBaseRotationAnimation_Package_References.Java_Unbox_VectorBaseRotationAnimation_Access_Array_Access_Array;

   type VectorBaseRotationAnimation is new RotationAnimation and VectorAnimationInterface with record
      currentPoints : Integer_Array_Access_Array_Access_Array_Access;
   end record;

   procedure Initialize (This : in out VectorBaseRotationAnimation'Class; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; currentPoints : Integer_Array_Access_Array_Access_Array_Access; basicColor_Param : access BasicColor_Package.BasicColor'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; currentPoints : Integer_Array_Access_Array_Access_Array_Access; basicColor_Param : access BasicColor_Package.BasicColor'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return VectorBaseRotationAnimation_Access;
   function getAnimationSize (This : in out VectorBaseRotationAnimation) return Integer;
   function getFrame (This : in out VectorBaseRotationAnimation) return Integer;
   procedure setFrame (This : in out VectorBaseRotationAnimation; index : Integer);
   procedure nextFrame (This : in out VectorBaseRotationAnimation);
   procedure previousFrame (This : in out VectorBaseRotationAnimation);
   function getSize (This : in out VectorBaseRotationAnimation) return Integer;
   procedure setSequence (This : in out VectorBaseRotationAnimation; sequence : Integer_Array_Access);
   function getSequence (This : in out VectorBaseRotationAnimation) return Integer_Array_Access;
   procedure paintXY (This : in out VectorBaseRotationAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);
   function getPoints (This : in out VectorBaseRotationAnimation; frame : Integer) return Integer_Array_Access_Array_Access;
   procedure getPoints (This : in out VectorBaseRotationAnimation; frame : Integer);
   procedure setPoints (This : in out VectorBaseRotationAnimation; currentPoints : Integer_Array_Access_Array_Access_Array_Access);
   function getBasicColorP (This : in out VectorBaseRotationAnimation) return BasicColor_Access;
   procedure setBasicColorP (This : in out VectorBaseRotationAnimation; basicColor_Param : access BasicColor_Package.BasicColor'Class);

end org.allbinary.animation.VectorBaseRotationAnimation_Package;


