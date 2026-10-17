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
with jsinterop.annotations.JsType_Package; use jsinterop.annotations.JsType_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with jsinterop.annotations.JsMethod_Package; use jsinterop.annotations.JsMethod_Package;
with jsinterop.annotations.JsConstructor_Package; use jsinterop.annotations.JsConstructor_Package;
with org.allbinary.math.AngleIncrementInfo_Package; use org.allbinary.math.AngleIncrementInfo_Package;
with org.allbinary.math.AngleIncrementInfoFactory_Package; use org.allbinary.math.AngleIncrementInfoFactory_Package;
with org.allbinary.math.FrameUtil_Package; use org.allbinary.math.FrameUtil_Package;

package org.allbinary.math.AngleInfo_Package is

   package JsType_Package renames Standard.jsinterop.annotations.JsType_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package JsMethod_Package renames Standard.jsinterop.annotations.JsMethod_Package;
   package JsConstructor_Package renames Standard.jsinterop.annotations.JsConstructor_Package;

   type AngleInfo is tagged;
   type AngleInfo_Access is access all AngleInfo'Class;
   type AngleInfo_Access_Array is array (Natural range <>) of AngleInfo_Access;
   type AngleInfo_Access_Array_Access is access all AngleInfo_Access_Array;

   type AngleInfo is new Java_Object with record
      angleIncrementInfo : AngleIncrementInfo_Access;
      angle_Case : Short_Integer;
      frameUtil : FrameUtil_Access;
   end record;
   ANGLE : Unbounded_String;

   procedure Initialize (This : in out AngleInfo'Class; angleIncrementInfo : AngleIncrementInfo_Access);
   function Create (angleIncrementInfo : AngleIncrementInfo_Access) return AngleInfo_Access;
   function getInstance (angleIncrement : Short_Integer) return AngleInfo_Access;
   procedure getInstance (angleIncrement : Short_Integer);
   procedure adjustAngle (This : in out AngleInfo; frame : Integer);
   function getAngle (This : in out AngleInfo) return Short_Integer;
   procedure setAngle (This : in out AngleInfo; angle_Case : Short_Integer);
   function getAngleIncrementInfo (This : in out AngleInfo) return AngleIncrementInfo_Access;
   function toString (This : in out AngleInfo) return Unbounded_String;

end org.allbinary.math.AngleInfo_Package;


