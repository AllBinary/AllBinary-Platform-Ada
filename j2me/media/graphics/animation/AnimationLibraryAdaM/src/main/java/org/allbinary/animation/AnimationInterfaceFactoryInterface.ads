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

limited with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
package org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References is
   type AnimationInterfaceFactoryInterface_Access is access all org.allbinary.animation.AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class;
   type AnimationInterfaceFactoryInterface_Access_Array is array (Natural range <>) of AnimationInterfaceFactoryInterface_Access;
   type AnimationInterfaceFactoryInterface_Access_Array_Access is access all AnimationInterfaceFactoryInterface_Access_Array;
   type AnimationInterfaceFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of AnimationInterfaceFactoryInterface_Access_Array_Access;
   type AnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access is access all AnimationInterfaceFactoryInterface_Access_Array_Access_Array;
end org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References;

with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.media.ScaleProperties_Package;
with org.allbinary.media.ScaleProperties_Package_References;
with org.allbinary.animation.BasicAnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.BasicAnimationInterfaceFactoryInterface_Package;
limited with org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;

package org.allbinary.animation.AnimationInterfaceFactoryInterface_Package is

   package ScaleProperties_Package renames Standard.org.allbinary.media.ScaleProperties_Package;
   package Reference_Types is
   subtype ScaleProperties_Access is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access;
   use type ScaleProperties_Access;
   subtype ScaleProperties_Access_Array is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array;
   use type ScaleProperties_Access_Array;
   subtype ScaleProperties_Access_Array_Access is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array_Access;
   use type ScaleProperties_Access_Array_Access;
   subtype ScaleProperties_Access_Array_Access_Array is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array_Access_Array;
   use type ScaleProperties_Access_Array_Access_Array;
   subtype ScaleProperties_Access_Array_Access_Array_Access is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array_Access_Array_Access;
   use type ScaleProperties_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   type AnimationInterfaceFactoryInterface is interface and BasicAnimationInterfaceFactoryInterface;
   subtype AnimationInterfaceFactoryInterface_Access is org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References.AnimationInterfaceFactoryInterface_Access;
   function "=" (Left, Right : AnimationInterfaceFactoryInterface_Access) return Boolean renames org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References."=";
   subtype AnimationInterfaceFactoryInterface_Access_Array is org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References.AnimationInterfaceFactoryInterface_Access_Array;
   function "=" (Left, Right : AnimationInterfaceFactoryInterface_Access_Array) return Boolean renames org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References."=";
   subtype AnimationInterfaceFactoryInterface_Access_Array_Access is org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References.AnimationInterfaceFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : AnimationInterfaceFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References."=";
   subtype AnimationInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References.AnimationInterfaceFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AnimationInterfaceFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References."=";
   subtype AnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References.AnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References."=";
   function Java_Object_Access_From_AnimationInterfaceFactoryInterface (Value : AnimationInterfaceFactoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getInstance (This : in out AnimationInterfaceFactoryInterface; instanceId : Integer) return Animation_Access is abstract;
   procedure setInitialScale (This : in out AnimationInterfaceFactoryInterface; scaleProperties_Param : access ScaleProperties_Package.ScaleProperties'Class) is abstract;

end org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;


