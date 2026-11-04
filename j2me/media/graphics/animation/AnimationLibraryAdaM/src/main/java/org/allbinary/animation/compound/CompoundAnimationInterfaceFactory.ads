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

limited with org.allbinary.animation.compound.CompoundAnimationInterfaceFactory_Package;
package org.allbinary.animation.compound.CompoundAnimationInterfaceFactory_Package_References is
   type CompoundAnimationInterfaceFactory_Access is access all org.allbinary.animation.compound.CompoundAnimationInterfaceFactory_Package.CompoundAnimationInterfaceFactory'Class;
   type CompoundAnimationInterfaceFactory_Access_Array is array (Natural range <>) of CompoundAnimationInterfaceFactory_Access;
   type CompoundAnimationInterfaceFactory_Access_Array_Access is access all CompoundAnimationInterfaceFactory_Access_Array;
   type CompoundAnimationInterfaceFactory_Access_Array_Access_Array is array (Natural range <>) of CompoundAnimationInterfaceFactory_Access_Array_Access;
   type CompoundAnimationInterfaceFactory_Access_Array_Access_Array_Access is access all CompoundAnimationInterfaceFactory_Access_Array_Access_Array;
end org.allbinary.animation.compound.CompoundAnimationInterfaceFactory_Package_References;

with org.allbinary.animation.compound.CompoundAnimationInterfaceFactory_Package_References;
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
limited with org.allbinary.animation.AnimationBehaviorFactory_Package;
with org.allbinary.animation.AnimationBehaviorFactory_Package_References;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
limited with org.allbinary.media.ScaleProperties_Package;
with org.allbinary.media.ScaleProperties_Package_References;

package org.allbinary.animation.compound.CompoundAnimationInterfaceFactory_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AnimationBehaviorFactory_Package renames Standard.org.allbinary.animation.AnimationBehaviorFactory_Package;
   package AnimationInterfaceFactoryInterface_Package renames Standard.org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
   package ScaleProperties_Package renames Standard.org.allbinary.media.ScaleProperties_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype CompoundAnimationInterfaceFactory_Access is org.allbinary.animation.compound.CompoundAnimationInterfaceFactory_Package_References.CompoundAnimationInterfaceFactory_Access;
   function "=" (Left, Right : CompoundAnimationInterfaceFactory_Access) return Boolean renames org.allbinary.animation.compound.CompoundAnimationInterfaceFactory_Package_References."=";
   subtype CompoundAnimationInterfaceFactory_Access_Array is org.allbinary.animation.compound.CompoundAnimationInterfaceFactory_Package_References.CompoundAnimationInterfaceFactory_Access_Array;
   function "=" (Left, Right : CompoundAnimationInterfaceFactory_Access_Array) return Boolean renames org.allbinary.animation.compound.CompoundAnimationInterfaceFactory_Package_References."=";
   subtype CompoundAnimationInterfaceFactory_Access_Array_Access is org.allbinary.animation.compound.CompoundAnimationInterfaceFactory_Package_References.CompoundAnimationInterfaceFactory_Access_Array_Access;
   function "=" (Left, Right : CompoundAnimationInterfaceFactory_Access_Array_Access) return Boolean renames org.allbinary.animation.compound.CompoundAnimationInterfaceFactory_Package_References."=";
   subtype CompoundAnimationInterfaceFactory_Access_Array_Access_Array is org.allbinary.animation.compound.CompoundAnimationInterfaceFactory_Package_References.CompoundAnimationInterfaceFactory_Access_Array_Access_Array;
   function "=" (Left, Right : CompoundAnimationInterfaceFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.compound.CompoundAnimationInterfaceFactory_Package_References."=";
   subtype CompoundAnimationInterfaceFactory_Access_Array_Access_Array_Access is org.allbinary.animation.compound.CompoundAnimationInterfaceFactory_Package_References.CompoundAnimationInterfaceFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CompoundAnimationInterfaceFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.compound.CompoundAnimationInterfaceFactory_Package_References."=";

   type CompoundAnimationInterfaceFactory is new Java_Object and AnimationInterfaceFactoryInterface with record
      basicAnimationInterfaceFactoryInterfaceArrayP : AnimationInterfaceFactoryInterface_Access_Array_Access;
      animationBehaviorFactory : AnimationBehaviorFactory_Access;
   end record;

   procedure Initialize (This : in out CompoundAnimationInterfaceFactory'Class; basicAnimationInterfaceFactoryInterfaceArray : AnimationInterfaceFactoryInterface_Access_Array_Access; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class);
   function Create (basicAnimationInterfaceFactoryInterfaceArray : AnimationInterfaceFactoryInterface_Access_Array_Access; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return CompoundAnimationInterfaceFactory_Access;
   function getInstance (This : in out CompoundAnimationInterfaceFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out CompoundAnimationInterfaceFactory; instanceId : Integer);
   function createArray (This : in out CompoundAnimationInterfaceFactory; size : Integer) return Animation_Access_Array_Access;
   procedure createArray (This : in out CompoundAnimationInterfaceFactory; size : Integer);
   function createAnimation (This : in out CompoundAnimationInterfaceFactory; animationInterfaceArray : Animation_Access_Array_Access) return Animation_Access;
   procedure createAnimation (This : in out CompoundAnimationInterfaceFactory; animationInterfaceArray : Animation_Access_Array_Access);
   function getBasicAnimationInterfaceFactoryInterfaceArray (This : in out CompoundAnimationInterfaceFactory) return AnimationInterfaceFactoryInterface_Access_Array_Access;
   procedure setInitialScale (This : in out CompoundAnimationInterfaceFactory; scaleProperties_Param : access ScaleProperties_Package.ScaleProperties'Class);

end org.allbinary.animation.compound.CompoundAnimationInterfaceFactory_Package;


