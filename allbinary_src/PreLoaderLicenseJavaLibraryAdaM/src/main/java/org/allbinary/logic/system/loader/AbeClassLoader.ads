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

limited with org.allbinary.logic.system.loader.AbeClassLoader_Package;
package org.allbinary.logic.system.loader.AbeClassLoader_Package_References is
   type AbeClassLoader_Access is access all org.allbinary.logic.system.loader.AbeClassLoader_Package.AbeClassLoader'Class;
   type AbeClassLoader_Access_Array is array (Natural range <>) of AbeClassLoader_Access;
   type AbeClassLoader_Access_Array_Access is access all AbeClassLoader_Access_Array;
   type AbeClassLoader_Access_Array_Access_Array is array (Natural range <>) of AbeClassLoader_Access_Array_Access;
   type AbeClassLoader_Access_Array_Access_Array_Access is access all AbeClassLoader_Access_Array_Access_Array;
end org.allbinary.logic.system.loader.AbeClassLoader_Package_References;

with org.allbinary.logic.system.loader.AbeClassLoader_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.FileInputStream_Package; use java.io.FileInputStream_Package;
--  with java.io.IOException_Package; use java.io.IOException_Package;
with java.util.Map_Package; use java.util.Map_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.system.security.AbCryptUtil_Package;
with org.allbinary.logic.system.security.AbCryptUtil_Package_References;
with org.allbinary.logic.system.loader.ClassLoader_Package; use org.allbinary.logic.system.loader.ClassLoader_Package;

package org.allbinary.logic.system.loader.AbeClassLoader_Package is

   package Map_Package renames Standard.java.util.Map_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbCryptUtil_Package renames Standard.org.allbinary.logic.system.security.AbCryptUtil_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype AbCryptUtil_Access is org.allbinary.logic.system.security.AbCryptUtil_Package_References.AbCryptUtil_Access;
   use type AbCryptUtil_Access;
   subtype AbCryptUtil_Access_Array is org.allbinary.logic.system.security.AbCryptUtil_Package_References.AbCryptUtil_Access_Array;
   use type AbCryptUtil_Access_Array;
   subtype AbCryptUtil_Access_Array_Access is org.allbinary.logic.system.security.AbCryptUtil_Package_References.AbCryptUtil_Access_Array_Access;
   use type AbCryptUtil_Access_Array_Access;
   subtype AbCryptUtil_Access_Array_Access_Array is org.allbinary.logic.system.security.AbCryptUtil_Package_References.AbCryptUtil_Access_Array_Access_Array;
   use type AbCryptUtil_Access_Array_Access_Array;
   subtype AbCryptUtil_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.AbCryptUtil_Package_References.AbCryptUtil_Access_Array_Access_Array_Access;
   use type AbCryptUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AbeClassLoader_Access is org.allbinary.logic.system.loader.AbeClassLoader_Package_References.AbeClassLoader_Access;
   function "=" (Left, Right : AbeClassLoader_Access) return Boolean renames org.allbinary.logic.system.loader.AbeClassLoader_Package_References."=";
   subtype AbeClassLoader_Access_Array is org.allbinary.logic.system.loader.AbeClassLoader_Package_References.AbeClassLoader_Access_Array;
   function "=" (Left, Right : AbeClassLoader_Access_Array) return Boolean renames org.allbinary.logic.system.loader.AbeClassLoader_Package_References."=";
   subtype AbeClassLoader_Access_Array_Access is org.allbinary.logic.system.loader.AbeClassLoader_Package_References.AbeClassLoader_Access_Array_Access;
   function "=" (Left, Right : AbeClassLoader_Access_Array_Access) return Boolean renames org.allbinary.logic.system.loader.AbeClassLoader_Package_References."=";
   subtype AbeClassLoader_Access_Array_Access_Array is org.allbinary.logic.system.loader.AbeClassLoader_Package_References.AbeClassLoader_Access_Array_Access_Array;
   function "=" (Left, Right : AbeClassLoader_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.loader.AbeClassLoader_Package_References."=";
   subtype AbeClassLoader_Access_Array_Access_Array_Access is org.allbinary.logic.system.loader.AbeClassLoader_Package_References.AbeClassLoader_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbeClassLoader_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.loader.AbeClassLoader_Package_References."=";

   type AbeClassLoader is new ClassLoader with record
      logUtil : LogUtil_Access;
      abCryptUtil : AbCryptUtil_Access;
      LOAD_CLASS : Unbounded_String;
      ENCRYPTED_EXTENSION : Unbounded_String;
      key : Unbounded_String;
   end record;
   classes : Map_Access;
   PATH : Unbounded_String;

   procedure Initialize (This : in out AbeClassLoader'Class; parent_Param : access ClassLoader_Package.ClassLoader'Class; key : Unbounded_String);
   function Create (parent_Param : access ClassLoader_Package.ClassLoader'Class; key : Unbounded_String) return AbeClassLoader_Access;
   function findLoadedClass1 (This : in out AbeClassLoader; name : Unbounded_String) return Ada.Tags.Tag;
   procedure findLoadedClass1 (This : in out AbeClassLoader; name : Unbounded_String);
   function loadClass (This : in out AbeClassLoader; name : Unbounded_String) return Ada.Tags.Tag;
   procedure loadClass (This : in out AbeClassLoader; name : Unbounded_String);
   function loadClass (This : in out AbeClassLoader; name : Unbounded_String; resolve : Boolean) return Ada.Tags.Tag;
   procedure loadClass (This : in out AbeClassLoader; name : Unbounded_String; resolve : Boolean);
   function loadClassBytesFromFile (This : in out AbeClassLoader; name : Unbounded_String) return Short_Short_Integer_Array_Access;
   procedure loadClassBytesFromFile (This : in out AbeClassLoader; name : Unbounded_String);
   function oldLoadClass (This : in out AbeClassLoader; name : Unbounded_String; resolve : Boolean) return Ada.Tags.Tag;
   procedure oldLoadClass (This : in out AbeClassLoader; name : Unbounded_String; resolve : Boolean);

end org.allbinary.logic.system.loader.AbeClassLoader_Package;


