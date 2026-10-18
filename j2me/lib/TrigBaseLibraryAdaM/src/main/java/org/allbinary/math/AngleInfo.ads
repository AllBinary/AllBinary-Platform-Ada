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
with org.allbinary.math.AngleIncrementInfo_Package; use org.allbinary.math.AngleIncrementInfo_Package;
with org.allbinary.math.FrameUtil_Package; use org.allbinary.math.FrameUtil_Package;

package org.allbinary.math.AngleInfo_Package is


   type AngleInfo is tagged;
   type AngleInfo_Access is access all AngleInfo'Class;
   type AngleInfo_Access_Array is array (Natural range <>) of AngleInfo_Access;
   type AngleInfo_Access_Array_Access is access all AngleInfo_Access_Array;
   type AngleInfo_Access_Array_Access_Array is array (Natural range <>) of AngleInfo_Access_Array_Access;
   type AngleInfo_Access_Array_Access_Array_Access is access all AngleInfo_Access_Array_Access_Array;

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


