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

limited with org.allbinary.logic.io.StreamUtil_Package;
package org.allbinary.logic.io.StreamUtil_Package_References is
   type StreamUtil_Access is access all org.allbinary.logic.io.StreamUtil_Package.StreamUtil'Class;
   type StreamUtil_Access_Array is array (Natural range <>) of StreamUtil_Access;
   type StreamUtil_Access_Array_Access is access all StreamUtil_Access_Array;
   type StreamUtil_Access_Array_Access_Array is array (Natural range <>) of StreamUtil_Access_Array_Access;
   type StreamUtil_Access_Array_Access_Array_Access is access all StreamUtil_Access_Array_Access_Array;
end org.allbinary.logic.io.StreamUtil_Package_References;

with org.allbinary.logic.io.StreamUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.io.ByteArrayOutputStream_Package; use java.io.ByteArrayOutputStream_Package;
with java.io.Closeable_Package; use java.io.Closeable_Package;
with java.io.InputStream_Package; use java.io.InputStream_Package;
with java.io.OutputStream_Package; use java.io.OutputStream_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;

package org.allbinary.logic.io.StreamUtil_Package is

   package ByteArrayOutputStream_Package renames Standard.java.io.ByteArrayOutputStream_Package;
   package Closeable_Package renames Standard.java.io.Closeable_Package;
   package InputStream_Package renames Standard.java.io.InputStream_Package;
   package OutputStream_Package renames Standard.java.io.OutputStream_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype StreamUtil_Access is org.allbinary.logic.io.StreamUtil_Package_References.StreamUtil_Access;
   function "=" (Left, Right : StreamUtil_Access) return Boolean renames org.allbinary.logic.io.StreamUtil_Package_References."=";
   subtype StreamUtil_Access_Array is org.allbinary.logic.io.StreamUtil_Package_References.StreamUtil_Access_Array;
   function "=" (Left, Right : StreamUtil_Access_Array) return Boolean renames org.allbinary.logic.io.StreamUtil_Package_References."=";
   subtype StreamUtil_Access_Array_Access is org.allbinary.logic.io.StreamUtil_Package_References.StreamUtil_Access_Array_Access;
   function "=" (Left, Right : StreamUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.io.StreamUtil_Package_References."=";
   subtype StreamUtil_Access_Array_Access_Array is org.allbinary.logic.io.StreamUtil_Package_References.StreamUtil_Access_Array_Access_Array;
   function "=" (Left, Right : StreamUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.StreamUtil_Package_References."=";
   subtype StreamUtil_Access_Array_Access_Array_Access is org.allbinary.logic.io.StreamUtil_Package_References.StreamUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StreamUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.StreamUtil_Package_References."=";

   type StreamUtil is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : StreamUtil_Access;

   procedure Initialize (This : in out StreamUtil'Class);
   function Create return StreamUtil_Access;
   function getInstance return StreamUtil_Access;
   function get (This : in out StreamUtil; inputStream_Param : access InputStream_Package.InputStream'Class; outputStream_Param : access OutputStream_Package.OutputStream'Class; buffer : Short_Short_Integer_Array_Access) return OutputStream_Access;
   procedure get (This : in out StreamUtil; inputStream_Param : access InputStream_Package.InputStream'Class; outputStream_Param : access OutputStream_Package.OutputStream'Class; buffer : Short_Short_Integer_Array_Access);
   function getByteArray (This : in out StreamUtil; inputStream_Param : access InputStream_Package.InputStream'Class; outputStream2_Param : access ByteArrayOutputStream_Package.ByteArrayOutputStream'Class; byteArray : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access;
   procedure getByteArray (This : in out StreamUtil; inputStream_Param : access InputStream_Package.InputStream'Class; outputStream2_Param : access ByteArrayOutputStream_Package.ByteArrayOutputStream'Class; byteArray : Short_Short_Integer_Array_Access);
   function close (This : in out StreamUtil; closeable_Param : access Closeable_Package.Closeable'Class) return Boolean;
   procedure close (This : in out StreamUtil; closeable_Param : access Closeable_Package.Closeable'Class);

end org.allbinary.logic.io.StreamUtil_Package;


