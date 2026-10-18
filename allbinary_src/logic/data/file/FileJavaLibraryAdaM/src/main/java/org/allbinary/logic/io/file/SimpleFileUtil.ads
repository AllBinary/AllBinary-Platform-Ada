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
with java.io.ByteArrayOutputStream_Package; use java.io.ByteArrayOutputStream_Package;
--  with java.io.IOException_Package; use java.io.IOException_Package;
with java.io.InputStream_Package; use java.io.InputStream_Package;
with java.io.OutputStream_Package; use java.io.OutputStream_Package;
--  with java.io.Reader_Package; use java.io.Reader_Package;
--  with java.io.Writer_Package; use java.io.Writer_Package;
--  with java.nio.CharBuffer_Package; use java.nio.CharBuffer_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.io.StreamUtil_Package; use org.allbinary.logic.io.StreamUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package org.allbinary.logic.io.file.SimpleFileUtil_Package is

   package ByteArrayOutputStream_Package renames Standard.java.io.ByteArrayOutputStream_Package;
   package InputStream_Package renames Standard.java.io.InputStream_Package;
   package OutputStream_Package renames Standard.java.io.OutputStream_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StreamUtil_Package renames Standard.org.allbinary.logic.io.StreamUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type SimpleFileUtil is tagged;
   type SimpleFileUtil_Access is access all SimpleFileUtil'Class;
   type SimpleFileUtil_Access_Array is array (Natural range <>) of SimpleFileUtil_Access;
   type SimpleFileUtil_Access_Array_Access is access all SimpleFileUtil_Access_Array;

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


