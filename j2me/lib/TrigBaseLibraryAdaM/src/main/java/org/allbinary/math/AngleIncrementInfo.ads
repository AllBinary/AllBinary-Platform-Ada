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

limited with org.allbinary.math.AngleIncrementInfo_Package;
package org.allbinary.math.AngleIncrementInfo_Package_References is
   type AngleIncrementInfo_Access is access all org.allbinary.math.AngleIncrementInfo_Package.AngleIncrementInfo'Class;
   type AngleIncrementInfo_Access_Array is array (Natural range <>) of AngleIncrementInfo_Access;
   type AngleIncrementInfo_Access_Array_Access is access all AngleIncrementInfo_Access_Array;
   type AngleIncrementInfo_Access_Array_Access_Array is array (Natural range <>) of AngleIncrementInfo_Access_Array_Access;
   type AngleIncrementInfo_Access_Array_Access_Array_Access is access all AngleIncrementInfo_Access_Array_Access_Array;
end org.allbinary.math.AngleIncrementInfo_Package_References;

with org.allbinary.math.AngleIncrementInfo_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.math.FrameUtil_Package;
with org.allbinary.math.FrameUtil_Package_References;

package org.allbinary.math.AngleIncrementInfo_Package is

   package Reference_Types is
   subtype FrameUtil_Access is org.allbinary.math.FrameUtil_Package_References.FrameUtil_Access;
   use type FrameUtil_Access;
   subtype FrameUtil_Access_Array is org.allbinary.math.FrameUtil_Package_References.FrameUtil_Access_Array;
   use type FrameUtil_Access_Array;
   subtype FrameUtil_Access_Array_Access is org.allbinary.math.FrameUtil_Package_References.FrameUtil_Access_Array_Access;
   use type FrameUtil_Access_Array_Access;
   subtype FrameUtil_Access_Array_Access_Array is org.allbinary.math.FrameUtil_Package_References.FrameUtil_Access_Array_Access_Array;
   use type FrameUtil_Access_Array_Access_Array;
   subtype FrameUtil_Access_Array_Access_Array_Access is org.allbinary.math.FrameUtil_Package_References.FrameUtil_Access_Array_Access_Array_Access;
   use type FrameUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AngleIncrementInfo_Access is org.allbinary.math.AngleIncrementInfo_Package_References.AngleIncrementInfo_Access;
   function "=" (Left, Right : AngleIncrementInfo_Access) return Boolean renames org.allbinary.math.AngleIncrementInfo_Package_References."=";
   subtype AngleIncrementInfo_Access_Array is org.allbinary.math.AngleIncrementInfo_Package_References.AngleIncrementInfo_Access_Array;
   function "=" (Left, Right : AngleIncrementInfo_Access_Array) return Boolean renames org.allbinary.math.AngleIncrementInfo_Package_References."=";
   subtype AngleIncrementInfo_Access_Array_Access is org.allbinary.math.AngleIncrementInfo_Package_References.AngleIncrementInfo_Access_Array_Access;
   function "=" (Left, Right : AngleIncrementInfo_Access_Array_Access) return Boolean renames org.allbinary.math.AngleIncrementInfo_Package_References."=";
   subtype AngleIncrementInfo_Access_Array_Access_Array is org.allbinary.math.AngleIncrementInfo_Package_References.AngleIncrementInfo_Access_Array_Access_Array;
   function "=" (Left, Right : AngleIncrementInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.math.AngleIncrementInfo_Package_References."=";
   subtype AngleIncrementInfo_Access_Array_Access_Array_Access is org.allbinary.math.AngleIncrementInfo_Package_References.AngleIncrementInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AngleIncrementInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.math.AngleIncrementInfo_Package_References."=";

   type AngleIncrementInfo is new Java_Object with record
      angleIncrement : Short_Integer;
      DOWN_FRAME : Integer;
      UP_FRAME : Integer;
      LEFT_FRAME : Integer;
      RIGHT_FRAME : Integer;
      frameUtil : FrameUtil_Access;
   end record;
   INCREMENT : Unbounded_String;

   procedure Initialize (This : in out AngleIncrementInfo'Class; angleIncrement : Short_Integer);
   function Create (angleIncrement : Short_Integer) return AngleIncrementInfo_Access;
   function getFrameAngle (This : in out AngleIncrementInfo; frame : Integer) return Integer;
   procedure getFrameAngle (This : in out AngleIncrementInfo; frame : Integer);
   function getAngleIncrement (This : in out AngleIncrementInfo) return Short_Integer;
   function toString (This : in out AngleIncrementInfo) return Unbounded_String;
   function getClosestGeneralDirection (This : in out AngleIncrementInfo; angle : Short_Integer) return Integer;
   procedure getClosestGeneralDirection (This : in out AngleIncrementInfo; angle : Short_Integer);

end org.allbinary.math.AngleIncrementInfo_Package;


