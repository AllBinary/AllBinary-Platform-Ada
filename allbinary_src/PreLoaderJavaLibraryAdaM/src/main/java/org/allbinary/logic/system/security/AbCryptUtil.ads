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

limited with org.allbinary.logic.system.security.AbCryptUtil_Package;
package org.allbinary.logic.system.security.AbCryptUtil_Package_References is
   type AbCryptUtil_Access is access all org.allbinary.logic.system.security.AbCryptUtil_Package.AbCryptUtil'Class;
   type AbCryptUtil_Access_Array is array (Natural range <>) of AbCryptUtil_Access;
   type AbCryptUtil_Access_Array_Access is access all AbCryptUtil_Access_Array;
   type AbCryptUtil_Access_Array_Access_Array is array (Natural range <>) of AbCryptUtil_Access_Array_Access;
   type AbCryptUtil_Access_Array_Access_Array_Access is access all AbCryptUtil_Access_Array_Access_Array;
end org.allbinary.logic.system.security.AbCryptUtil_Package_References;

with org.allbinary.logic.system.security.AbCryptUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.io.InputStream_Package; use java.io.InputStream_Package;
limited with org.allbinary.logic.io.StreamUtil_Package;
with org.allbinary.logic.io.StreamUtil_Package_References;

package org.allbinary.logic.system.security.AbCryptUtil_Package is

   package InputStream_Package renames Standard.java.io.InputStream_Package;
   package StreamUtil_Package renames Standard.org.allbinary.logic.io.StreamUtil_Package;
   package Reference_Types is
   subtype StreamUtil_Access is org.allbinary.logic.io.StreamUtil_Package_References.StreamUtil_Access;
   use type StreamUtil_Access;
   subtype StreamUtil_Access_Array is org.allbinary.logic.io.StreamUtil_Package_References.StreamUtil_Access_Array;
   use type StreamUtil_Access_Array;
   subtype StreamUtil_Access_Array_Access is org.allbinary.logic.io.StreamUtil_Package_References.StreamUtil_Access_Array_Access;
   use type StreamUtil_Access_Array_Access;
   subtype StreamUtil_Access_Array_Access_Array is org.allbinary.logic.io.StreamUtil_Package_References.StreamUtil_Access_Array_Access_Array;
   use type StreamUtil_Access_Array_Access_Array;
   subtype StreamUtil_Access_Array_Access_Array_Access is org.allbinary.logic.io.StreamUtil_Package_References.StreamUtil_Access_Array_Access_Array_Access;
   use type StreamUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AbCryptUtil_Access is org.allbinary.logic.system.security.AbCryptUtil_Package_References.AbCryptUtil_Access;
   function "=" (Left, Right : AbCryptUtil_Access) return Boolean renames org.allbinary.logic.system.security.AbCryptUtil_Package_References."=";
   subtype AbCryptUtil_Access_Array is org.allbinary.logic.system.security.AbCryptUtil_Package_References.AbCryptUtil_Access_Array;
   function "=" (Left, Right : AbCryptUtil_Access_Array) return Boolean renames org.allbinary.logic.system.security.AbCryptUtil_Package_References."=";
   subtype AbCryptUtil_Access_Array_Access is org.allbinary.logic.system.security.AbCryptUtil_Package_References.AbCryptUtil_Access_Array_Access;
   function "=" (Left, Right : AbCryptUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.AbCryptUtil_Package_References."=";
   subtype AbCryptUtil_Access_Array_Access_Array is org.allbinary.logic.system.security.AbCryptUtil_Package_References.AbCryptUtil_Access_Array_Access_Array;
   function "=" (Left, Right : AbCryptUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.AbCryptUtil_Package_References."=";
   subtype AbCryptUtil_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.AbCryptUtil_Package_References.AbCryptUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbCryptUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.AbCryptUtil_Package_References."=";

   type AbCryptUtil is new Java_Object with record
      streamUtil : StreamUtil_Access;
   end record;
   instance : AbCryptUtil_Access;

   procedure Initialize (This : in out AbCryptUtil'Class);
   function Create return AbCryptUtil_Access;
   function getInstance return AbCryptUtil_Access;
   function decrypt (This : in out AbCryptUtil; inputStream_Param : access InputStream_Package.InputStream'Class; key : Unbounded_String) return Short_Short_Integer_Array_Access;
   procedure decrypt (This : in out AbCryptUtil; inputStream_Param : access InputStream_Package.InputStream'Class; key : Unbounded_String);

end org.allbinary.logic.system.security.AbCryptUtil_Package;


