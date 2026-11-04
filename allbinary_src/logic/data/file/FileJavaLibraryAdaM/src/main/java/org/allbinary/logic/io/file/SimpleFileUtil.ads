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

limited with org.allbinary.logic.io.file.SimpleFileUtil_Package;
package org.allbinary.logic.io.file.SimpleFileUtil_Package_References is
   type SimpleFileUtil_Access is access all org.allbinary.logic.io.file.SimpleFileUtil_Package.SimpleFileUtil'Class;
   type SimpleFileUtil_Access_Array is array (Natural range <>) of SimpleFileUtil_Access;
   type SimpleFileUtil_Access_Array_Access is access all SimpleFileUtil_Access_Array;
   type SimpleFileUtil_Access_Array_Access_Array is array (Natural range <>) of SimpleFileUtil_Access_Array_Access;
   type SimpleFileUtil_Access_Array_Access_Array_Access is access all SimpleFileUtil_Access_Array_Access_Array;
end org.allbinary.logic.io.file.SimpleFileUtil_Package_References;

with org.allbinary.logic.io.file.SimpleFileUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.IOException_Package; use java.io.IOException_Package;
with java.io.InputStream_Package; use java.io.InputStream_Package;
with java.io.OutputStream_Package; use java.io.OutputStream_Package;
--  with java.io.Reader_Package; use java.io.Reader_Package;
--  with java.io.Writer_Package; use java.io.Writer_Package;
--  with java.nio.CharBuffer_Package; use java.nio.CharBuffer_Package;
limited with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.NullUtil_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.io.StreamUtil_Package;
with org.allbinary.logic.io.StreamUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.logic.io.file.SimpleFileUtil_Package is

   package InputStream_Package renames Standard.java.io.InputStream_Package;
   package OutputStream_Package renames Standard.java.io.OutputStream_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StreamUtil_Package renames Standard.org.allbinary.logic.io.StreamUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype NullUtil_Access is org.allbinary.logic.NullUtil_Package_References.NullUtil_Access;
   use type NullUtil_Access;
   subtype NullUtil_Access_Array is org.allbinary.logic.NullUtil_Package_References.NullUtil_Access_Array;
   use type NullUtil_Access_Array;
   subtype NullUtil_Access_Array_Access is org.allbinary.logic.NullUtil_Package_References.NullUtil_Access_Array_Access;
   use type NullUtil_Access_Array_Access;
   subtype NullUtil_Access_Array_Access_Array is org.allbinary.logic.NullUtil_Package_References.NullUtil_Access_Array_Access_Array;
   use type NullUtil_Access_Array_Access_Array;
   subtype NullUtil_Access_Array_Access_Array_Access is org.allbinary.logic.NullUtil_Package_References.NullUtil_Access_Array_Access_Array_Access;
   use type NullUtil_Access_Array_Access_Array_Access;
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
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype SimpleFileUtil_Access is org.allbinary.logic.io.file.SimpleFileUtil_Package_References.SimpleFileUtil_Access;
   function "=" (Left, Right : SimpleFileUtil_Access) return Boolean renames org.allbinary.logic.io.file.SimpleFileUtil_Package_References."=";
   subtype SimpleFileUtil_Access_Array is org.allbinary.logic.io.file.SimpleFileUtil_Package_References.SimpleFileUtil_Access_Array;
   function "=" (Left, Right : SimpleFileUtil_Access_Array) return Boolean renames org.allbinary.logic.io.file.SimpleFileUtil_Package_References."=";
   subtype SimpleFileUtil_Access_Array_Access is org.allbinary.logic.io.file.SimpleFileUtil_Package_References.SimpleFileUtil_Access_Array_Access;
   function "=" (Left, Right : SimpleFileUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.SimpleFileUtil_Package_References."=";
   subtype SimpleFileUtil_Access_Array_Access_Array is org.allbinary.logic.io.file.SimpleFileUtil_Package_References.SimpleFileUtil_Access_Array_Access_Array;
   function "=" (Left, Right : SimpleFileUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.file.SimpleFileUtil_Package_References."=";
   subtype SimpleFileUtil_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.SimpleFileUtil_Package_References.SimpleFileUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SimpleFileUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.SimpleFileUtil_Package_References."=";

   type SimpleFileUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      NULL_WRITER : Writer_Access;
      NULL_READER : Reader_Access;
      commonStrings : CommonStrings_Access;
      nullUtil : NullUtil_Access;
      streamUtil : StreamUtil_Access;
   end record;
   instance : SimpleFileUtil_Access;

   procedure Initialize (This : in out SimpleFileUtil'Class);
   function Create return SimpleFileUtil_Access;
   function getInstance return SimpleFileUtil_Access;
   function nullOutputStream return OutputStream_Access;
   function nullWriter return Writer_Access;
   function nullReader return Reader_Access;
   function loadFileAsList (This : in out SimpleFileUtil; inputStream_Param : access InputStream_Package.InputStream'Class; max : Integer; byteArray1 : Short_Short_Integer_Array_Access) return BasicArrayList_Access;
   procedure loadFileAsList (This : in out SimpleFileUtil; inputStream_Param : access InputStream_Package.InputStream'Class; max : Integer; byteArray1 : Short_Short_Integer_Array_Access);
   function loadFileAsListReturnLine (This : in out SimpleFileUtil; inputStream_Param : access InputStream_Package.InputStream'Class; max : Integer; byteArray1 : Short_Short_Integer_Array_Access; includeReturnLine : Integer) return BasicArrayList_Access;
   procedure loadFileAsListReturnLine (This : in out SimpleFileUtil; inputStream_Param : access InputStream_Package.InputStream'Class; max : Integer; byteArray1 : Short_Short_Integer_Array_Access; includeReturnLine : Integer);
   function createStringFromArrayOfStrings (This : in out SimpleFileUtil; stringArray : Unbounded_String_Array_Access) return Unbounded_String;
   procedure createStringFromArrayOfStrings (This : in out SimpleFileUtil; stringArray : Unbounded_String_Array_Access);

end org.allbinary.logic.io.file.SimpleFileUtil_Package;


