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

package org.allbinary.math.Angle_Package is

   package JsType_Package renames Standard.jsinterop.annotations.JsType_Package;
   package JsMethod_Package renames Standard.jsinterop.annotations.JsMethod_Package;
   package JsConstructor_Package renames Standard.jsinterop.annotations.JsConstructor_Package;

   type Angle is tagged;
   type Angle_Access is access all Angle'Class;
   type Angle_Access_Array is array (Natural range <>) of Angle_Access;
   type Angle_Access_Array_Access is access all Angle_Access_Array;

   type Angle is new Java_Object with record
      value : Short_Integer;
   end record;

   procedure Initialize (This : in out Angle'Class; angle : Short_Integer);
   function Create (angle : Short_Integer) return Angle_Access;
   function getValue (This : in out Angle) return Short_Integer;

end org.allbinary.math.Angle_Package;


