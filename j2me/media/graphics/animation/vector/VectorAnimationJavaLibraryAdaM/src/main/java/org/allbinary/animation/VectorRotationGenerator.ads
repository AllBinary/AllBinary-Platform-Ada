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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.graphics.pipeline.BasicGraphicsPipeline_Package; use org.allbinary.graphics.pipeline.BasicGraphicsPipeline_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.math.Angle_Package; use org.allbinary.math.Angle_Package;
with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListS_Package; use org.allbinary.util.BasicArrayListS_Package;
with org.allbinary.vector.VectorInfo_Package; use org.allbinary.vector.VectorInfo_Package;
with org.allbinary.animation.VectorAnimationUtil_Package; use org.allbinary.animation.VectorAnimationUtil_Package;

package org.allbinary.animation.VectorRotationGenerator_Package is

   package PointFactory_Package renames Standard.org.allbinary.graphics.PointFactory_Package;
   package BasicGraphicsPipeline_Package renames Standard.org.allbinary.graphics.pipeline.BasicGraphicsPipeline_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Angle_Package renames Standard.org.allbinary.math.Angle_Package;
   package AngleFactory_Package renames Standard.org.allbinary.math.AngleFactory_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListS_Package renames Standard.org.allbinary.util.BasicArrayListS_Package;
   package VectorInfo_Package renames Standard.org.allbinary.vector.VectorInfo_Package;

   type VectorRotationGenerator is tagged;
   type VectorRotationGenerator_Access is access all VectorRotationGenerator'Class;
   type VectorRotationGenerator_Access_Array is array (Natural range <>) of VectorRotationGenerator_Access;
   type VectorRotationGenerator_Access_Array_Access is access all VectorRotationGenerator_Access_Array;

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


