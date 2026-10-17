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
--  with java.io.ByteArrayInputStream_Package; use java.io.ByteArrayInputStream_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.FileUtil_Package; use org.allbinary.logic.io.file.FileUtil_Package;
with org.allbinary.logic.io.file.directory.Directory_Package; use org.allbinary.logic.io.file.directory.Directory_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.apache.commons.fileupload.FileItem_Package; use org.apache.commons.fileupload.FileItem_Package;

package org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoImageFileUtil_Package is

   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package FileUtil_Package renames Standard.org.allbinary.logic.io.file.FileUtil_Package;
   package Directory_Package renames Standard.org.allbinary.logic.io.file.directory.Directory_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package FileItem_Package renames Standard.org.apache.commons.fileupload.FileItem_Package;

   type LogoImageFileUtil is tagged;
   type LogoImageFileUtil_Access is access all LogoImageFileUtil'Class;
   type LogoImageFileUtil_Access_Array is array (Natural range <>) of LogoImageFileUtil_Access;
   type LogoImageFileUtil_Access_Array_Access is access all LogoImageFileUtil_Access_Array;

   type LogoImageFileUtil is new Java_Object with record
      directory : Directory_Access;
      fileName : Unbounded_String;
      imageFileAbPath : AbPath_Access;
   end record;

   procedure Initialize (This : in out LogoImageFileUtil'Class; imageAbPath_Param : access AbPath'Class; imageFile : Unbounded_String);
   function Create (imageAbPath_Param : access AbPath'Class; imageFile : Unbounded_String) return LogoImageFileUtil_Access;
   procedure saveFiles (This : in out LogoImageFileUtil; fileItem_Param : access FileItem'Class);

end org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoImageFileUtil_Package;


