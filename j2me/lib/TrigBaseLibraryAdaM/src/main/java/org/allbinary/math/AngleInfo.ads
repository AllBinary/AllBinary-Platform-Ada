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

limited with org.allbinary.math.AngleInfo_Package;
package org.allbinary.math.AngleInfo_Package_References is
   type AngleInfo_Access is access all org.allbinary.math.AngleInfo_Package.AngleInfo'Class;
   type AngleInfo_Access_Array is array (Natural range <>) of AngleInfo_Access;
   type AngleInfo_Access_Array_Access is access all AngleInfo_Access_Array;
   type AngleInfo_Access_Array_Access_Array is array (Natural range <>) of AngleInfo_Access_Array_Access;
   type AngleInfo_Access_Array_Access_Array_Access is access all AngleInfo_Access_Array_Access_Array;
end org.allbinary.math.AngleInfo_Package_References;

with org.allbinary.math.AngleInfo_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.math.AngleIncrementInfo_Package;
with org.allbinary.math.AngleIncrementInfo_Package_References;
limited with org.allbinary.math.FrameUtil_Package;
with org.allbinary.math.FrameUtil_Package_References;

package org.allbinary.math.AngleInfo_Package is

   package Reference_Types is
   subtype AngleIncrementInfo_Access is org.allbinary.math.AngleIncrementInfo_Package_References.AngleIncrementInfo_Access;
   use type AngleIncrementInfo_Access;
   subtype AngleIncrementInfo_Access_Array is org.allbinary.math.AngleIncrementInfo_Package_References.AngleIncrementInfo_Access_Array;
   use type AngleIncrementInfo_Access_Array;
   subtype AngleIncrementInfo_Access_Array_Access is org.allbinary.math.AngleIncrementInfo_Package_References.AngleIncrementInfo_Access_Array_Access;
   use type AngleIncrementInfo_Access_Array_Access;
   subtype AngleIncrementInfo_Access_Array_Access_Array is org.allbinary.math.AngleIncrementInfo_Package_References.AngleIncrementInfo_Access_Array_Access_Array;
   use type AngleIncrementInfo_Access_Array_Access_Array;
   subtype AngleIncrementInfo_Access_Array_Access_Array_Access is org.allbinary.math.AngleIncrementInfo_Package_References.AngleIncrementInfo_Access_Array_Access_Array_Access;
   use type AngleIncrementInfo_Access_Array_Access_Array_Access;
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


   subtype AngleInfo_Access is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access;
   function "=" (Left, Right : AngleInfo_Access) return Boolean renames org.allbinary.math.AngleInfo_Package_References."=";
   subtype AngleInfo_Access_Array is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array;
   function "=" (Left, Right : AngleInfo_Access_Array) return Boolean renames org.allbinary.math.AngleInfo_Package_References."=";
   subtype AngleInfo_Access_Array_Access is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array_Access;
   function "=" (Left, Right : AngleInfo_Access_Array_Access) return Boolean renames org.allbinary.math.AngleInfo_Package_References."=";
   subtype AngleInfo_Access_Array_Access_Array is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array_Access_Array;
   function "=" (Left, Right : AngleInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.math.AngleInfo_Package_References."=";
   subtype AngleInfo_Access_Array_Access_Array_Access is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AngleInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.math.AngleInfo_Package_References."=";

   type AngleInfo is new Java_Object with record
      angleIncrementInfo : AngleIncrementInfo_Access;
      angle_Case : Short_Integer;
      frameUtil : FrameUtil_Access;
   end record;
   ANGLE : Unbounded_String;

   procedure Initialize (This : in out AngleInfo'Class; angleIncrementInfo_Param : access AngleIncrementInfo_Package.AngleIncrementInfo'Class);
   function Create (angleIncrementInfo_Param : access AngleIncrementInfo_Package.AngleIncrementInfo'Class) return AngleInfo_Access;
   function getInstance (angleIncrement : Short_Integer) return AngleInfo_Access;
   procedure getInstance (angleIncrement : Short_Integer);
   procedure adjustAngle (This : in out AngleInfo; frame : Integer);
   function getAngle (This : in out AngleInfo) return Short_Integer;
   procedure setAngle (This : in out AngleInfo; angle : Short_Integer);
   function getAngleIncrementInfo (This : in out AngleInfo) return AngleIncrementInfo_Access;
   function toString (This : in out AngleInfo) return Unbounded_String;

end org.allbinary.math.AngleInfo_Package;


