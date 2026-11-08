-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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

limited with org.allbinary.animation.compound.RotationAnimationArrayUtil_Package;
package org.allbinary.animation.compound.RotationAnimationArrayUtil_Package_References is
   type RotationAnimationArrayUtil_Access is access all org.allbinary.animation.compound.RotationAnimationArrayUtil_Package.RotationAnimationArrayUtil'Class;
   type RotationAnimationArrayUtil_Access_Array is array (Natural range <>) of RotationAnimationArrayUtil_Access;
   type RotationAnimationArrayUtil_Access_Array_Access is access all RotationAnimationArrayUtil_Access_Array;
   type RotationAnimationArrayUtil_Access_Array_Access_Array is array (Natural range <>) of RotationAnimationArrayUtil_Access_Array_Access;
   type RotationAnimationArrayUtil_Access_Array_Access_Array_Access is access all RotationAnimationArrayUtil_Access_Array_Access_Array;
end org.allbinary.animation.compound.RotationAnimationArrayUtil_Package_References;

with org.allbinary.animation.compound.RotationAnimationArrayUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;
limited with org.allbinary.animation.RotationAnimation_Package;
with org.allbinary.animation.RotationAnimation_Package_References;

package org.allbinary.animation.compound.RotationAnimationArrayUtil_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package RotationAnimation_Package renames Standard.org.allbinary.animation.RotationAnimation_Package;
   package Reference_Types is
   subtype Animation_Access is org.allbinary.animation.Animation_Package_References.Animation_Access;
   use type Animation_Access;
   subtype Animation_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array;
   use type Animation_Access_Array;
   subtype Animation_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access;
   use type Animation_Access_Array_Access;
   subtype Animation_Access_Array_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array;
   use type Animation_Access_Array_Access_Array;
   subtype Animation_Access_Array_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array_Access;
   use type Animation_Access_Array_Access_Array_Access;
   subtype RotationAnimation_Access is org.allbinary.animation.RotationAnimation_Package_References.RotationAnimation_Access;
   use type RotationAnimation_Access;
   subtype RotationAnimation_Access_Array is org.allbinary.animation.RotationAnimation_Package_References.RotationAnimation_Access_Array;
   use type RotationAnimation_Access_Array;
   subtype RotationAnimation_Access_Array_Access is org.allbinary.animation.RotationAnimation_Package_References.RotationAnimation_Access_Array_Access;
   use type RotationAnimation_Access_Array_Access;
   subtype RotationAnimation_Access_Array_Access_Array is org.allbinary.animation.RotationAnimation_Package_References.RotationAnimation_Access_Array_Access_Array;
   use type RotationAnimation_Access_Array_Access_Array;
   subtype RotationAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.RotationAnimation_Package_References.RotationAnimation_Access_Array_Access_Array_Access;
   use type RotationAnimation_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype RotationAnimationArrayUtil_Access is org.allbinary.animation.compound.RotationAnimationArrayUtil_Package_References.RotationAnimationArrayUtil_Access;
   function "=" (Left, Right : RotationAnimationArrayUtil_Access) return Boolean renames org.allbinary.animation.compound.RotationAnimationArrayUtil_Package_References."=";
   subtype RotationAnimationArrayUtil_Access_Array is org.allbinary.animation.compound.RotationAnimationArrayUtil_Package_References.RotationAnimationArrayUtil_Access_Array;
   function "=" (Left, Right : RotationAnimationArrayUtil_Access_Array) return Boolean renames org.allbinary.animation.compound.RotationAnimationArrayUtil_Package_References."=";
   subtype RotationAnimationArrayUtil_Access_Array_Access is org.allbinary.animation.compound.RotationAnimationArrayUtil_Package_References.RotationAnimationArrayUtil_Access_Array_Access;
   function "=" (Left, Right : RotationAnimationArrayUtil_Access_Array_Access) return Boolean renames org.allbinary.animation.compound.RotationAnimationArrayUtil_Package_References."=";
   subtype RotationAnimationArrayUtil_Access_Array_Access_Array is org.allbinary.animation.compound.RotationAnimationArrayUtil_Package_References.RotationAnimationArrayUtil_Access_Array_Access_Array;
   function "=" (Left, Right : RotationAnimationArrayUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.compound.RotationAnimationArrayUtil_Package_References."=";
   subtype RotationAnimationArrayUtil_Access_Array_Access_Array_Access is org.allbinary.animation.compound.RotationAnimationArrayUtil_Package_References.RotationAnimationArrayUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RotationAnimationArrayUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.compound.RotationAnimationArrayUtil_Package_References."=";

   type RotationAnimationArrayUtil is new Java_Object with null record;
   instance : RotationAnimationArrayUtil_Access;

   procedure Initialize (This : in out RotationAnimationArrayUtil'Class);
   function Create return RotationAnimationArrayUtil_Access;
   function getInstance return RotationAnimationArrayUtil_Access;
   function toRotationAnimationArray (This : in out RotationAnimationArrayUtil; animationArray : Animation_Access_Array_Access) return RotationAnimation_Access_Array_Access;
   procedure toRotationAnimationArray (This : in out RotationAnimationArrayUtil; animationArray : Animation_Access_Array_Access);

end org.allbinary.animation.compound.RotationAnimationArrayUtil_Package;


