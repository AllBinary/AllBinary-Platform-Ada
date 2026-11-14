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
limited with org.allbinary.animation.RotationAnimationInterface_Package;
package org.allbinary.animation.RotationAnimationInterface_Package_References is
   type RotationAnimationInterface_Access is access all org.allbinary.animation.RotationAnimationInterface_Package.RotationAnimationInterface'Class;
   type RotationAnimationInterface_Access_Array is array (Natural range <>) of RotationAnimationInterface_Access;
   type RotationAnimationInterface_Access_Array_Access is access all RotationAnimationInterface_Access_Array;
   type RotationAnimationInterface_Access_Array_Access_Array is array (Natural range <>) of RotationAnimationInterface_Access_Array_Access;
   type RotationAnimationInterface_Access_Array_Access_Array_Access is access all RotationAnimationInterface_Access_Array_Access_Array;
   type RotationAnimationInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RotationAnimationInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : RotationAnimationInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RotationAnimationInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RotationAnimationInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RotationAnimationInterface_Access_Array_Access is (if Value /= null and then Value.all in RotationAnimationInterface_Access_Array_Object'Class then RotationAnimationInterface_Access_Array_Object'Class (Value.all).Value else null);
   type RotationAnimationInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RotationAnimationInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : RotationAnimationInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RotationAnimationInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RotationAnimationInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RotationAnimationInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in RotationAnimationInterface_Access_Array_Access_Array_Object'Class then RotationAnimationInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.RotationAnimationInterface_Package_References;

with org.allbinary.animation.RotationAnimationInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.direction.DirectionalInterface_Package; use org.allbinary.direction.DirectionalInterface_Package;
limited with org.allbinary.math.AngleInfo_Package;
with org.allbinary.math.AngleInfo_Package_References;
with org.allbinary.animation.IndexedAnimationInterface_Package; use org.allbinary.animation.IndexedAnimationInterface_Package;

package org.allbinary.animation.RotationAnimationInterface_Package is

   package DirectionalInterface_Package renames Standard.org.allbinary.direction.DirectionalInterface_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;
   package Reference_Types is
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
   end Reference_Types;
   use Reference_Types;


   type RotationAnimationInterface is interface and IndexedAnimationInterface and DirectionalInterface;
   subtype RotationAnimationInterface_Access is org.allbinary.animation.RotationAnimationInterface_Package_References.RotationAnimationInterface_Access;
   function "=" (Left, Right : RotationAnimationInterface_Access) return Boolean renames org.allbinary.animation.RotationAnimationInterface_Package_References."=";
   subtype RotationAnimationInterface_Access_Array is org.allbinary.animation.RotationAnimationInterface_Package_References.RotationAnimationInterface_Access_Array;
   function "=" (Left, Right : RotationAnimationInterface_Access_Array) return Boolean renames org.allbinary.animation.RotationAnimationInterface_Package_References."=";
   subtype RotationAnimationInterface_Access_Array_Access is org.allbinary.animation.RotationAnimationInterface_Package_References.RotationAnimationInterface_Access_Array_Access;
   function "=" (Left, Right : RotationAnimationInterface_Access_Array_Access) return Boolean renames org.allbinary.animation.RotationAnimationInterface_Package_References."=";
   function Java_Box (Value : RotationAnimationInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.RotationAnimationInterface_Package_References.Java_Box;
   function Java_Unbox_RotationAnimationInterface_Access_Array (Value : access Java_Object'Class) return RotationAnimationInterface_Access_Array_Access renames org.allbinary.animation.RotationAnimationInterface_Package_References.Java_Unbox_RotationAnimationInterface_Access_Array;
   subtype RotationAnimationInterface_Access_Array_Access_Array is org.allbinary.animation.RotationAnimationInterface_Package_References.RotationAnimationInterface_Access_Array_Access_Array;
   function "=" (Left, Right : RotationAnimationInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.RotationAnimationInterface_Package_References."=";
   subtype RotationAnimationInterface_Access_Array_Access_Array_Access is org.allbinary.animation.RotationAnimationInterface_Package_References.RotationAnimationInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RotationAnimationInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.RotationAnimationInterface_Package_References."=";
   function Java_Box (Value : RotationAnimationInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.RotationAnimationInterface_Package_References.Java_Box;
   function Java_Unbox_RotationAnimationInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return RotationAnimationInterface_Access_Array_Access_Array_Access renames org.allbinary.animation.RotationAnimationInterface_Package_References.Java_Unbox_RotationAnimationInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_RotationAnimationInterface (Value : RotationAnimationInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getAngleInfoP (This : in out RotationAnimationInterface) return AngleInfo_Access is abstract;
   procedure nextRotation (This : in out RotationAnimationInterface) is abstract;
   procedure previousRotation (This : in out RotationAnimationInterface) is abstract;

end org.allbinary.animation.RotationAnimationInterface_Package;


