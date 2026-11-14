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
limited with org.allbinary.animation.VectorRotationGenerator_Package;
package org.allbinary.animation.VectorRotationGenerator_Package_References is
   type VectorRotationGenerator_Access is access all org.allbinary.animation.VectorRotationGenerator_Package.VectorRotationGenerator'Class;
   type VectorRotationGenerator_Access_Array is array (Natural range <>) of VectorRotationGenerator_Access;
   type VectorRotationGenerator_Access_Array_Access is access all VectorRotationGenerator_Access_Array;
   type VectorRotationGenerator_Access_Array_Access_Array is array (Natural range <>) of VectorRotationGenerator_Access_Array_Access;
   type VectorRotationGenerator_Access_Array_Access_Array_Access is access all VectorRotationGenerator_Access_Array_Access_Array;
   type VectorRotationGenerator_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : VectorRotationGenerator_Access_Array_Access;
   end record;
   function Java_Box (Value : VectorRotationGenerator_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new VectorRotationGenerator_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_VectorRotationGenerator_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return VectorRotationGenerator_Access_Array_Access is (if Value /= null and then Value.all in VectorRotationGenerator_Access_Array_Object'Class then VectorRotationGenerator_Access_Array_Object'Class (Value.all).Value else null);
   type VectorRotationGenerator_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : VectorRotationGenerator_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : VectorRotationGenerator_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new VectorRotationGenerator_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_VectorRotationGenerator_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return VectorRotationGenerator_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in VectorRotationGenerator_Access_Array_Access_Array_Object'Class then VectorRotationGenerator_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.VectorRotationGenerator_Package_References;

with org.allbinary.animation.VectorRotationGenerator_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.math.Angle_Package;
with org.allbinary.math.Angle_Package_References;
limited with org.allbinary.math.AngleFactory_Package;
with org.allbinary.math.AngleFactory_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.vector.VectorInfo_Package;
with org.allbinary.vector.VectorInfo_Package_References;
limited with org.allbinary.animation.VectorAnimationUtil_Package;
with org.allbinary.animation.VectorAnimationUtil_Package_References;

package org.allbinary.animation.VectorRotationGenerator_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Angle_Package renames Standard.org.allbinary.math.Angle_Package;
   package AngleFactory_Package renames Standard.org.allbinary.math.AngleFactory_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package VectorInfo_Package renames Standard.org.allbinary.vector.VectorInfo_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype Angle_Access is org.allbinary.math.Angle_Package_References.Angle_Access;
   use type Angle_Access;
   subtype Angle_Access_Array is org.allbinary.math.Angle_Package_References.Angle_Access_Array;
   use type Angle_Access_Array;
   subtype Angle_Access_Array_Access is org.allbinary.math.Angle_Package_References.Angle_Access_Array_Access;
   use type Angle_Access_Array_Access;
   subtype Angle_Access_Array_Access_Array is org.allbinary.math.Angle_Package_References.Angle_Access_Array_Access_Array;
   use type Angle_Access_Array_Access_Array;
   subtype Angle_Access_Array_Access_Array_Access is org.allbinary.math.Angle_Package_References.Angle_Access_Array_Access_Array_Access;
   use type Angle_Access_Array_Access_Array_Access;
   subtype AngleFactory_Access is org.allbinary.math.AngleFactory_Package_References.AngleFactory_Access;
   use type AngleFactory_Access;
   subtype AngleFactory_Access_Array is org.allbinary.math.AngleFactory_Package_References.AngleFactory_Access_Array;
   use type AngleFactory_Access_Array;
   subtype AngleFactory_Access_Array_Access is org.allbinary.math.AngleFactory_Package_References.AngleFactory_Access_Array_Access;
   use type AngleFactory_Access_Array_Access;
   subtype AngleFactory_Access_Array_Access_Array is org.allbinary.math.AngleFactory_Package_References.AngleFactory_Access_Array_Access_Array;
   use type AngleFactory_Access_Array_Access_Array;
   subtype AngleFactory_Access_Array_Access_Array_Access is org.allbinary.math.AngleFactory_Package_References.AngleFactory_Access_Array_Access_Array_Access;
   use type AngleFactory_Access_Array_Access_Array_Access;
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


   subtype VectorRotationGenerator_Access is org.allbinary.animation.VectorRotationGenerator_Package_References.VectorRotationGenerator_Access;
   function "=" (Left, Right : VectorRotationGenerator_Access) return Boolean renames org.allbinary.animation.VectorRotationGenerator_Package_References."=";
   subtype VectorRotationGenerator_Access_Array is org.allbinary.animation.VectorRotationGenerator_Package_References.VectorRotationGenerator_Access_Array;
   function "=" (Left, Right : VectorRotationGenerator_Access_Array) return Boolean renames org.allbinary.animation.VectorRotationGenerator_Package_References."=";
   subtype VectorRotationGenerator_Access_Array_Access is org.allbinary.animation.VectorRotationGenerator_Package_References.VectorRotationGenerator_Access_Array_Access;
   function "=" (Left, Right : VectorRotationGenerator_Access_Array_Access) return Boolean renames org.allbinary.animation.VectorRotationGenerator_Package_References."=";
   function Java_Box (Value : VectorRotationGenerator_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.VectorRotationGenerator_Package_References.Java_Box;
   function Java_Unbox_VectorRotationGenerator_Access_Array (Value : access Java_Object'Class) return VectorRotationGenerator_Access_Array_Access renames org.allbinary.animation.VectorRotationGenerator_Package_References.Java_Unbox_VectorRotationGenerator_Access_Array;
   subtype VectorRotationGenerator_Access_Array_Access_Array is org.allbinary.animation.VectorRotationGenerator_Package_References.VectorRotationGenerator_Access_Array_Access_Array;
   function "=" (Left, Right : VectorRotationGenerator_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.VectorRotationGenerator_Package_References."=";
   subtype VectorRotationGenerator_Access_Array_Access_Array_Access is org.allbinary.animation.VectorRotationGenerator_Package_References.VectorRotationGenerator_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VectorRotationGenerator_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.VectorRotationGenerator_Package_References."=";
   function Java_Box (Value : VectorRotationGenerator_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.VectorRotationGenerator_Package_References.Java_Box;
   function Java_Unbox_VectorRotationGenerator_Access_Array_Access_Array (Value : access Java_Object'Class) return VectorRotationGenerator_Access_Array_Access_Array_Access renames org.allbinary.animation.VectorRotationGenerator_Package_References.Java_Unbox_VectorRotationGenerator_Access_Array_Access_Array;

   type VectorRotationGenerator is new Java_Object with record
      logUtil : LogUtil_Access;
      vectorAnimationUtil : VectorAnimationUtil_Access;
      angleFactory : AngleFactory_Access;
   end record;
   instance : VectorRotationGenerator_Access;

   procedure Initialize (This : in out VectorRotationGenerator'Class);
   function Create return VectorRotationGenerator_Access;
   function getInstance return VectorRotationGenerator_Access;
   function getInstance (This : in out VectorRotationGenerator; vectorRotationInfo_Param : access VectorInfo_Package.VectorInfo'Class) return Integer_Array_Access_Array_Access_Array_Access;
   procedure getInstance (This : in out VectorRotationGenerator; vectorRotationInfo_Param : access VectorInfo_Package.VectorInfo'Class);
   function getInstanceFrames (This : in out VectorRotationGenerator; width : Integer; height : Integer; points : Integer_Array_Access_Array_Access; frames : Integer) return Integer_Array_Access_Array_Access_Array_Access;
   procedure getInstanceFrames (This : in out VectorRotationGenerator; width : Integer; height : Integer; points : Integer_Array_Access_Array_Access; frames : Integer);
   function getListAtAngle (This : in out VectorRotationGenerator; width : Integer; height : Integer; pointBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class; angle_Param : access Angle_Package.Angle'Class) return BasicArrayList_Access;
   procedure getListAtAngle (This : in out VectorRotationGenerator; width : Integer; height : Integer; pointBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class; angle_Param : access Angle_Package.Angle'Class);

end org.allbinary.animation.VectorRotationGenerator_Package;


