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

package org.allbinary.logic.system.os.SystemProperties_Package is

   package JsType_Package renames Standard.jsinterop.annotations.JsType_Package;

   type SystemProperties is tagged;
   type SystemProperties_Access is access all SystemProperties'Class;
   type SystemProperties_Access_Array is array (Natural range <>) of SystemProperties_Access;
   type SystemProperties_Access_Array_Access is access all SystemProperties_Access_Array;

   type SystemProperties is new Java_Object with record
      OS_NAME : Unbounded_String;
      OS_ARCH : Unbounded_String;
      OS_VERSION : Unbounded_String;
   end record;
   instance : SystemProperties_Access;

   procedure Initialize (This : in out SystemProperties'Class);
   function Create return SystemProperties_Access;
   function getInstance return SystemProperties_Access;
   procedure getInstance;
   function getName (This : in out SystemProperties) return Unbounded_String;
   procedure getName (This : in out SystemProperties);
   function getArch (This : in out SystemProperties) return Unbounded_String;
   procedure getArch (This : in out SystemProperties);
   function getVersion (This : in out SystemProperties) return Unbounded_String;
   procedure getVersion (This : in out SystemProperties);
   function getUserHomePath (This : in out SystemProperties) return Unbounded_String;
   procedure getUserHomePath (This : in out SystemProperties);

end org.allbinary.logic.system.os.SystemProperties_Package;


