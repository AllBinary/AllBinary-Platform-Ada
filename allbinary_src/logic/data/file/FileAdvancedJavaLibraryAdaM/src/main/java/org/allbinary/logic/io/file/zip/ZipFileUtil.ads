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
--  with java.util.zip.ZipEntry_Package; use java.util.zip.ZipEntry_Package;
--  with java.util.zip.ZipInputStream_Package; use java.util.zip.ZipInputStream_Package;
--  with java.util.zip.ZipOutputStream_Package; use java.util.zip.ZipOutputStream_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.io.AbDataOutputStream_Package; use org.allbinary.logic.io.AbDataOutputStream_Package;
with org.allbinary.logic.io.AbFileInputStream_Package; use org.allbinary.logic.io.AbFileInputStream_Package;
with org.allbinary.logic.io.AbFileOutputStream_Package; use org.allbinary.logic.io.AbFileOutputStream_Package;
with org.allbinary.logic.io.DataOutputStreamFactory_Package; use org.allbinary.logic.io.DataOutputStreamFactory_Package;
with org.allbinary.logic.io.StreamUtil_Package; use org.allbinary.logic.io.StreamUtil_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.FileUtil_Package; use org.allbinary.logic.io.file.FileUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.logic.io.file.zip.ZipFileUtil_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbDataOutputStream_Package renames Standard.org.allbinary.logic.io.AbDataOutputStream_Package;
   package AbFileInputStream_Package renames Standard.org.allbinary.logic.io.AbFileInputStream_Package;
   package AbFileOutputStream_Package renames Standard.org.allbinary.logic.io.AbFileOutputStream_Package;
   package DataOutputStreamFactory_Package renames Standard.org.allbinary.logic.io.DataOutputStreamFactory_Package;
   package StreamUtil_Package renames Standard.org.allbinary.logic.io.StreamUtil_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package FileUtil_Package renames Standard.org.allbinary.logic.io.file.FileUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type ZipFileUtil is tagged;
   type ZipFileUtil_Access is access all ZipFileUtil'Class;
   type ZipFileUtil_Access_Array is array (Natural range <>) of ZipFileUtil_Access;
   type ZipFileUtil_Access_Array_Access is access all ZipFileUtil_Access_Array;

   type ZipFileUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   end record;
   instance : ZipFileUtil_Access;

   procedure Initialize (This : in out ZipFileUtil'Class);
   function Create return ZipFileUtil_Access;
   function getInstance return ZipFileUtil_Access;
   procedure create (This : in out ZipFileUtil; outFilename : Unbounded_String; fileBasicArrayList : BasicArrayList_Access);
   procedure unzip (This : in out ZipFileUtil; path : Unbounded_String; zipFile : AbFile_Access; fileName : Unbounded_String);

end org.allbinary.logic.io.file.zip.ZipFileUtil_Package;


