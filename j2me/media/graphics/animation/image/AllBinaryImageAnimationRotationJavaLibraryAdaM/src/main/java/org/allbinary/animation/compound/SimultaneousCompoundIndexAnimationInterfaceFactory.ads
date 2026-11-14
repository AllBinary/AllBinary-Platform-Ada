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
limited with org.allbinary.animation.compound.SimultaneousCompoundIndexAnimationInterfaceFactory_Package;
package org.allbinary.animation.compound.SimultaneousCompoundIndexAnimationInterfaceFactory_Package_References is
   type SimultaneousCompoundIndexAnimationInterfaceFactory_Access is access all org.allbinary.animation.compound.SimultaneousCompoundIndexAnimationInterfaceFactory_Package.SimultaneousCompoundIndexAnimationInterfaceFactory'Class;
   type SimultaneousCompoundIndexAnimationInterfaceFactory_Access_Array is array (Natural range <>) of SimultaneousCompoundIndexAnimationInterfaceFactory_Access;
   type SimultaneousCompoundIndexAnimationInterfaceFactory_Access_Array_Access is access all SimultaneousCompoundIndexAnimationInterfaceFactory_Access_Array;
   type SimultaneousCompoundIndexAnimationInterfaceFactory_Access_Array_Access_Array is array (Natural range <>) of SimultaneousCompoundIndexAnimationInterfaceFactory_Access_Array_Access;
   type SimultaneousCompoundIndexAnimationInterfaceFactory_Access_Array_Access_Array_Access is access all SimultaneousCompoundIndexAnimationInterfaceFactory_Access_Array_Access_Array;
   type SimultaneousCompoundIndexAnimationInterfaceFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SimultaneousCompoundIndexAnimationInterfaceFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : SimultaneousCompoundIndexAnimationInterfaceFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SimultaneousCompoundIndexAnimationInterfaceFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SimultaneousCompoundIndexAnimationInterfaceFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SimultaneousCompoundIndexAnimationInterfaceFactory_Access_Array_Access is (if Value /= null and then Value.all in SimultaneousCompoundIndexAnimationInterfaceFactory_Access_Array_Object'Class then SimultaneousCompoundIndexAnimationInterfaceFactory_Access_Array_Object'Class (Value.all).Value else null);
   type SimultaneousCompoundIndexAnimationInterfaceFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SimultaneousCompoundIndexAnimationInterfaceFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SimultaneousCompoundIndexAnimationInterfaceFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SimultaneousCompoundIndexAnimationInterfaceFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SimultaneousCompoundIndexAnimationInterfaceFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SimultaneousCompoundIndexAnimationInterfaceFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SimultaneousCompoundIndexAnimationInterfaceFactory_Access_Array_Access_Array_Object'Class then SimultaneousCompoundIndexAnimationInterfaceFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.compound.SimultaneousCompoundIndexAnimationInterfaceFactory_Package_References;

with org.allbinary.animation.compound.SimultaneousCompoundIndexAnimationInterfaceFactory_Package_References;
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
limited with org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.animation.IndexedAnimation_Package_References;
limited with org.allbinary.media.ScaleProperties_Package;
with org.allbinary.media.ScaleProperties_Package_References;

