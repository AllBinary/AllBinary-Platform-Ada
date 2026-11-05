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

limited with org.allbinary.animation.VectorAnimation_Package;
package org.allbinary.animation.VectorAnimation_Package_References is
   type VectorAnimation_Access is access all org.allbinary.animation.VectorAnimation_Package.VectorAnimation'Class;
   type VectorAnimation_Access_Array is array (Natural range <>) of VectorAnimation_Access;
   type VectorAnimation_Access_Array_Access is access all VectorAnimation_Access_Array;
   type VectorAnimation_Access_Array_Access_Array is array (Natural range <>) of VectorAnimation_Access_Array_Access;
   type VectorAnimation_Access_Array_Access_Array_Access is access all VectorAnimation_Access_Array_Access_Array;
end org.allbinary.animation.VectorAnimation_Package_References;

with org.allbinary.animation.VectorAnimation_Package_References;
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
limited with org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.util.CircularIndexUtil_Package_References;
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.animation.VectorAnimationInterface_Package; use org.allbinary.animation.VectorAnimationInterface_Package;
limited with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationBehavior_Package_References;

package org.allbinary.animation.VectorAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package CircularIndexUtil_Package renames Standard.org.allbinary.util.CircularIndexUtil_Package;
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
   subtype CircularIndexUtil_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access;
   use type CircularIndexUtil_Access;
   subtype CircularIndexUtil_Access_Array is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array;
   use type CircularIndexUtil_Access_Array;
   subtype CircularIndexUtil_Access_Array_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access;
   use type CircularIndexUtil_Access_Array_Access;
   subtype CircularIndexUtil_Access_Array_Access_Array is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access_Array;
   use type CircularIndexUtil_Access_Array_Access_Array;
   subtype CircularIndexUtil_Access_Array_Access_Array_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access_Array_Access;
   use type CircularIndexUtil_Access_Array_Access_Array_Access;
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


   subtype VectorAnimation_Access is org.allbinary.animation.VectorAnimation_Package_References.VectorAnimation_Access;
   function "=" (Left, Right : VectorAnimation_Access) return Boolean renames org.allbinary.animation.VectorAnimation_Package_References."=";
   subtype VectorAnimation_Access_Array is org.allbinary.animation.VectorAnimation_Package_References.VectorAnimation_Access_Array;
   function "=" (Left, Right : VectorAnimation_Access_Array) return Boolean renames org.allbinary.animation.VectorAnimation_Package_References."=";
   subtype VectorAnimation_Access_Array_Access is org.allbinary.animation.VectorAnimation_Package_References.VectorAnimation_Access_Array_Access;
   function "=" (Left, Right : VectorAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.VectorAnimation_Package_References."=";
   subtype VectorAnimation_Access_Array_Access_Array is org.allbinary.animation.VectorAnimation_Package_References.VectorAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : VectorAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.VectorAnimation_Package_References."=";
   subtype VectorAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.VectorAnimation_Package_References.VectorAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VectorAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.VectorAnimation_Package_References."=";

   type VectorAnimation is new IndexedAnimation and VectorAnimationInterface with record
      currentPoints : Integer_Array_Access_Array_Access_Array_Access;
      circularIndexUtil : CircularIndexUtil_Access;
   end record;

   procedure Initialize (This : in out VectorAnimation'Class; currentPoints : Integer_Array_Access_Array_Access_Array_Access; basicColor_Param : access BasicColor_Package.BasicColor'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (currentPoints : Integer_Array_Access_Array_Access_Array_Access; basicColor_Param : access BasicColor_Package.BasicColor'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return VectorAnimation_Access;
   function createVectorAnimation (currentPoints2 : Integer_Array_Access_Array_Access; basicColor_Param : access BasicColor_Package.BasicColor'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return VectorAnimation_Access;
   procedure createVectorAnimation (currentPoints2 : Integer_Array_Access_Array_Access; basicColor_Param : access BasicColor_Package.BasicColor'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   procedure setBasicColorP (This : in out VectorAnimation; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   procedure changeBasicColor (This : in out VectorAnimation; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   procedure setAlpha (This : in out VectorAnimation; alpha : Integer);
   procedure setScale (This : in out VectorAnimation; scaleX : Float; scaleY : Float);
   procedure setMaxScale (This : in out VectorAnimation; maxScaleX : Float; maxScaleY : Float);
   procedure updateModifiers (This : in out VectorAnimation);
   function getAnimationSize (This : in out VectorAnimation) return Integer;
   function getSize (This : in out VectorAnimation) return Integer;
   procedure setSequence (This : in out VectorAnimation; sequence : Integer_Array_Access);
   function getSequence (This : in out VectorAnimation) return Integer_Array_Access;
   procedure nextFrame (This : in out VectorAnimation);
   procedure previousFrame (This : in out VectorAnimation);
   procedure paintVectors (This : in out VectorAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);
   procedure paintXY (This : in out VectorAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);
   function getFrame (This : in out VectorAnimation) return Integer;
   procedure setFrame (This : in out VectorAnimation; index : Integer);
   function getPoints (This : in out VectorAnimation; frame : Integer) return Integer_Array_Access_Array_Access;
   procedure getPoints (This : in out VectorAnimation; frame : Integer);
   procedure setPoints (This : in out VectorAnimation; currentPoints : Integer_Array_Access_Array_Access_Array_Access);
   function getBasicColorP (This : in out VectorAnimation) return BasicColor_Access;

end org.allbinary.animation.VectorAnimation_Package;


