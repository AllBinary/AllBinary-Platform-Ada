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

limited with org.allbinary.animation.IndependentVectorExplosionRotationAnimationFactory_Package;
package org.allbinary.animation.IndependentVectorExplosionRotationAnimationFactory_Package_References is
   type IndependentVectorExplosionRotationAnimationFactory_Access is access all org.allbinary.animation.IndependentVectorExplosionRotationAnimationFactory_Package.IndependentVectorExplosionRotationAnimationFactory'Class;
   type IndependentVectorExplosionRotationAnimationFactory_Access_Array is array (Natural range <>) of IndependentVectorExplosionRotationAnimationFactory_Access;
   type IndependentVectorExplosionRotationAnimationFactory_Access_Array_Access is access all IndependentVectorExplosionRotationAnimationFactory_Access_Array;
   type IndependentVectorExplosionRotationAnimationFactory_Access_Array_Access_Array is array (Natural range <>) of IndependentVectorExplosionRotationAnimationFactory_Access_Array_Access;
   type IndependentVectorExplosionRotationAnimationFactory_Access_Array_Access_Array_Access is access all IndependentVectorExplosionRotationAnimationFactory_Access_Array_Access_Array;
end org.allbinary.animation.IndependentVectorExplosionRotationAnimationFactory_Package_References;

with org.allbinary.animation.IndependentVectorExplosionRotationAnimationFactory_Package_References;
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
limited with org.allbinary.vector.VectorInfo_Package;
with org.allbinary.vector.VectorInfo_Package_References;
with org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
limited with org.allbinary.animation.VectorAnimationFactoryInterface_Package;
with org.allbinary.animation.VectorAnimationFactoryInterface_Package_References;
limited with org.allbinary.animation.VectorExplosionGenerator_Package;
with org.allbinary.animation.VectorExplosionGenerator_Package_References;
limited with org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;