package org.allbinary.animation.compound.SimultaneousCompoundIndexAnimationInterfaceFactory_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AnimationBehaviorFactory_Package renames Standard.org.allbinary.animation.AnimationBehaviorFactory_Package;
   package AnimationInterfaceFactoryInterface_Package renames Standard.org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
   package IndexedAnimation_Package renames Standard.org.allbinary.animation.IndexedAnimation_Package;
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
   subtype IndexedAnimation_Access is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access;
   use type IndexedAnimation_Access;
   subtype IndexedAnimation_Access_Array is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array;
   use type IndexedAnimation_Access_Array;
   subtype IndexedAnimation_Access_Array_Access is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array_Access;
   use type IndexedAnimation_Access_Array_Access;
   subtype IndexedAnimation_Access_Array_Access_Array is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array_Access_Array;
   use type IndexedAnimation_Access_Array_Access_Array;
   subtype IndexedAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array_Access_Array_Access;
   use type IndexedAnimation_Access_Array_Access_Array_Access;
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


   subtype SimultaneousCompoundIndexAnimationInterfaceFactory_Access is org.allbinary.animation.compound.SimultaneousCompoundIndexAnimationInterfaceFactory_Package_References.SimultaneousCompoundIndexAnimationInterfaceFactory_Access;
   function "=" (Left, Right : SimultaneousCompoundIndexAnimationInterfaceFactory_Access) return Boolean renames org.allbinary.animation.compound.SimultaneousCompoundIndexAnimationInterfaceFactory_Package_References."=";
   subtype SimultaneousCompoundIndexAnimationInterfaceFactory_Access_Array is org.allbinary.animation.compound.SimultaneousCompoundIndexAnimationInterfaceFactory_Package_References.SimultaneousCompoundIndexAnimationInterfaceFactory_Access_Array;
   function "=" (Left, Right : SimultaneousCompoundIndexAnimationInterfaceFactory_Access_Array) return Boolean renames org.allbinary.animation.compound.SimultaneousCompoundIndexAnimationInterfaceFactory_Package_References."=";
   subtype SimultaneousCompoundIndexAnimationInterfaceFactory_Access_Array_Access is org.allbinary.animation.compound.SimultaneousCompoundIndexAnimationInterfaceFactory_Package_References.SimultaneousCompoundIndexAnimationInterfaceFactory_Access_Array_Access;
   function "=" (Left, Right : SimultaneousCompoundIndexAnimationInterfaceFactory_Access_Array_Access) return Boolean renames org.allbinary.animation.compound.SimultaneousCompoundIndexAnimationInterfaceFactory_Package_References."=";
   function Java_Box (Value : SimultaneousCompoundIndexAnimationInterfaceFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.compound.SimultaneousCompoundIndexAnimationInterfaceFactory_Package_References.Java_Box;
   function Java_Unbox_SimultaneousCompoundIndexAnimationInterfaceFactory_Access_Array (Value : access Java_Object'Class) return SimultaneousCompoundIndexAnimationInterfaceFactory_Access_Array_Access renames org.allbinary.animation.compound.SimultaneousCompoundIndexAnimationInterfaceFactory_Package_References.Java_Unbox_SimultaneousCompoundIndexAnimationInterfaceFactory_Access_Array;
   subtype SimultaneousCompoundIndexAnimationInterfaceFactory_Access_Array_Access_Array is org.allbinary.animation.compound.SimultaneousCompoundIndexAnimationInterfaceFactory_Package_References.SimultaneousCompoundIndexAnimationInterfaceFactory_Access_Array_Access_Array;
   function "=" (Left, Right : SimultaneousCompoundIndexAnimationInterfaceFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.compound.SimultaneousCompoundIndexAnimationInterfaceFactory_Package_References."=";
   subtype SimultaneousCompoundIndexAnimationInterfaceFactory_Access_Array_Access_Array_Access is org.allbinary.animation.compound.SimultaneousCompoundIndexAnimationInterfaceFactory_Package_References.SimultaneousCompoundIndexAnimationInterfaceFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SimultaneousCompoundIndexAnimationInterfaceFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.compound.SimultaneousCompoundIndexAnimationInterfaceFactory_Package_References."=";
   function Java_Box (Value : SimultaneousCompoundIndexAnimationInterfaceFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.compound.SimultaneousCompoundIndexAnimationInterfaceFactory_Package_References.Java_Box;
   function Java_Unbox_SimultaneousCompoundIndexAnimationInterfaceFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return SimultaneousCompoundIndexAnimationInterfaceFactory_Access_Array_Access_Array_Access renames org.allbinary.animation.compound.SimultaneousCompoundIndexAnimationInterfaceFactory_Package_References.Java_Unbox_SimultaneousCompoundIndexAnimationInterfaceFactory_Access_Array_Access_Array;

   type SimultaneousCompoundIndexAnimationInterfaceFactory is new Java_Object and AnimationInterfaceFactoryInterface with record
      basicAnimationInterfaceFactoryInterfaceArray : AnimationInterfaceFactoryInterface_Access_Array_Access;
      animationBehaviorFactory : AnimationBehaviorFactory_Access;
   end record;

   procedure Initialize (This : in out SimultaneousCompoundIndexAnimationInterfaceFactory'Class; basicAnimationInterfaceFactoryInterfaceArray : AnimationInterfaceFactoryInterface_Access_Array_Access; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class);
   function Create (basicAnimationInterfaceFactoryInterfaceArray : AnimationInterfaceFactoryInterface_Access_Array_Access; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return SimultaneousCompoundIndexAnimationInterfaceFactory_Access;
   function getInstance (This : in out SimultaneousCompoundIndexAnimationInterfaceFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out SimultaneousCompoundIndexAnimationInterfaceFactory; instanceId : Integer);
   function getOrCreate (This : in out SimultaneousCompoundIndexAnimationInterfaceFactory; animationInterfaceArray : IndexedAnimation_Access_Array_Access) return Animation_Access;
   procedure getOrCreate (This : in out SimultaneousCompoundIndexAnimationInterfaceFactory; animationInterfaceArray : IndexedAnimation_Access_Array_Access);
   function getBasicAnimationInterfaceFactoryInterfaceArray (This : in out SimultaneousCompoundIndexAnimationInterfaceFactory) return AnimationInterfaceFactoryInterface_Access_Array_Access;
   procedure setInitialScale (This : in out SimultaneousCompoundIndexAnimationInterfaceFactory; scaleProperties_Param : access ScaleProperties_Package.ScaleProperties'Class);

end org.allbinary.animation.compound.SimultaneousCompoundIndexAnimationInterfaceFactory_Package;


