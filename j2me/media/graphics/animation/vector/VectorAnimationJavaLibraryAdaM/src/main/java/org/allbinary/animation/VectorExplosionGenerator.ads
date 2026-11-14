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
limited with org.allbinary.animation.VectorExplosionGenerator_Package;
package org.allbinary.animation.VectorExplosionGenerator_Package_References is
   type VectorExplosionGenerator_Access is access all org.allbinary.animation.VectorExplosionGenerator_Package.VectorExplosionGenerator'Class;
   type VectorExplosionGenerator_Access_Array is array (Natural range <>) of VectorExplosionGenerator_Access;
   type VectorExplosionGenerator_Access_Array_Access is access all VectorExplosionGenerator_Access_Array;
   type VectorExplosionGenerator_Access_Array_Access_Array is array (Natural range <>) of VectorExplosionGenerator_Access_Array_Access;
   type VectorExplosionGenerator_Access_Array_Access_Array_Access is access all VectorExplosionGenerator_Access_Array_Access_Array;
   type VectorExplosionGenerator_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : VectorExplosionGenerator_Access_Array_Access;
   end record;
   function Java_Box (Value : VectorExplosionGenerator_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new VectorExplosionGenerator_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_VectorExplosionGenerator_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return VectorExplosionGenerator_Access_Array_Access is (if Value /= null and then Value.all in VectorExplosionGenerator_Access_Array_Object'Class then VectorExplosionGenerator_Access_Array_Object'Class (Value.all).Value else null);
   type VectorExplosionGenerator_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : VectorExplosionGenerator_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : VectorExplosionGenerator_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new VectorExplosionGenerator_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_VectorExplosionGenerator_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return VectorExplosionGenerator_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in VectorExplosionGenerator_Access_Array_Access_Array_Object'Class then VectorExplosionGenerator_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.VectorExplosionGenerator_Package_References;

with org.allbinary.animation.VectorExplosionGenerator_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.pipeline.RandomRotationFactory_Package;
with org.allbinary.graphics.pipeline.RandomRotationFactory_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.animation.VectorExplosionType_Package;
with org.allbinary.animation.VectorExplosionType_Package_References;
limited with org.allbinary.animation.VectorAnimationUtil_Package;
with org.allbinary.animation.VectorAnimationUtil_Package_References;

package org.allbinary.animation.VectorExplosionGenerator_Package is

   package RandomRotationFactory_Package renames Standard.org.allbinary.graphics.pipeline.RandomRotationFactory_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype RandomRotationFactory_Access is org.allbinary.graphics.pipeline.RandomRotationFactory_Package_References.RandomRotationFactory_Access;
   use type RandomRotationFactory_Access;
   subtype RandomRotationFactory_Access_Array is org.allbinary.graphics.pipeline.RandomRotationFactory_Package_References.RandomRotationFactory_Access_Array;
   use type RandomRotationFactory_Access_Array;
   subtype RandomRotationFactory_Access_Array_Access is org.allbinary.graphics.pipeline.RandomRotationFactory_Package_References.RandomRotationFactory_Access_Array_Access;
   use type RandomRotationFactory_Access_Array_Access;
   subtype RandomRotationFactory_Access_Array_Access_Array is org.allbinary.graphics.pipeline.RandomRotationFactory_Package_References.RandomRotationFactory_Access_Array_Access_Array;
   use type RandomRotationFactory_Access_Array_Access_Array;
   subtype RandomRotationFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.pipeline.RandomRotationFactory_Package_References.RandomRotationFactory_Access_Array_Access_Array_Access;
   use type RandomRotationFactory_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype VectorExplosionType_Access is org.allbinary.animation.VectorExplosionType_Package_References.VectorExplosionType_Access;
   use type VectorExplosionType_Access;
   subtype VectorExplosionType_Access_Array is org.allbinary.animation.VectorExplosionType_Package_References.VectorExplosionType_Access_Array;
   use type VectorExplosionType_Access_Array;
   subtype VectorExplosionType_Access_Array_Access is org.allbinary.animation.VectorExplosionType_Package_References.VectorExplosionType_Access_Array_Access;
   use type VectorExplosionType_Access_Array_Access;
   subtype VectorExplosionType_Access_Array_Access_Array is org.allbinary.animation.VectorExplosionType_Package_References.VectorExplosionType_Access_Array_Access_Array;
   use type VectorExplosionType_Access_Array_Access_Array;
   subtype VectorExplosionType_Access_Array_Access_Array_Access is org.allbinary.animation.VectorExplosionType_Package_References.VectorExplosionType_Access_Array_Access_Array_Access;
   use type VectorExplosionType_Access_Array_Access_Array_Access;
   subtype VectorAnimationUtil_Access is org.allbinary.animation.VectorAnimationUtil_Package_References.VectorAnimationUtil_Access;
   use type VectorAnimationUtil_Access;
   subtype VectorAnimationUtil_Access_Array is org.allbinary.animation.VectorAnimationUtil_Package_References.VectorAnimationUtil_Access_Array;
   use type VectorAnimationUtil_Access_Array;
   subtype VectorAnimationUtil_Access_Array_Access is org.allbinary.animation.VectorAnimationUtil_Package_References.VectorAnimationUtil_Access_Array_Access;
   use type VectorAnimationUtil_Access_Array_Access;
   subtype VectorAnimationUtil_Access_Array_Access_Array is org.allbinary.animation.VectorAnimationUtil_Package_References.VectorAnimationUtil_Access_Array_Access_Array;
   use type VectorAnimationUtil_Access_Array_Access_Array;
   subtype VectorAnimationUtil_Access_Array_Access_Array_Access is org.allbinary.animation.VectorAnimationUtil_Package_References.VectorAnimationUtil_Access_Array_Access_Array_Access;
   use type VectorAnimationUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype VectorExplosionGenerator_Access is org.allbinary.animation.VectorExplosionGenerator_Package_References.VectorExplosionGenerator_Access;
   function "=" (Left, Right : VectorExplosionGenerator_Access) return Boolean renames org.allbinary.animation.VectorExplosionGenerator_Package_References."=";
   subtype VectorExplosionGenerator_Access_Array is org.allbinary.animation.VectorExplosionGenerator_Package_References.VectorExplosionGenerator_Access_Array;
   function "=" (Left, Right : VectorExplosionGenerator_Access_Array) return Boolean renames org.allbinary.animation.VectorExplosionGenerator_Package_References."=";
   subtype VectorExplosionGenerator_Access_Array_Access is org.allbinary.animation.VectorExplosionGenerator_Package_References.VectorExplosionGenerator_Access_Array_Access;
   function "=" (Left, Right : VectorExplosionGenerator_Access_Array_Access) return Boolean renames org.allbinary.animation.VectorExplosionGenerator_Package_References."=";
   function Java_Box (Value : VectorExplosionGenerator_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.VectorExplosionGenerator_Package_References.Java_Box;
   function Java_Unbox_VectorExplosionGenerator_Access_Array (Value : access Java_Object'Class) return VectorExplosionGenerator_Access_Array_Access renames org.allbinary.animation.VectorExplosionGenerator_Package_References.Java_Unbox_VectorExplosionGenerator_Access_Array;
   subtype VectorExplosionGenerator_Access_Array_Access_Array is org.allbinary.animation.VectorExplosionGenerator_Package_References.VectorExplosionGenerator_Access_Array_Access_Array;
   function "=" (Left, Right : VectorExplosionGenerator_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.VectorExplosionGenerator_Package_References."=";
   subtype VectorExplosionGenerator_Access_Array_Access_Array_Access is org.allbinary.animation.VectorExplosionGenerator_Package_References.VectorExplosionGenerator_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VectorExplosionGenerator_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.VectorExplosionGenerator_Package_References."=";
   function Java_Box (Value : VectorExplosionGenerator_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.VectorExplosionGenerator_Package_References.Java_Box;
   function Java_Unbox_VectorExplosionGenerator_Access_Array_Access_Array (Value : access Java_Object'Class) return VectorExplosionGenerator_Access_Array_Access_Array_Access renames org.allbinary.animation.VectorExplosionGenerator_Package_References.Java_Unbox_VectorExplosionGenerator_Access_Array_Access_Array;

   type VectorExplosionGenerator is new Java_Object with record
      RANDOM : VectorExplosionType_Access;
      ROTATION : VectorExplosionType_Access;
      vectorAnimationUtil : VectorAnimationUtil_Access;
      randomRotationFactory : RandomRotationFactory_Access;
   end record;
   instance : VectorExplosionGenerator_Access;

   procedure Initialize (This : in out VectorExplosionGenerator'Class);
   function Create return VectorExplosionGenerator_Access;
   function getInstance return VectorExplosionGenerator_Access;
   function createList (This : in out VectorExplosionGenerator; list_Param : access BasicArrayList_Package.BasicArrayList'Class; howMuch : Integer; type_Id_Param : access VectorExplosionType_Package.VectorExplosionType'Class) return BasicArrayList_Access;
   procedure createList (This : in out VectorExplosionGenerator; list_Param : access BasicArrayList_Package.BasicArrayList'Class; howMuch : Integer; type_Id_Param : access VectorExplosionType_Package.VectorExplosionType'Class);
   function getInstance (This : in out VectorExplosionGenerator; points : Integer_Array_Access_Array_Access; howMuch : Integer; type_Id_Param : access VectorExplosionType_Package.VectorExplosionType'Class) return Integer_Array_Access_Array_Access_Array_Access;
   procedure getInstance (This : in out VectorExplosionGenerator; points : Integer_Array_Access_Array_Access; howMuch : Integer; type_Id_Param : access VectorExplosionType_Package.VectorExplosionType'Class);
   function getInstanceStartFrame (This : in out VectorExplosionGenerator; points : Integer_Array_Access_Array_Access; howMuch : Integer; type_Id_Param : access VectorExplosionType_Package.VectorExplosionType'Class; startFrame : Boolean) return BasicArrayList_Access;
   procedure getInstanceStartFrame (This : in out VectorExplosionGenerator; points : Integer_Array_Access_Array_Access; howMuch : Integer; type_Id_Param : access VectorExplosionType_Package.VectorExplosionType'Class; startFrame : Boolean);
   function createListFromPoints (This : in out VectorExplosionGenerator; tempBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class; points : Integer_Array_Access_Array_Access; howMuch : Integer; type_Id_Param : access VectorExplosionType_Package.VectorExplosionType'Class) return BasicArrayList_Access;
   procedure createListFromPoints (This : in out VectorExplosionGenerator; tempBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class; points : Integer_Array_Access_Array_Access; howMuch : Integer; type_Id_Param : access VectorExplosionType_Package.VectorExplosionType'Class);
   function createPointsBasicArrayList (This : in out VectorExplosionGenerator; points : Integer_Array_Access_Array_Access) return BasicArrayList_Access;
   procedure createPointsBasicArrayList (This : in out VectorExplosionGenerator; points : Integer_Array_Access_Array_Access);

end org.allbinary.animation.VectorExplosionGenerator_Package;


