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
limited with org.allbinary.logic.io.CloudStreamUtil_Package;
package org.allbinary.logic.io.CloudStreamUtil_Package_References is
   type CloudStreamUtil_Access is access all org.allbinary.logic.io.CloudStreamUtil_Package.CloudStreamUtil'Class;
   type CloudStreamUtil_Access_Array is array (Natural range <>) of CloudStreamUtil_Access;
   type CloudStreamUtil_Access_Array_Access is access all CloudStreamUtil_Access_Array;
   type CloudStreamUtil_Access_Array_Access_Array is array (Natural range <>) of CloudStreamUtil_Access_Array_Access;
   type CloudStreamUtil_Access_Array_Access_Array_Access is access all CloudStreamUtil_Access_Array_Access_Array;
   type CloudStreamUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CloudStreamUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : CloudStreamUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CloudStreamUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CloudStreamUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CloudStreamUtil_Access_Array_Access is (if Value /= null and then Value.all in CloudStreamUtil_Access_Array_Object'Class then CloudStreamUtil_Access_Array_Object'Class (Value.all).Value else null);
   type CloudStreamUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CloudStreamUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CloudStreamUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CloudStreamUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CloudStreamUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CloudStreamUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CloudStreamUtil_Access_Array_Access_Array_Object'Class then CloudStreamUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.io.CloudStreamUtil_Package_References;

with org.allbinary.logic.io.CloudStreamUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.io.InputStream_Package; use java.io.InputStream_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFile_Package_References;

package org.allbinary.logic.io.CloudStreamUtil_Package is

   package InputStream_Package renames Standard.java.io.InputStream_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
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


   subtype CloudStreamUtil_Access is org.allbinary.logic.io.CloudStreamUtil_Package_References.CloudStreamUtil_Access;
   function "=" (Left, Right : CloudStreamUtil_Access) return Boolean renames org.allbinary.logic.io.CloudStreamUtil_Package_References."=";
   subtype CloudStreamUtil_Access_Array is org.allbinary.logic.io.CloudStreamUtil_Package_References.CloudStreamUtil_Access_Array;
   function "=" (Left, Right : CloudStreamUtil_Access_Array) return Boolean renames org.allbinary.logic.io.CloudStreamUtil_Package_References."=";
   subtype CloudStreamUtil_Access_Array_Access is org.allbinary.logic.io.CloudStreamUtil_Package_References.CloudStreamUtil_Access_Array_Access;
   function "=" (Left, Right : CloudStreamUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.io.CloudStreamUtil_Package_References."=";
   function Java_Box (Value : CloudStreamUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.CloudStreamUtil_Package_References.Java_Box;
   function Java_Unbox_CloudStreamUtil_Access_Array (Value : access Java_Object'Class) return CloudStreamUtil_Access_Array_Access renames org.allbinary.logic.io.CloudStreamUtil_Package_References.Java_Unbox_CloudStreamUtil_Access_Array;
   subtype CloudStreamUtil_Access_Array_Access_Array is org.allbinary.logic.io.CloudStreamUtil_Package_References.CloudStreamUtil_Access_Array_Access_Array;
   function "=" (Left, Right : CloudStreamUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.CloudStreamUtil_Package_References."=";
   subtype CloudStreamUtil_Access_Array_Access_Array_Access is org.allbinary.logic.io.CloudStreamUtil_Package_References.CloudStreamUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CloudStreamUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.CloudStreamUtil_Package_References."=";
   function Java_Box (Value : CloudStreamUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.CloudStreamUtil_Package_References.Java_Box;
   function Java_Unbox_CloudStreamUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return CloudStreamUtil_Access_Array_Access_Array_Access renames org.allbinary.logic.io.CloudStreamUtil_Package_References.Java_Unbox_CloudStreamUtil_Access_Array_Access_Array;

   type CloudStreamUtil is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : CloudStreamUtil_Access;

   procedure Initialize (This : in out CloudStreamUtil'Class);
   function Create return CloudStreamUtil_Access;
   function getInstance return CloudStreamUtil_Access;
   function getFile (This : in out CloudStreamUtil; file_Param : access AbFile_Package.AbFile'Class) return InputStream_Access;
   procedure getFile (This : in out CloudStreamUtil; file_Param : access AbFile_Package.AbFile'Class);
   function getFileAnyWhere (This : in out CloudStreamUtil; file_Param : access AbFile_Package.AbFile'Class) return InputStream_Access;
   procedure getFileAnyWhere (This : in out CloudStreamUtil; file_Param : access AbFile_Package.AbFile'Class);
   function getFileLocal (This : in out CloudStreamUtil; file_Param : access AbFile_Package.AbFile'Class) return InputStream_Access;
   procedure getFileLocal (This : in out CloudStreamUtil; file_Param : access AbFile_Package.AbFile'Class);

end org.allbinary.logic.io.CloudStreamUtil_Package;


