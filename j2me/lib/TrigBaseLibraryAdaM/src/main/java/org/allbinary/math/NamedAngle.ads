-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
with jsinterop.annotations.JsProperty_Package; use jsinterop.annotations.JsProperty_Package;
with jsinterop.annotations.JsConstructor_Package; use jsinterop.annotations.JsConstructor_Package;
with org.allbinary.math.Angle_Package; use org.allbinary.math.Angle_Package;

package org.allbinary.math.NamedAngle_Package is

   package JsType_Package renames Standard.jsinterop.annotations.JsType_Package;
   package JsProperty_Package renames Standard.jsinterop.annotations.JsProperty_Package;
   package JsConstructor_Package renames Standard.jsinterop.annotations.JsConstructor_Package;

   type NamedAngle is tagged;
   type NamedAngle_Access is access all NamedAngle'Class;
   type NamedAngle_Access_Array is array (Natural range <>) of NamedAngle_Access;
   type NamedAngle_Access_Array_Access is access all NamedAngle_Access_Array;

   type NamedAngle is new Angle with record
      name : Unbounded_String;
   end record;

   procedure Initialize (This : in out NamedAngle'Class; angle : Short_Integer; name : Unbounded_String);
   function Create (angle : Short_Integer; name : Unbounded_String) return NamedAngle_Access;

end org.allbinary.math.NamedAngle_Package;


