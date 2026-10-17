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
with jsinterop.annotations.JsMethod_Package; use jsinterop.annotations.JsMethod_Package;
with jsinterop.annotations.JsConstructor_Package; use jsinterop.annotations.JsConstructor_Package;
with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;

package org.allbinary.math.FrameUtil_Package is

   package JsType_Package renames Standard.jsinterop.annotations.JsType_Package;
   package JsMethod_Package renames Standard.jsinterop.annotations.JsMethod_Package;
   package JsConstructor_Package renames Standard.jsinterop.annotations.JsConstructor_Package;

   type FrameUtil is tagged;
   type FrameUtil_Access is access all FrameUtil'Class;
   type FrameUtil_Access_Array is array (Natural range <>) of FrameUtil_Access;
   type FrameUtil_Access_Array_Access is access all FrameUtil_Access_Array;

   type FrameUtil is new Java_Object with null record;
   instance : FrameUtil_Access;

   procedure Initialize (This : in out FrameUtil'Class);
   function Create return FrameUtil_Access;
   function getInstance return FrameUtil_Access;
   function getFrameForAngle (This : in out FrameUtil; angle : Short_Integer; angleIncrement : Integer) return Integer;
   procedure getFrameForAngle (This : in out FrameUtil; angle : Short_Integer; angleIncrement : Integer);
   function getFrameAngle (This : in out FrameUtil; frame : Integer; angleIncrement : Integer) return Integer;
   procedure getFrameAngle (This : in out FrameUtil; frame : Integer; angleIncrement : Integer);
   function adjustAngleToFrameAngle (This : in out FrameUtil; currentAngle_Param : Integer) return Integer;
   procedure adjustAngleToFrameAngle (This : in out FrameUtil; currentAngle_Param : Integer);

end org.allbinary.math.FrameUtil_Package;


