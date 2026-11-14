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
limited with org.allbinary.animation.compound.CompoundIndexedAnimationInterfaceFactory_Package;
package org.allbinary.animation.compound.CompoundIndexedAnimationInterfaceFactory_Package_References is
   type CompoundIndexedAnimationInterfaceFactory_Access is access all org.allbinary.animation.compound.CompoundIndexedAnimationInterfaceFactory_Package.CompoundIndexedAnimationInterfaceFactory'Class;
   type CompoundIndexedAnimationInterfaceFactory_Access_Array is array (Natural range <>) of CompoundIndexedAnimationInterfaceFactory_Access;
   type CompoundIndexedAnimationInterfaceFactory_Access_Array_Access is access all CompoundIndexedAnimationInterfaceFactory_Access_Array;
   type CompoundIndexedAnimationInterfaceFactory_Access_Array_Access_Array is array (Natural range <>) of CompoundIndexedAnimationInterfaceFactory_Access_Array_Access;
   type CompoundIndexedAnimationInterfaceFactory_Access_Array_Access_Array_Access is access all CompoundIndexedAnimationInterfaceFactory_Access_Array_Access_Array;
   type CompoundIndexedAnimationInterfaceFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CompoundIndexedAnimationInterfaceFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : CompoundIndexedAnimationInterfaceFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CompoundIndexedAnimationInterfaceFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CompoundIndexedAnimationInterfaceFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CompoundIndexedAnimationInterfaceFactory_Access_Array_Access is (if Value /= null and then Value.all in CompoundIndexedAnimationInterfaceFactory_Access_Array_Object'Class then CompoundIndexedAnimationInterfaceFactory_Access_Array_Object'Class (Value.all).Value else null);
   type CompoundIndexedAnimationInterfaceFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CompoundIndexedAnimationInterfaceFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CompoundIndexedAnimationInterfaceFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CompoundIndexedAnimationInterfaceFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CompoundIndexedAnimationInterfaceFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CompoundIndexedAnimationInterfaceFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CompoundIndexedAnimationInterfaceFactory_Access_Array_Access_Array_Object'Class then CompoundIndexedAnimationInterfaceFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.compound.CompoundIndexedAnimationInterfaceFactory_Package_References;

with org.allbinary.animation.compound.CompoundIndexedAnimationInterfaceFactory_Package_References;
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
with org.allbinary.animation.compound.CompoundAnimationInterfaceFactory_Package; use org.allbinary.animation.compound.CompoundAnimationInterfaceFactory_Package;

package org.allbinary.animation.compound.CompoundIndexedAnimationInterfaceFactory_Package is

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
   end Reference_Types;
   use Reference_Types;


   subtype CompoundIndexedAnimationInterfaceFactory_Access is org.allbinary.animation.compound.CompoundIndexedAnimationInterfaceFactory_Package_References.CompoundIndexedAnimationInterfaceFactory_Access;
   function "=" (Left, Right : CompoundIndexedAnimationInterfaceFactory_Access) return Boolean renames org.allbinary.animation.compound.CompoundIndexedAnimationInterfaceFactory_Package_References."=";
   subtype CompoundIndexedAnimationInterfaceFactory_Access_Array is org.allbinary.animation.compound.CompoundIndexedAnimationInterfaceFactory_Package_References.CompoundIndexedAnimationInterfaceFactory_Access_Array;
   function "=" (Left, Right : CompoundIndexedAnimationInterfaceFactory_Access_Array) return Boolean renames org.allbinary.animation.compound.CompoundIndexedAnimationInterfaceFactory_Package_References."=";
   subtype CompoundIndexedAnimationInterfaceFactory_Access_Array_Access is org.allbinary.animation.compound.CompoundIndexedAnimationInterfaceFactory_Package_References.CompoundIndexedAnimationInterfaceFactory_Access_Array_Access;
   function "=" (Left, Right : CompoundIndexedAnimationInterfaceFactory_Access_Array_Access) return Boolean renames org.allbinary.animation.compound.CompoundIndexedAnimationInterfaceFactory_Package_References."=";
   function Java_Box (Value : CompoundIndexedAnimationInterfaceFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.compound.CompoundIndexedAnimationInterfaceFactory_Package_References.Java_Box;
   function Java_Unbox_CompoundIndexedAnimationInterfaceFactory_Access_Array (Value : access Java_Object'Class) return CompoundIndexedAnimationInterfaceFactory_Access_Array_Access renames org.allbinary.animation.compound.CompoundIndexedAnimationInterfaceFactory_Package_References.Java_Unbox_CompoundIndexedAnimationInterfaceFactory_Access_Array;
   subtype CompoundIndexedAnimationInterfaceFactory_Access_Array_Access_Array is org.allbinary.animation.compound.CompoundIndexedAnimationInterfaceFactory_Package_References.CompoundIndexedAnimationInterfaceFactory_Access_Array_Access_Array;
   function "=" (Left, Right : CompoundIndexedAnimationInterfaceFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.compound.CompoundIndexedAnimationInterfaceFactory_Package_References."=";
   subtype CompoundIndexedAnimationInterfaceFactory_Access_Array_Access_Array_Access is org.allbinary.animation.compound.CompoundIndexedAnimationInterfaceFactory_Package_References.CompoundIndexedAnimationInterfaceFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CompoundIndexedAnimationInterfaceFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.compound.CompoundIndexedAnimationInterfaceFactory_Package_References."=";
   function Java_Box (Value : CompoundIndexedAnimationInterfaceFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.compound.CompoundIndexedAnimationInterfaceFactory_Package_References.Java_Box;
   function Java_Unbox_CompoundIndexedAnimationInterfaceFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return CompoundIndexedAnimationInterfaceFactory_Access_Array_Access_Array_Access renames org.allbinary.animation.compound.CompoundIndexedAnimationInterfaceFactory_Package_References.Java_Unbox_CompoundIndexedAnimationInterfaceFactory_Access_Array_Access_Array;

   type CompoundIndexedAnimationInterfaceFactory is new CompoundAnimationInterfaceFactory with null record;

   procedure Initialize (This : in out CompoundIndexedAnimationInterfaceFactory'Class; basicAnimationInterfaceFactoryInterfaceArray : AnimationInterfaceFactoryInterface_Access_Array_Access; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class);
   function Create (basicAnimationInterfaceFactoryInterfaceArray : AnimationInterfaceFactoryInterface_Access_Array_Access; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return CompoundIndexedAnimationInterfaceFactory_Access;
   function createArray (This : in out CompoundIndexedAnimationInterfaceFactory; size : Integer) return Animation_Access_Array_Access;
   procedure createArray (This : in out CompoundIndexedAnimationInterfaceFactory; size : Integer);
   function createAnimation (This : in out CompoundIndexedAnimationInterfaceFactory; animationArray : Animation_Access_Array_Access) return Animation_Access;
   procedure createAnimation (This : in out CompoundIndexedAnimationInterfaceFactory; animationArray : Animation_Access_Array_Access);

end org.allbinary.animation.compound.CompoundIndexedAnimationInterfaceFactory_Package;


