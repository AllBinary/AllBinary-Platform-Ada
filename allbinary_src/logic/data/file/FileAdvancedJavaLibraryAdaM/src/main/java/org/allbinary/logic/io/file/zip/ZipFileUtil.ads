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

limited with org.allbinary.logic.io.file.zip.ZipFileUtil_Package;
package org.allbinary.logic.io.file.zip.ZipFileUtil_Package_References is
   type ZipFileUtil_Access is access all org.allbinary.logic.io.file.zip.ZipFileUtil_Package.ZipFileUtil'Class;
   type ZipFileUtil_Access_Array is array (Natural range <>) of ZipFileUtil_Access;
   type ZipFileUtil_Access_Array_Access is access all ZipFileUtil_Access_Array;
   type ZipFileUtil_Access_Array_Access_Array is array (Natural range <>) of ZipFileUtil_Access_Array_Access;
   type ZipFileUtil_Access_Array_Access_Array_Access is access all ZipFileUtil_Access_Array_Access_Array;
end org.allbinary.logic.io.file.zip.ZipFileUtil_Package_References;

with org.allbinary.logic.io.file.zip.ZipFileUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.util.zip.ZipEntry_Package; use java.util.zip.ZipEntry_Package;
--  with java.util.zip.ZipInputStream_Package; use java.util.zip.ZipInputStream_Package;
--  with java.util.zip.ZipOutputStream_Package; use java.util.zip.ZipOutputStream_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFile_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.logic.io.file.zip.ZipFileUtil_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
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


   subtype ZipFileUtil_Access is org.allbinary.logic.io.file.zip.ZipFileUtil_Package_References.ZipFileUtil_Access;
   function "=" (Left, Right : ZipFileUtil_Access) return Boolean renames org.allbinary.logic.io.file.zip.ZipFileUtil_Package_References."=";
   subtype ZipFileUtil_Access_Array is org.allbinary.logic.io.file.zip.ZipFileUtil_Package_References.ZipFileUtil_Access_Array;
   function "=" (Left, Right : ZipFileUtil_Access_Array) return Boolean renames org.allbinary.logic.io.file.zip.ZipFileUtil_Package_References."=";
   subtype ZipFileUtil_Access_Array_Access is org.allbinary.logic.io.file.zip.ZipFileUtil_Package_References.ZipFileUtil_Access_Array_Access;
   function "=" (Left, Right : ZipFileUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.zip.ZipFileUtil_Package_References."=";
   subtype ZipFileUtil_Access_Array_Access_Array is org.allbinary.logic.io.file.zip.ZipFileUtil_Package_References.ZipFileUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ZipFileUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.file.zip.ZipFileUtil_Package_References."=";
   subtype ZipFileUtil_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.zip.ZipFileUtil_Package_References.ZipFileUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ZipFileUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.zip.ZipFileUtil_Package_References."=";

   type ZipFileUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   end record;
   instance : ZipFileUtil_Access;

   procedure Initialize (This : in out ZipFileUtil'Class);
   function Create return ZipFileUtil_Access;
   function getInstance return ZipFileUtil_Access;
   procedure create (This : in out ZipFileUtil; outFilename : Unbounded_String; fileBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure unzip (This : in out ZipFileUtil; path : Unbounded_String; zipFile_Param : access AbFile_Package.AbFile'Class; fileName : Unbounded_String);

end org.allbinary.logic.io.file.zip.ZipFileUtil_Package;


