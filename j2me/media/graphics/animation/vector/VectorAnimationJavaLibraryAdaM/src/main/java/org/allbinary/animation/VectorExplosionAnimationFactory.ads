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
limited with org.allbinary.animation.VectorExplosionAnimationFactory_Package;
package org.allbinary.animation.VectorExplosionAnimationFactory_Package_References is
   type VectorExplosionAnimationFactory_Access is access all org.allbinary.animation.VectorExplosionAnimationFactory_Package.VectorExplosionAnimationFactory'Class;
   type VectorExplosionAnimationFactory_Access_Array is array (Natural range <>) of VectorExplosionAnimationFactory_Access;
   type VectorExplosionAnimationFactory_Access_Array_Access is access all VectorExplosionAnimationFactory_Access_Array;
   type VectorExplosionAnimationFactory_Access_Array_Access_Array is array (Natural range <>) of VectorExplosionAnimationFactory_Access_Array_Access;
   type VectorExplosionAnimationFactory_Access_Array_Access_Array_Access is access all VectorExplosionAnimationFactory_Access_Array_Access_Array;
   type VectorExplosionAnimationFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : VectorExplosionAnimationFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : VectorExplosionAnimationFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new VectorExplosionAnimationFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_VectorExplosionAnimationFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return VectorExplosionAnimationFactory_Access_Array_Access is (if Value /= null and then Value.all in VectorExplosionAnimationFactory_Access_Array_Object'Class then VectorExplosionAnimationFactory_Access_Array_Object'Class (Value.all).Value else null);
   type VectorExplosionAnimationFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : VectorExplosionAnimationFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : VectorExplosionAnimationFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new VectorExplosionAnimationFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_VectorExplosionAnimationFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return VectorExplosionAnimationFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in VectorExplosionAnimationFactory_Access_Array_Access_Array_Object'Class then VectorExplosionAnimationFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.VectorExplosionAnimationFactory_Package_References;

with org.allbinary.animation.VectorExplosionAnimationFactory_Package_References;
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
with org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
limited with org.allbinary.animation.VectorExplosionGenerator_Package;
with org.allbinary.animation.VectorExplosionGenerator_Package_References;
limited with org.allbinary.animation.AnimationBehaviorFactory_Package;
with org.allbinary.animation.AnimationBehaviorFactory_Package_References;
limited with org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;

package org.allbinary.animation.VectorExplosionAnimationFactory_Package is

   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
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
   subtype VectorExplosionGenerator_Access is org.allbinary.animation.VectorExplosionGenerator_Package_References.VectorExplosionGenerator_Access;
   use type VectorExplosionGenerator_Access;
   subtype VectorExplosionGenerator_Access_Array is org.allbinary.animation.VectorExplosionGenerator_Package_References.VectorExplosionGenerator_Access_Array;
   use type VectorExplosionGenerator_Access_Array;
   subtype VectorExplosionGenerator_Access_Array_Access is org.allbinary.animation.VectorExplosionGenerator_Package_References.VectorExplosionGenerator_Access_Array_Access;
   use type VectorExplosionGenerator_Access_Array_Access;
   subtype VectorExplosionGenerator_Access_Array_Access_Array is org.allbinary.animation.VectorExplosionGenerator_Package_References.VectorExplosionGenerator_Access_Array_Access_Array;
   use type VectorExplosionGenerator_Access_Array_Access_Array;
   subtype VectorExplosionGenerator_Access_Array_Access_Array_Access is org.allbinary.animation.VectorExplosionGenerator_Package_References.VectorExplosionGenerator_Access_Array_Access_Array_Access;
   use type VectorExplosionGenerator_Access_Array_Access_Array_Access;
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


   subtype VectorExplosionAnimationFactory_Access is org.allbinary.animation.VectorExplosionAnimationFactory_Package_References.VectorExplosionAnimationFactory_Access;
   function "=" (Left, Right : VectorExplosionAnimationFactory_Access) return Boolean renames org.allbinary.animation.VectorExplosionAnimationFactory_Package_References."=";
   subtype VectorExplosionAnimationFactory_Access_Array is org.allbinary.animation.VectorExplosionAnimationFactory_Package_References.VectorExplosionAnimationFactory_Access_Array;
   function "=" (Left, Right : VectorExplosionAnimationFactory_Access_Array) return Boolean renames org.allbinary.animation.VectorExplosionAnimationFactory_Package_References."=";
   subtype VectorExplosionAnimationFactory_Access_Array_Access is org.allbinary.animation.VectorExplosionAnimationFactory_Package_References.VectorExplosionAnimationFactory_Access_Array_Access;
   function "=" (Left, Right : VectorExplosionAnimationFactory_Access_Array_Access) return Boolean renames org.allbinary.animation.VectorExplosionAnimationFactory_Package_References."=";
   function Java_Box (Value : VectorExplosionAnimationFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.VectorExplosionAnimationFactory_Package_References.Java_Box;
   function Java_Unbox_VectorExplosionAnimationFactory_Access_Array (Value : access Java_Object'Class) return VectorExplosionAnimationFactory_Access_Array_Access renames org.allbinary.animation.VectorExplosionAnimationFactory_Package_References.Java_Unbox_VectorExplosionAnimationFactory_Access_Array;
   subtype VectorExplosionAnimationFactory_Access_Array_Access_Array is org.allbinary.animation.VectorExplosionAnimationFactory_Package_References.VectorExplosionAnimationFactory_Access_Array_Access_Array;
   function "=" (Left, Right : VectorExplosionAnimationFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.VectorExplosionAnimationFactory_Package_References."=";
   subtype VectorExplosionAnimationFactory_Access_Array_Access_Array_Access is org.allbinary.animation.VectorExplosionAnimationFactory_Package_References.VectorExplosionAnimationFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VectorExplosionAnimationFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.VectorExplosionAnimationFactory_Package_References."=";
   function Java_Box (Value : VectorExplosionAnimationFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.VectorExplosionAnimationFactory_Package_References.Java_Box;
   function Java_Unbox_VectorExplosionAnimationFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return VectorExplosionAnimationFactory_Access_Array_Access_Array_Access renames org.allbinary.animation.VectorExplosionAnimationFactory_Package_References.Java_Unbox_VectorExplosionAnimationFactory_Access_Array_Access_Array;

   type VectorExplosionAnimationFactory is new Java_Object and ProceduralAnimationInterfaceFactoryInterface with record
      vectorExplosionGenerator : VectorExplosionGenerator_Access;
      basicColor : BasicColor_Access;
      animationBehaviorFactory : AnimationBehaviorFactory_Access;
   end record;

   procedure Initialize (This : in out VectorExplosionAnimationFactory'Class; basicColor_Param : access BasicColor_Package.BasicColor'Class; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class);
   function Create (basicColor_Param : access BasicColor_Package.BasicColor'Class; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return VectorExplosionAnimationFactory_Access;
   function getInstanceAnimation (This : in out VectorExplosionAnimationFactory; animationInterface_Param : access Animation_Package.Animation'Class) return Animation_Access;
   procedure getInstanceAnimation (This : in out VectorExplosionAnimationFactory; animationInterface_Param : access Animation_Package.Animation'Class);
   procedure setBasicColorP (This : in out VectorExplosionAnimationFactory; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   function getBasicColorP (This : in out VectorExplosionAnimationFactory) return BasicColor_Access;

end org.allbinary.animation.VectorExplosionAnimationFactory_Package;


