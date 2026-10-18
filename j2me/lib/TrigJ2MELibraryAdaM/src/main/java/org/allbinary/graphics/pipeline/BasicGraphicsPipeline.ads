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
with org.allbinary.math.Angle_Package; use org.allbinary.math.Angle_Package;
with org.allbinary.math.NoDecimalTrigTable_Package; use org.allbinary.math.NoDecimalTrigTable_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.graphics.pipeline.BasicGraphicsPipeline_Package is

   package Angle_Package renames Standard.org.allbinary.math.Angle_Package;
   package NoDecimalTrigTable_Package renames Standard.org.allbinary.math.NoDecimalTrigTable_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type BasicGraphicsPipeline is tagged;
   type BasicGraphicsPipeline_Access is access all BasicGraphicsPipeline'Class;
   type BasicGraphicsPipeline_Access_Array is array (Natural range <>) of BasicGraphicsPipeline_Access;
   type BasicGraphicsPipeline_Access_Array_Access is access all BasicGraphicsPipeline_Access_Array;
   type BasicGraphicsPipeline_Access_Array_Access_Array is array (Natural range <>) of BasicGraphicsPipeline_Access_Array_Access;
   type BasicGraphicsPipeline_Access_Array_Access_Array_Access is access all BasicGraphicsPipeline_Access_Array_Access_Array;

   type BasicGraphicsPipeline is new Java_Object with record
      pointBasicArrayList : BasicArrayList_Access;
      noDecimalTrigTable : NoDecimalTrigTable_Access;
   end record;

   procedure Initialize (This : in out BasicGraphicsPipeline'Class; points_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function Create (points_Param : access BasicArrayList_Package.BasicArrayList'Class) return BasicGraphicsPipeline_Access;
   procedure setInitMatrix (This : in out BasicGraphicsPipeline; points_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure createMatrix (This : in out BasicGraphicsPipeline);
   procedure translate (This : in out BasicGraphicsPipeline; x : Integer; y : Integer);
   procedure rotateToAngle (This : in out BasicGraphicsPipeline; angle_Param : access Angle_Package.Angle'Class);
   procedure rotate (This : in out BasicGraphicsPipeline; angle : Integer);
   procedure mirror (This : in out BasicGraphicsPipeline; width : Integer);
   function getMatrix (This : in out BasicGraphicsPipeline) return BasicArrayList_Access;

end org.allbinary.graphics.pipeline.BasicGraphicsPipeline_Package;


