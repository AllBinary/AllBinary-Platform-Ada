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

with AllBinary_Java;
limited with org.allbinary.logic.io.AbFileOutputStream_Package;
package org.allbinary.logic.io.AbFileOutputStream_Package_References is
   type AbFileOutputStream_Access is access all org.allbinary.logic.io.AbFileOutputStream_Package.AbFileOutputStream'Class;
   type AbFileOutputStream_Access_Array is array (Natural range <>) of AbFileOutputStream_Access;
   type AbFileOutputStream_Access_Array_Access is access all AbFileOutputStream_Access_Array;
   type AbFileOutputStream_Access_Array_Access_Array is array (Natural range <>) of AbFileOutputStream_Access_Array_Access;
   type AbFileOutputStream_Access_Array_Access_Array_Access is access all AbFileOutputStream_Access_Array_Access_Array;
   type AbFileOutputStream_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AbFileOutputStream_Access_Array_Access;
   end record;
   function Java_Box (Value : AbFileOutputStream_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AbFileOutputStream_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AbFileOutputStream_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AbFileOutputStream_Access_Array_Access is (if Value /= null and then Value.all in AbFileOutputStream_Access_Array_Object'Class then AbFileOutputStream_Access_Array_Object'Class (Value.all).Value else null);
   type AbFileOutputStream_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AbFileOutputStream_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AbFileOutputStream_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AbFileOutputStream_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AbFileOutputStream_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AbFileOutputStream_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AbFileOutputStream_Access_Array_Access_Array_Object'Class then AbFileOutputStream_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.io.AbFileOutputStream_Package_References;

with org.allbinary.logic.io.AbFileOutputStream_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.FileNotFoundException_Package; use java.io.FileNotFoundException_Package;
with java.io.FileOutputStream_Package; use java.io.FileOutputStream_Package;
--  with java.io.IOException_Package; use java.io.IOException_Package;
with java.io.OutputStream_Package; use java.io.OutputStream_Package;
--  with java.nio.channels.FileChannel_Package; use java.nio.channels.FileChannel_Package;
limited with org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFile_Package_References;

package org.allbinary.logic.io.AbFileOutputStream_Package is

   package FileOutputStream_Package renames Standard.java.io.FileOutputStream_Package;
   package OutputStream_Package renames Standard.java.io.OutputStream_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package Reference_Types is
   subtype AbFile_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access;
   use type AbFile_Access;
   subtype AbFile_Access_Array is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array;
   use type AbFile_Access_Array;
   subtype AbFile_Access_Array_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access;
   use type AbFile_Access_Array_Access;
   subtype AbFile_Access_Array_Access_Array is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access_Array;
   use type AbFile_Access_Array_Access_Array;
   subtype AbFile_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access_Array_Access;
   use type AbFile_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AbFileOutputStream_Access is org.allbinary.logic.io.AbFileOutputStream_Package_References.AbFileOutputStream_Access;
   function "=" (Left, Right : AbFileOutputStream_Access) return Boolean renames org.allbinary.logic.io.AbFileOutputStream_Package_References."=";
   subtype AbFileOutputStream_Access_Array is org.allbinary.logic.io.AbFileOutputStream_Package_References.AbFileOutputStream_Access_Array;
   function "=" (Left, Right : AbFileOutputStream_Access_Array) return Boolean renames org.allbinary.logic.io.AbFileOutputStream_Package_References."=";
   subtype AbFileOutputStream_Access_Array_Access is org.allbinary.logic.io.AbFileOutputStream_Package_References.AbFileOutputStream_Access_Array_Access;
   function "=" (Left, Right : AbFileOutputStream_Access_Array_Access) return Boolean renames org.allbinary.logic.io.AbFileOutputStream_Package_References."=";
   function Java_Box (Value : AbFileOutputStream_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.AbFileOutputStream_Package_References.Java_Box;
   function Java_Unbox_AbFileOutputStream_Access_Array (Value : access Java_Object'Class) return AbFileOutputStream_Access_Array_Access renames org.allbinary.logic.io.AbFileOutputStream_Package_References.Java_Unbox_AbFileOutputStream_Access_Array;
   subtype AbFileOutputStream_Access_Array_Access_Array is org.allbinary.logic.io.AbFileOutputStream_Package_References.AbFileOutputStream_Access_Array_Access_Array;
   function "=" (Left, Right : AbFileOutputStream_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.AbFileOutputStream_Package_References."=";
   subtype AbFileOutputStream_Access_Array_Access_Array_Access is org.allbinary.logic.io.AbFileOutputStream_Package_References.AbFileOutputStream_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbFileOutputStream_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.AbFileOutputStream_Package_References."=";
   function Java_Box (Value : AbFileOutputStream_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.AbFileOutputStream_Package_References.Java_Box;
   function Java_Unbox_AbFileOutputStream_Access_Array_Access_Array (Value : access Java_Object'Class) return AbFileOutputStream_Access_Array_Access_Array_Access renames org.allbinary.logic.io.AbFileOutputStream_Package_References.Java_Unbox_AbFileOutputStream_Access_Array_Access_Array;

   type AbFileOutputStream is new OutputStream with record
      fileOutputStream : FileOutputStream_Access;
   end record;

   procedure Initialize (This : in out AbFileOutputStream'Class; fileOutputStream_Param : access FileOutputStream_Package.FileOutputStream'Class);
   function Create (fileOutputStream_Param : access FileOutputStream_Package.FileOutputStream'Class) return AbFileOutputStream_Access;
   function createFromAbFile (file_Param : access AbFile_Package.AbFile'Class) return AbFileOutputStream_Access;
   procedure createFromAbFile (file_Param : access AbFile_Package.AbFile'Class);
   function createFromAbFileAppend (file_Param : access AbFile_Package.AbFile'Class; append : Boolean) return AbFileOutputStream_Access;
   procedure createFromAbFileAppend (file_Param : access AbFile_Package.AbFile'Class; append : Boolean);
   function createFromFilePath (name : Unbounded_String) return AbFileOutputStream_Access;
   procedure createFromFilePath (name : Unbounded_String);
   function createFromFilePathAppend (name : Unbounded_String; append : Boolean) return AbFileOutputStream_Access;
   procedure createFromFilePathAppend (name : Unbounded_String; append : Boolean);
   procedure close (This : in out AbFileOutputStream);
   function getChannel (This : in out AbFileOutputStream) return FileChannel_Access;
   procedure write (This : in out AbFileOutputStream; buffer : Short_Short_Integer_Array_Access);
   procedure write (This : in out AbFileOutputStream; buffer : Short_Short_Integer_Array_Access; offset : Integer; count : Integer);
   procedure write (This : in out AbFileOutputStream; b : Integer);

end org.allbinary.logic.io.AbFileOutputStream_Package;


