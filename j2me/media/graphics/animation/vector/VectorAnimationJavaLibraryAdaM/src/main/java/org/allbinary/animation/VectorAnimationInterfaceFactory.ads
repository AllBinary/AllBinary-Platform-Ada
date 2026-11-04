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

limited with org.allbinary.animation.VectorAnimationInterfaceFactory_Package;
package org.allbinary.animation.VectorAnimationInterfaceFactory_Package_References is
   type VectorAnimationInterfaceFactory_Access is access all org.allbinary.animation.VectorAnimationInterfaceFactory_Package.VectorAnimationInterfaceFactory'Class;
   type VectorAnimationInterfaceFactory_Access_Array is array (Natural range <>) of VectorAnimationInterfaceFactory_Access;
   type VectorAnimationInterfaceFactory_Access_Array_Access is access all VectorAnimationInterfaceFactory_Access_Array;
   type VectorAnimationInterfaceFactory_Access_Array_Access_Array is array (Natural range <>) of VectorAnimationInterfaceFactory_Access_Array_Access;
   type VectorAnimationInterfaceFactory_Access_Array_Access_Array_Access is access all VectorAnimationInterfaceFactory_Access_Array_Access_Array;
end org.allbinary.animation.VectorAnimationInterfaceFactory_Package_References;

with org.allbinary.animation.VectorAnimationInterfaceFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
limited with org.allbinary.media.ScaleProperties_Package;
with org.allbinary.media.ScaleProperties_Package_References;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
limited with org.allbinary.animation.AnimationBehaviorFactory_Package;
with org.allbinary.animation.AnimationBehaviorFactory_Package_References;
limited with org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;

package org.allbinary.animation.VectorAnimationInterfaceFactory_Package is

   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package ScaleProperties_Package renames Standard.org.allbinary.media.ScaleProperties_Package;
   package Reference_Types is
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
   subtype AnimationBehaviorFactory_Access is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access;
   use type AnimationBehaviorFactory_Access;
   subtype AnimationBehaviorFactory_Access_Array is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access_Array;
   use type AnimationBehaviorFactory_Access_Array;
   subtype AnimationBehaviorFactory_Access_Array_Access is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access_Array_Access;
   use type AnimationBehaviorFactory_Access_Array_Access;
   subtype AnimationBehaviorFactory_Access_Array_Access_Array is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access_Array_Access_Array;
   use type AnimationBehaviorFactory_Access_Array_Access_Array;
   subtype AnimationBehaviorFactory_Access_Array_Access_Array_Access is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access_Array_Access_Array_Access;
   use type AnimationBehaviorFactory_Access_Array_Access_Array_Access;
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


   subtype VectorAnimationInterfaceFactory_Access is org.allbinary.animation.VectorAnimationInterfaceFactory_Package_References.VectorAnimationInterfaceFactory_Access;
   function "=" (Left, Right : VectorAnimationInterfaceFactory_Access) return Boolean renames org.allbinary.animation.VectorAnimationInterfaceFactory_Package_References."=";
   subtype VectorAnimationInterfaceFactory_Access_Array is org.allbinary.animation.VectorAnimationInterfaceFactory_Package_References.VectorAnimationInterfaceFactory_Access_Array;
   function "=" (Left, Right : VectorAnimationInterfaceFactory_Access_Array) return Boolean renames org.allbinary.animation.VectorAnimationInterfaceFactory_Package_References."=";
   subtype VectorAnimationInterfaceFactory_Access_Array_Access is org.allbinary.animation.VectorAnimationInterfaceFactory_Package_References.VectorAnimationInterfaceFactory_Access_Array_Access;
   function "=" (Left, Right : VectorAnimationInterfaceFactory_Access_Array_Access) return Boolean renames org.allbinary.animation.VectorAnimationInterfaceFactory_Package_References."=";
   subtype VectorAnimationInterfaceFactory_Access_Array_Access_Array is org.allbinary.animation.VectorAnimationInterfaceFactory_Package_References.VectorAnimationInterfaceFactory_Access_Array_Access_Array;
   function "=" (Left, Right : VectorAnimationInterfaceFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.VectorAnimationInterfaceFactory_Package_References."=";
   subtype VectorAnimationInterfaceFactory_Access_Array_Access_Array_Access is org.allbinary.animation.VectorAnimationInterfaceFactory_Package_References.VectorAnimationInterfaceFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VectorAnimationInterfaceFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.VectorAnimationInterfaceFactory_Package_References."=";

   type VectorAnimationInterfaceFactory is new Java_Object and AnimationInterfaceFactoryInterface with record
      currentPoints : Integer_Array_Access_Array_Access_Array_Access;
      basicColor : BasicColor_Access;
      animationBehaviorFactory : AnimationBehaviorFactory_Access;
   end record;

   procedure Initialize (This : in out VectorAnimationInterfaceFactory'Class; currentPoints : Integer_Array_Access_Array_Access_Array_Access; basicColor_Param : access BasicColor_Package.BasicColor'Class; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class);
   function Create (currentPoints : Integer_Array_Access_Array_Access_Array_Access; basicColor_Param : access BasicColor_Package.BasicColor'Class; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return VectorAnimationInterfaceFactory_Access;
   function getInstance (This : in out VectorAnimationInterfaceFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out VectorAnimationInterfaceFactory; instanceId : Integer);
   procedure setBasicColorP (This : in out VectorAnimationInterfaceFactory; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   function getBasicColorP (This : in out VectorAnimationInterfaceFactory) return BasicColor_Access;
   procedure setInitialScale (This : in out VectorAnimationInterfaceFactory; scaleProperties_Param : access ScaleProperties_Package.ScaleProperties'Class);

end org.allbinary.animation.VectorAnimationInterfaceFactory_Package;


