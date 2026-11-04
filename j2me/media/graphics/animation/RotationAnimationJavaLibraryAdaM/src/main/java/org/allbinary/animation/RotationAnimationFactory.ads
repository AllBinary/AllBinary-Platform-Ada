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

limited with org.allbinary.animation.RotationAnimationFactory_Package;
package org.allbinary.animation.RotationAnimationFactory_Package_References is
   type RotationAnimationFactory_Access is access all org.allbinary.animation.RotationAnimationFactory_Package.RotationAnimationFactory'Class;
   type RotationAnimationFactory_Access_Array is array (Natural range <>) of RotationAnimationFactory_Access;
   type RotationAnimationFactory_Access_Array_Access is access all RotationAnimationFactory_Access_Array;
   type RotationAnimationFactory_Access_Array_Access_Array is array (Natural range <>) of RotationAnimationFactory_Access_Array_Access;
   type RotationAnimationFactory_Access_Array_Access_Array_Access is access all RotationAnimationFactory_Access_Array_Access_Array;
end org.allbinary.animation.RotationAnimationFactory_Package_References;

with org.allbinary.animation.RotationAnimationFactory_Package_References;
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

package org.allbinary.animation.RotationAnimationFactory_Package is

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


   subtype RotationAnimationFactory_Access is org.allbinary.animation.RotationAnimationFactory_Package_References.RotationAnimationFactory_Access;
   function "=" (Left, Right : RotationAnimationFactory_Access) return Boolean renames org.allbinary.animation.RotationAnimationFactory_Package_References."=";
   subtype RotationAnimationFactory_Access_Array is org.allbinary.animation.RotationAnimationFactory_Package_References.RotationAnimationFactory_Access_Array;
   function "=" (Left, Right : RotationAnimationFactory_Access_Array) return Boolean renames org.allbinary.animation.RotationAnimationFactory_Package_References."=";
   subtype RotationAnimationFactory_Access_Array_Access is org.allbinary.animation.RotationAnimationFactory_Package_References.RotationAnimationFactory_Access_Array_Access;
   function "=" (Left, Right : RotationAnimationFactory_Access_Array_Access) return Boolean renames org.allbinary.animation.RotationAnimationFactory_Package_References."=";
   subtype RotationAnimationFactory_Access_Array_Access_Array is org.allbinary.animation.RotationAnimationFactory_Package_References.RotationAnimationFactory_Access_Array_Access_Array;
   function "=" (Left, Right : RotationAnimationFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.RotationAnimationFactory_Package_References."=";
   subtype RotationAnimationFactory_Access_Array_Access_Array_Access is org.allbinary.animation.RotationAnimationFactory_Package_References.RotationAnimationFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RotationAnimationFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.RotationAnimationFactory_Package_References."=";

   type RotationAnimationFactory is new Java_Object and AnimationInterfaceFactoryInterface and ProceduralAnimationInterfaceFactoryInterface with record
      totalAngle : Short_Integer;
      angleIncrement : Short_Integer;
   end record;

   procedure Initialize (This : in out RotationAnimationFactory'Class; totalAngle : Short_Integer; angleIncrement : Short_Integer);
   function Create (totalAngle : Short_Integer; angleIncrement : Short_Integer) return RotationAnimationFactory_Access;
   function createFactory return RotationAnimationFactory_Access;
   function getInstance (This : in out RotationAnimationFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out RotationAnimationFactory; instanceId : Integer);
   function getInstanceAnimation (This : in out RotationAnimationFactory; animationInterface_Param : access Animation_Package.Animation'Class) return Animation_Access;
   procedure getInstanceAnimation (This : in out RotationAnimationFactory; animationInterface_Param : access Animation_Package.Animation'Class);
   procedure setInitialScale (This : in out RotationAnimationFactory; scaleProperties_Param : access ScaleProperties_Package.ScaleProperties'Class);

end org.allbinary.animation.RotationAnimationFactory_Package;


