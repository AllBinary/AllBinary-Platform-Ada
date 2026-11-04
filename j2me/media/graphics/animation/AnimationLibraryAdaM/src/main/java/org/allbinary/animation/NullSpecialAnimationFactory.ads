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

limited with org.allbinary.animation.NullSpecialAnimationFactory_Package;
package org.allbinary.animation.NullSpecialAnimationFactory_Package_References is
   type NullSpecialAnimationFactory_Access is access all org.allbinary.animation.NullSpecialAnimationFactory_Package.NullSpecialAnimationFactory'Class;
   type NullSpecialAnimationFactory_Access_Array is array (Natural range <>) of NullSpecialAnimationFactory_Access;
   type NullSpecialAnimationFactory_Access_Array_Access is access all NullSpecialAnimationFactory_Access_Array;
   type NullSpecialAnimationFactory_Access_Array_Access_Array is array (Natural range <>) of NullSpecialAnimationFactory_Access_Array_Access;
   type NullSpecialAnimationFactory_Access_Array_Access_Array_Access is access all NullSpecialAnimationFactory_Access_Array_Access_Array;
end org.allbinary.animation.NullSpecialAnimationFactory_Package_References;

with org.allbinary.animation.NullSpecialAnimationFactory_Package_References;
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
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
limited with org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;

package org.allbinary.animation.NullSpecialAnimationFactory_Package is

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


   subtype NullSpecialAnimationFactory_Access is org.allbinary.animation.NullSpecialAnimationFactory_Package_References.NullSpecialAnimationFactory_Access;
   function "=" (Left, Right : NullSpecialAnimationFactory_Access) return Boolean renames org.allbinary.animation.NullSpecialAnimationFactory_Package_References."=";
   subtype NullSpecialAnimationFactory_Access_Array is org.allbinary.animation.NullSpecialAnimationFactory_Package_References.NullSpecialAnimationFactory_Access_Array;
   function "=" (Left, Right : NullSpecialAnimationFactory_Access_Array) return Boolean renames org.allbinary.animation.NullSpecialAnimationFactory_Package_References."=";
   subtype NullSpecialAnimationFactory_Access_Array_Access is org.allbinary.animation.NullSpecialAnimationFactory_Package_References.NullSpecialAnimationFactory_Access_Array_Access;
   function "=" (Left, Right : NullSpecialAnimationFactory_Access_Array_Access) return Boolean renames org.allbinary.animation.NullSpecialAnimationFactory_Package_References."=";
   subtype NullSpecialAnimationFactory_Access_Array_Access_Array is org.allbinary.animation.NullSpecialAnimationFactory_Package_References.NullSpecialAnimationFactory_Access_Array_Access_Array;
   function "=" (Left, Right : NullSpecialAnimationFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.NullSpecialAnimationFactory_Package_References."=";
   subtype NullSpecialAnimationFactory_Access_Array_Access_Array_Access is org.allbinary.animation.NullSpecialAnimationFactory_Package_References.NullSpecialAnimationFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullSpecialAnimationFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.NullSpecialAnimationFactory_Package_References."=";

   type NullSpecialAnimationFactory is new Java_Object and AnimationInterfaceFactoryInterface and ProceduralAnimationInterfaceFactoryInterface with null record;
   NULL_SPECIAL_ANIMATION_FACTORY : NullSpecialAnimationFactory_Access;

   procedure Initialize (This : in out NullSpecialAnimationFactory'Class);
   function Create return NullSpecialAnimationFactory_Access;
   function getFactoryInstance return NullSpecialAnimationFactory_Access;
   function getInstance (This : in out NullSpecialAnimationFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out NullSpecialAnimationFactory; instanceId : Integer);
   function getInstanceAnimation (This : in out NullSpecialAnimationFactory; animationInterface_Param : access Animation_Package.Animation'Class) return Animation_Access;
   procedure getInstanceAnimation (This : in out NullSpecialAnimationFactory; animationInterface_Param : access Animation_Package.Animation'Class);
   procedure setInitialScale (This : in out NullSpecialAnimationFactory; scaleProperties_Param : access ScaleProperties_Package.ScaleProperties'Class);

end org.allbinary.animation.NullSpecialAnimationFactory_Package;


