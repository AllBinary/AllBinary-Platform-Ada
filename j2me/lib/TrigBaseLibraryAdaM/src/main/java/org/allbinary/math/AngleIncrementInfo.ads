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
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with jsinterop.annotations.JsProperty_Package; use jsinterop.annotations.JsProperty_Package;
with jsinterop.annotations.JsMethod_Package; use jsinterop.annotations.JsMethod_Package;
with jsinterop.annotations.JsConstructor_Package; use jsinterop.annotations.JsConstructor_Package;

package org.allbinary.math.AngleIncrementInfo_Package is

   package JsType_Package renames jsinterop.annotations.JsType_Package;
   package SmallIntegerSingletonFactory_Package renames org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package JsProperty_Package renames jsinterop.annotations.JsProperty_Package;
   package JsMethod_Package renames jsinterop.annotations.JsMethod_Package;
   package JsConstructor_Package renames jsinterop.annotations.JsConstructor_Package;

   type AngleIncrementInfo is tagged;
   type AngleIncrementInfo_Access is access all AngleIncrementInfo'Class;
   type AngleIncrementInfo_Access_Array is array (Natural range <>) of AngleIncrementInfo_Access;
   type AngleIncrementInfo_Access_Array_Access is access all AngleIncrementInfo_Access_Array;

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
   procedure getAngleIncrement (This : in out AngleIncrementInfo);
   function toString (This : in out AngleIncrementInfo) return Unbounded_String;
   procedure toString (This : in out AngleIncrementInfo);
   function getClosestGeneralDirection (This : in out AngleIncrementInfo; angle : Short_Integer) return Integer;
   procedure getClosestGeneralDirection (This : in out AngleIncrementInfo; angle : Short_Integer);

end org.allbinary.math.AngleIncrementInfo_Package;


