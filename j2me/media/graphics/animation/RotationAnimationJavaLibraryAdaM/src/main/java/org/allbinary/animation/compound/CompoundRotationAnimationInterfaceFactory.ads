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

limited with org.allbinary.animation.compound.CompoundRotationAnimationInterfaceFactory_Package;
package org.allbinary.animation.compound.CompoundRotationAnimationInterfaceFactory_Package_References is
   type CompoundRotationAnimationInterfaceFactory_Access is access all org.allbinary.animation.compound.CompoundRotationAnimationInterfaceFactory_Package.CompoundRotationAnimationInterfaceFactory'Class;
   type CompoundRotationAnimationInterfaceFactory_Access_Array is array (Natural range <>) of CompoundRotationAnimationInterfaceFactory_Access;
   type CompoundRotationAnimationInterfaceFactory_Access_Array_Access is access all CompoundRotationAnimationInterfaceFactory_Access_Array;
   type CompoundRotationAnimationInterfaceFactory_Access_Array_Access_Array is array (Natural range <>) of CompoundRotationAnimationInterfaceFactory_Access_Array_Access;
   type CompoundRotationAnimationInterfaceFactory_Access_Array_Access_Array_Access is access all CompoundRotationAnimationInterfaceFactory_Access_Array_Access_Array;
end org.allbinary.animation.compound.CompoundRotationAnimationInterfaceFactory_Package_References;

with org.allbinary.animation.compound.CompoundRotationAnimationInterfaceFactory_Package_References;
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
limited with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References;
with org.allbinary.animation.compound.CompoundAnimationInterfaceFactory_Package; use org.allbinary.animation.compound.CompoundAnimationInterfaceFactory_Package;

package org.allbinary.animation.compound.CompoundRotationAnimationInterfaceFactory_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AnimationBehaviorFactory_Package renames Standard.org.allbinary.animation.AnimationBehaviorFactory_Package;
   package AnimationInterfaceFactoryInterface_Package renames Standard.org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
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
   subtype AnimationInterfaceFactoryInterface_Access is org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References.AnimationInterfaceFactoryInterface_Access;
   use type AnimationInterfaceFactoryInterface_Access;
   subtype AnimationInterfaceFactoryInterface_Access_Array is org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References.AnimationInterfaceFactoryInterface_Access_Array;
   use type AnimationInterfaceFactoryInterface_Access_Array;
   subtype AnimationInterfaceFactoryInterface_Access_Array_Access is org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References.AnimationInterfaceFactoryInterface_Access_Array_Access;
   use type AnimationInterfaceFactoryInterface_Access_Array_Access;
   subtype AnimationInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References.AnimationInterfaceFactoryInterface_Access_Array_Access_Array;
   use type AnimationInterfaceFactoryInterface_Access_Array_Access_Array;
   subtype AnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References.AnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   use type AnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CompoundRotationAnimationInterfaceFactory_Access is org.allbinary.animation.compound.CompoundRotationAnimationInterfaceFactory_Package_References.CompoundRotationAnimationInterfaceFactory_Access;
   function "=" (Left, Right : CompoundRotationAnimationInterfaceFactory_Access) return Boolean renames org.allbinary.animation.compound.CompoundRotationAnimationInterfaceFactory_Package_References."=";
   subtype CompoundRotationAnimationInterfaceFactory_Access_Array is org.allbinary.animation.compound.CompoundRotationAnimationInterfaceFactory_Package_References.CompoundRotationAnimationInterfaceFactory_Access_Array;
   function "=" (Left, Right : CompoundRotationAnimationInterfaceFactory_Access_Array) return Boolean renames org.allbinary.animation.compound.CompoundRotationAnimationInterfaceFactory_Package_References."=";
   subtype CompoundRotationAnimationInterfaceFactory_Access_Array_Access is org.allbinary.animation.compound.CompoundRotationAnimationInterfaceFactory_Package_References.CompoundRotationAnimationInterfaceFactory_Access_Array_Access;
   function "=" (Left, Right : CompoundRotationAnimationInterfaceFactory_Access_Array_Access) return Boolean renames org.allbinary.animation.compound.CompoundRotationAnimationInterfaceFactory_Package_References."=";
   subtype CompoundRotationAnimationInterfaceFactory_Access_Array_Access_Array is org.allbinary.animation.compound.CompoundRotationAnimationInterfaceFactory_Package_References.CompoundRotationAnimationInterfaceFactory_Access_Array_Access_Array;
   function "=" (Left, Right : CompoundRotationAnimationInterfaceFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.compound.CompoundRotationAnimationInterfaceFactory_Package_References."=";
   subtype CompoundRotationAnimationInterfaceFactory_Access_Array_Access_Array_Access is org.allbinary.animation.compound.CompoundRotationAnimationInterfaceFactory_Package_References.CompoundRotationAnimationInterfaceFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CompoundRotationAnimationInterfaceFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.compound.CompoundRotationAnimationInterfaceFactory_Package_References."=";

   type CompoundRotationAnimationInterfaceFactory is new CompoundAnimationInterfaceFactory with null record;

   procedure Initialize (This : in out CompoundRotationAnimationInterfaceFactory'Class; basicAnimationInterfaceFactoryInterfaceArray : AnimationInterfaceFactoryInterface_Access_Array_Access; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class);
   function Create (basicAnimationInterfaceFactoryInterfaceArray : AnimationInterfaceFactoryInterface_Access_Array_Access; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return CompoundRotationAnimationInterfaceFactory_Access;
   function createArray (This : in out CompoundRotationAnimationInterfaceFactory; size : Integer) return Animation_Access_Array_Access;
   procedure createArray (This : in out CompoundRotationAnimationInterfaceFactory; size : Integer);
   function createAnimation (This : in out CompoundRotationAnimationInterfaceFactory; animationInterfaceArray : Animation_Access_Array_Access) return Animation_Access;
   procedure createAnimation (This : in out CompoundRotationAnimationInterfaceFactory; animationInterfaceArray : Animation_Access_Array_Access);

end org.allbinary.animation.compound.CompoundRotationAnimationInterfaceFactory_Package;


