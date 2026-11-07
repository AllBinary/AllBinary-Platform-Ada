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

limited with org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoImageFileUtil_Package;
package org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoImageFileUtil_Package_References is
   type LogoImageFileUtil_Access is access all org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoImageFileUtil_Package.LogoImageFileUtil'Class;
   type LogoImageFileUtil_Access_Array is array (Natural range <>) of LogoImageFileUtil_Access;
   type LogoImageFileUtil_Access_Array_Access is access all LogoImageFileUtil_Access_Array;
   type LogoImageFileUtil_Access_Array_Access_Array is array (Natural range <>) of LogoImageFileUtil_Access_Array_Access;
   type LogoImageFileUtil_Access_Array_Access_Array_Access is access all LogoImageFileUtil_Access_Array_Access_Array;
end org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoImageFileUtil_Package_References;

with org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoImageFileUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.io.file.directory.Directory_Package;
with org.allbinary.logic.io.file.directory.Directory_Package_References;
limited with org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPath_Package_References;
limited with org.apache.commons.fileupload.FileItem_Package;
with org.apache.commons.fileupload.FileItem_Package_References;

package org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoImageFileUtil_Package is

   package Directory_Package renames Standard.org.allbinary.logic.io.file.directory.Directory_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package FileItem_Package renames Standard.org.apache.commons.fileupload.FileItem_Package;
   package Reference_Types is
   subtype Directory_Access is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access;
   use type Directory_Access;
   subtype Directory_Access_Array is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array;
   use type Directory_Access_Array;
   subtype Directory_Access_Array_Access is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array_Access;
   use type Directory_Access_Array_Access;
   subtype Directory_Access_Array_Access_Array is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array_Access_Array;
   use type Directory_Access_Array_Access_Array;
   subtype Directory_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array_Access_Array_Access;
   use type Directory_Access_Array_Access_Array_Access;
   subtype AbPath_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access;
   use type AbPath_Access;
   subtype AbPath_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array;
   use type AbPath_Access_Array;
   subtype AbPath_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access;
   use type AbPath_Access_Array_Access;
   subtype AbPath_Access_Array_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array;
   use type AbPath_Access_Array_Access_Array;
   subtype AbPath_Access_Array_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array_Access;
   use type AbPath_Access_Array_Access_Array_Access;
   subtype FileItem_Access is org.apache.commons.fileupload.FileItem_Package_References.FileItem_Access;
   use type FileItem_Access;
   subtype FileItem_Access_Array is org.apache.commons.fileupload.FileItem_Package_References.FileItem_Access_Array;
   use type FileItem_Access_Array;
   subtype FileItem_Access_Array_Access is org.apache.commons.fileupload.FileItem_Package_References.FileItem_Access_Array_Access;
   use type FileItem_Access_Array_Access;
   subtype FileItem_Access_Array_Access_Array is org.apache.commons.fileupload.FileItem_Package_References.FileItem_Access_Array_Access_Array;
   use type FileItem_Access_Array_Access_Array;
   subtype FileItem_Access_Array_Access_Array_Access is org.apache.commons.fileupload.FileItem_Package_References.FileItem_Access_Array_Access_Array_Access;
   use type FileItem_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype LogoImageFileUtil_Access is org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoImageFileUtil_Package_References.LogoImageFileUtil_Access;
   function "=" (Left, Right : LogoImageFileUtil_Access) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoImageFileUtil_Package_References."=";
   subtype LogoImageFileUtil_Access_Array is org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoImageFileUtil_Package_References.LogoImageFileUtil_Access_Array;
   function "=" (Left, Right : LogoImageFileUtil_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoImageFileUtil_Package_References."=";
   subtype LogoImageFileUtil_Access_Array_Access is org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoImageFileUtil_Package_References.LogoImageFileUtil_Access_Array_Access;
   function "=" (Left, Right : LogoImageFileUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoImageFileUtil_Package_References."=";
   subtype LogoImageFileUtil_Access_Array_Access_Array is org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoImageFileUtil_Package_References.LogoImageFileUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogoImageFileUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoImageFileUtil_Package_References."=";
   subtype LogoImageFileUtil_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoImageFileUtil_Package_References.LogoImageFileUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogoImageFileUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoImageFileUtil_Package_References."=";

   type LogoImageFileUtil is new Java_Object with record
      directory : Directory_Access;
      fileName : Unbounded_String;
      imageFileAbPath : AbPath_Access;
   end record;

   procedure Initialize (This : in out LogoImageFileUtil'Class; imageAbPath_Param : access AbPath_Package.AbPath'Class; imageFile : Unbounded_String);
   function Create (imageAbPath_Param : access AbPath_Package.AbPath'Class; imageFile : Unbounded_String) return LogoImageFileUtil_Access;
   procedure saveFiles (This : in out LogoImageFileUtil; fileItem_Param : access FileItem_Package.FileItem'Class);

end org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoImageFileUtil_Package;