package org.allbinary.animation.IndependentVectorExplosionRotationAnimationFactory_Package is

   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package VectorInfo_Package renames Standard.org.allbinary.vector.VectorInfo_Package;
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
   subtype VectorInfo_Access is org.allbinary.vector.VectorInfo_Package_References.VectorInfo_Access;
   use type VectorInfo_Access;
   subtype VectorInfo_Access_Array is org.allbinary.vector.VectorInfo_Package_References.VectorInfo_Access_Array;
   use type VectorInfo_Access_Array;
   subtype VectorInfo_Access_Array_Access is org.allbinary.vector.VectorInfo_Package_References.VectorInfo_Access_Array_Access;
   use type VectorInfo_Access_Array_Access;
   subtype VectorInfo_Access_Array_Access_Array is org.allbinary.vector.VectorInfo_Package_References.VectorInfo_Access_Array_Access_Array;
   use type VectorInfo_Access_Array_Access_Array;
   subtype VectorInfo_Access_Array_Access_Array_Access is org.allbinary.vector.VectorInfo_Package_References.VectorInfo_Access_Array_Access_Array_Access;
   use type VectorInfo_Access_Array_Access_Array_Access;
   subtype VectorAnimationFactoryInterface_Access is org.allbinary.animation.VectorAnimationFactoryInterface_Package_References.VectorAnimationFactoryInterface_Access;
   use type VectorAnimationFactoryInterface_Access;
   subtype VectorAnimationFactoryInterface_Access_Array is org.allbinary.animation.VectorAnimationFactoryInterface_Package_References.VectorAnimationFactoryInterface_Access_Array;
   use type VectorAnimationFactoryInterface_Access_Array;
   subtype VectorAnimationFactoryInterface_Access_Array_Access is org.allbinary.animation.VectorAnimationFactoryInterface_Package_References.VectorAnimationFactoryInterface_Access_Array_Access;
   use type VectorAnimationFactoryInterface_Access_Array_Access;
   subtype VectorAnimationFactoryInterface_Access_Array_Access_Array is org.allbinary.animation.VectorAnimationFactoryInterface_Package_References.VectorAnimationFactoryInterface_Access_Array_Access_Array;
   use type VectorAnimationFactoryInterface_Access_Array_Access_Array;
   subtype VectorAnimationFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.animation.VectorAnimationFactoryInterface_Package_References.VectorAnimationFactoryInterface_Access_Array_Access_Array_Access;
   use type VectorAnimationFactoryInterface_Access_Array_Access_Array_Access;
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


   subtype IndependentVectorExplosionRotationAnimationFactory_Access is org.allbinary.animation.IndependentVectorExplosionRotationAnimationFactory_Package_References.IndependentVectorExplosionRotationAnimationFactory_Access;
   function "=" (Left, Right : IndependentVectorExplosionRotationAnimationFactory_Access) return Boolean renames org.allbinary.animation.IndependentVectorExplosionRotationAnimationFactory_Package_References."=";
   subtype IndependentVectorExplosionRotationAnimationFactory_Access_Array is org.allbinary.animation.IndependentVectorExplosionRotationAnimationFactory_Package_References.IndependentVectorExplosionRotationAnimationFactory_Access_Array;
   function "=" (Left, Right : IndependentVectorExplosionRotationAnimationFactory_Access_Array) return Boolean renames org.allbinary.animation.IndependentVectorExplosionRotationAnimationFactory_Package_References."=";
   subtype IndependentVectorExplosionRotationAnimationFactory_Access_Array_Access is org.allbinary.animation.IndependentVectorExplosionRotationAnimationFactory_Package_References.IndependentVectorExplosionRotationAnimationFactory_Access_Array_Access;
   function "=" (Left, Right : IndependentVectorExplosionRotationAnimationFactory_Access_Array_Access) return Boolean renames org.allbinary.animation.IndependentVectorExplosionRotationAnimationFactory_Package_References."=";
   subtype IndependentVectorExplosionRotationAnimationFactory_Access_Array_Access_Array is org.allbinary.animation.IndependentVectorExplosionRotationAnimationFactory_Package_References.IndependentVectorExplosionRotationAnimationFactory_Access_Array_Access_Array;
   function "=" (Left, Right : IndependentVectorExplosionRotationAnimationFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.IndependentVectorExplosionRotationAnimationFactory_Package_References."=";
   subtype IndependentVectorExplosionRotationAnimationFactory_Access_Array_Access_Array_Access is org.allbinary.animation.IndependentVectorExplosionRotationAnimationFactory_Package_References.IndependentVectorExplosionRotationAnimationFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : IndependentVectorExplosionRotationAnimationFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.IndependentVectorExplosionRotationAnimationFactory_Package_References."=";

   type IndependentVectorExplosionRotationAnimationFactory is new Java_Object and ProceduralAnimationInterfaceFactoryInterface with record
      framePoints : Integer_Array_Access_Array_Access_Array_Access;
      vectorInfo : VectorInfo_Access;
      basicColor : BasicColor_Access;
      vectorAnimationFactoryInterface : VectorAnimationFactoryInterface_Access;
      vectorExplosionGenerator : VectorExplosionGenerator_Access;
   end record;

   procedure Initialize (This : in out IndependentVectorExplosionRotationAnimationFactory'Class; vectorInfo_Param : access VectorInfo_Package.VectorInfo'Class; basicColor_Param : access BasicColor_Package.BasicColor'Class; vectorAnimationFactoryInterface_Param : access VectorAnimationFactoryInterface_Package.VectorAnimationFactoryInterface'Class);
   function Create (vectorInfo_Param : access VectorInfo_Package.VectorInfo'Class; basicColor_Param : access BasicColor_Package.BasicColor'Class; vectorAnimationFactoryInterface_Param : access VectorAnimationFactoryInterface_Package.VectorAnimationFactoryInterface'Class) return IndependentVectorExplosionRotationAnimationFactory_Access;
   procedure init (This : in out IndependentVectorExplosionRotationAnimationFactory);
   function getInstanceAnimation (This : in out IndependentVectorExplosionRotationAnimationFactory; animationInterface_Param : access Animation_Package.Animation'Class) return Animation_Access;
   procedure getInstanceAnimation (This : in out IndependentVectorExplosionRotationAnimationFactory; animationInterface_Param : access Animation_Package.Animation'Class);

end org.allbinary.animation.IndependentVectorExplosionRotationAnimationFactory_Package;


