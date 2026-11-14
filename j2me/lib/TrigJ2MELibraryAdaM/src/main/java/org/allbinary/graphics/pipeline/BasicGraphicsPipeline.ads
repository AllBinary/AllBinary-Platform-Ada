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
limited with org.allbinary.graphics.pipeline.BasicGraphicsPipeline_Package;
package org.allbinary.graphics.pipeline.BasicGraphicsPipeline_Package_References is
   type BasicGraphicsPipeline_Access is access all org.allbinary.graphics.pipeline.BasicGraphicsPipeline_Package.BasicGraphicsPipeline'Class;
   type BasicGraphicsPipeline_Access_Array is array (Natural range <>) of BasicGraphicsPipeline_Access;
   type BasicGraphicsPipeline_Access_Array_Access is access all BasicGraphicsPipeline_Access_Array;
   type BasicGraphicsPipeline_Access_Array_Access_Array is array (Natural range <>) of BasicGraphicsPipeline_Access_Array_Access;
   type BasicGraphicsPipeline_Access_Array_Access_Array_Access is access all BasicGraphicsPipeline_Access_Array_Access_Array;
   type BasicGraphicsPipeline_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicGraphicsPipeline_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicGraphicsPipeline_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicGraphicsPipeline_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicGraphicsPipeline_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicGraphicsPipeline_Access_Array_Access is (if Value /= null and then Value.all in BasicGraphicsPipeline_Access_Array_Object'Class then BasicGraphicsPipeline_Access_Array_Object'Class (Value.all).Value else null);
   type BasicGraphicsPipeline_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicGraphicsPipeline_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicGraphicsPipeline_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicGraphicsPipeline_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicGraphicsPipeline_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicGraphicsPipeline_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicGraphicsPipeline_Access_Array_Access_Array_Object'Class then BasicGraphicsPipeline_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.pipeline.BasicGraphicsPipeline_Package_References;

with org.allbinary.graphics.pipeline.BasicGraphicsPipeline_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.math.Angle_Package;
with org.allbinary.math.Angle_Package_References;
limited with org.allbinary.math.NoDecimalTrigTable_Package;
with org.allbinary.math.NoDecimalTrigTable_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.graphics.pipeline.BasicGraphicsPipeline_Package is

   package Angle_Package renames Standard.org.allbinary.math.Angle_Package;
   package NoDecimalTrigTable_Package renames Standard.org.allbinary.math.NoDecimalTrigTable_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
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
   subtype NoDecimalTrigTable_Access is org.allbinary.math.NoDecimalTrigTable_Package_References.NoDecimalTrigTable_Access;
   use type NoDecimalTrigTable_Access;
   subtype NoDecimalTrigTable_Access_Array is org.allbinary.math.NoDecimalTrigTable_Package_References.NoDecimalTrigTable_Access_Array;
   use type NoDecimalTrigTable_Access_Array;
   subtype NoDecimalTrigTable_Access_Array_Access is org.allbinary.math.NoDecimalTrigTable_Package_References.NoDecimalTrigTable_Access_Array_Access;
   use type NoDecimalTrigTable_Access_Array_Access;
   subtype NoDecimalTrigTable_Access_Array_Access_Array is org.allbinary.math.NoDecimalTrigTable_Package_References.NoDecimalTrigTable_Access_Array_Access_Array;
   use type NoDecimalTrigTable_Access_Array_Access_Array;
   subtype NoDecimalTrigTable_Access_Array_Access_Array_Access is org.allbinary.math.NoDecimalTrigTable_Package_References.NoDecimalTrigTable_Access_Array_Access_Array_Access;
   use type NoDecimalTrigTable_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype BasicGraphicsPipeline_Access is org.allbinary.graphics.pipeline.BasicGraphicsPipeline_Package_References.BasicGraphicsPipeline_Access;
   function "=" (Left, Right : BasicGraphicsPipeline_Access) return Boolean renames org.allbinary.graphics.pipeline.BasicGraphicsPipeline_Package_References."=";
   subtype BasicGraphicsPipeline_Access_Array is org.allbinary.graphics.pipeline.BasicGraphicsPipeline_Package_References.BasicGraphicsPipeline_Access_Array;
   function "=" (Left, Right : BasicGraphicsPipeline_Access_Array) return Boolean renames org.allbinary.graphics.pipeline.BasicGraphicsPipeline_Package_References."=";
   subtype BasicGraphicsPipeline_Access_Array_Access is org.allbinary.graphics.pipeline.BasicGraphicsPipeline_Package_References.BasicGraphicsPipeline_Access_Array_Access;
   function "=" (Left, Right : BasicGraphicsPipeline_Access_Array_Access) return Boolean renames org.allbinary.graphics.pipeline.BasicGraphicsPipeline_Package_References."=";
   function Java_Box (Value : BasicGraphicsPipeline_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.pipeline.BasicGraphicsPipeline_Package_References.Java_Box;
   function Java_Unbox_BasicGraphicsPipeline_Access_Array (Value : access Java_Object'Class) return BasicGraphicsPipeline_Access_Array_Access renames org.allbinary.graphics.pipeline.BasicGraphicsPipeline_Package_References.Java_Unbox_BasicGraphicsPipeline_Access_Array;
   subtype BasicGraphicsPipeline_Access_Array_Access_Array is org.allbinary.graphics.pipeline.BasicGraphicsPipeline_Package_References.BasicGraphicsPipeline_Access_Array_Access_Array;
   function "=" (Left, Right : BasicGraphicsPipeline_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.pipeline.BasicGraphicsPipeline_Package_References."=";
   subtype BasicGraphicsPipeline_Access_Array_Access_Array_Access is org.allbinary.graphics.pipeline.BasicGraphicsPipeline_Package_References.BasicGraphicsPipeline_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicGraphicsPipeline_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.pipeline.BasicGraphicsPipeline_Package_References."=";
   function Java_Box (Value : BasicGraphicsPipeline_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.pipeline.BasicGraphicsPipeline_Package_References.Java_Box;
   function Java_Unbox_BasicGraphicsPipeline_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicGraphicsPipeline_Access_Array_Access_Array_Access renames org.allbinary.graphics.pipeline.BasicGraphicsPipeline_Package_References.Java_Unbox_BasicGraphicsPipeline_Access_Array_Access_Array;

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


