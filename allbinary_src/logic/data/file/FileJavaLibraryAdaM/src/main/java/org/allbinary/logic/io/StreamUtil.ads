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
with java.io.ByteArrayOutputStream_Package; use java.io.ByteArrayOutputStream_Package;
--  with java.io.Closeable_Package; use java.io.Closeable_Package;
--  with java.io.InputStream_Package; use java.io.InputStream_Package;
--  with java.io.OutputStream_Package; use java.io.OutputStream_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.logic.io.StreamUtil_Package is

   package ByteArrayOutputStream_Package renames Standard.java.io.ByteArrayOutputStream_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type StreamUtil is tagged;
   type StreamUtil_Access is access all StreamUtil'Class;
   type StreamUtil_Access_Array is array (Natural range <>) of StreamUtil_Access;
   type StreamUtil_Access_Array_Access is access all StreamUtil_Access_Array;

   type StreamUtil is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : StreamUtil_Access;

   procedure Initialize (This : in out StreamUtil'Class);
   function Create return StreamUtil_Access;
   function getInstance return StreamUtil_Access;
   procedure getInstance;
   function get (This : in out StreamUtil; inputStream : InputStream_Access; outputStream : OutputStream_Access; buffer : Short_Short_Integer_Array_Access) return OutputStream_Access;
   procedure get (This : in out StreamUtil; inputStream : InputStream_Access; outputStream : OutputStream_Access; buffer : Short_Short_Integer_Array_Access);
   function getByteArray (This : in out StreamUtil; inputStream : InputStream_Access; outputStream2 : ByteArrayOutputStream_Access; byteArray : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access;
   procedure getByteArray (This : in out StreamUtil; inputStream : InputStream_Access; outputStream2 : ByteArrayOutputStream_Access; byteArray : Short_Short_Integer_Array_Access);
   function close (This : in out StreamUtil; closeable : Closeable_Access) return Boolean;
   procedure close (This : in out StreamUtil; closeable : Closeable_Access);

end org.allbinary.logic.io.StreamUtil_Package;


