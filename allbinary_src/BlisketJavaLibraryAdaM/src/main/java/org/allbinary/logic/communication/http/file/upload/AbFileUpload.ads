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
--  with java.io.IOException_Package; use java.io.IOException_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
with org.apache.commons.fileupload.FileItemFactory_Package; use org.apache.commons.fileupload.FileItemFactory_Package;
with org.apache.commons.fileupload.FileItemIterator_Package; use org.apache.commons.fileupload.FileItemIterator_Package;
with org.apache.commons.fileupload.FileUpload_Package; use org.apache.commons.fileupload.FileUpload_Package;

package org.allbinary.logic.communication.http.file.upload.AbFileUpload_Package is

   package FileItemFactory_Package renames Standard.org.apache.commons.fileupload.FileItemFactory_Package;
   package FileItemIterator_Package renames Standard.org.apache.commons.fileupload.FileItemIterator_Package;
   package FileUpload_Package renames Standard.org.apache.commons.fileupload.FileUpload_Package;

   type AbFileUpload is tagged;
   type AbFileUpload_Access is access all AbFileUpload'Class;
   type AbFileUpload_Access_Array is array (Natural range <>) of AbFileUpload_Access;
   type AbFileUpload_Access_Array_Access is access all AbFileUpload_Access_Array;
   type AbFileUpload_Access_Array_Access_Array is array (Natural range <>) of AbFileUpload_Access_Array_Access;
   type AbFileUpload_Access_Array_Access_Array_Access is access all AbFileUpload_Access_Array_Access_Array;

   type AbFileUpload is new FileUpload with null record;

   procedure Initialize (This : in out AbFileUpload'Class; fileItemFactory_Param : access FileItemFactory_Package.FileItemFactory'Class);
   function Create (fileItemFactory_Param : access FileItemFactory_Package.FileItemFactory'Class) return AbFileUpload_Access;
   function getItemIterator (This : in out AbFileUpload; request_Param : access HttpServletRequest_Package.HttpServletRequest'Class) return FileItemIterator_Access;
   procedure getItemIterator (This : in out AbFileUpload; request_Param : access HttpServletRequest_Package.HttpServletRequest'Class);

end org.allbinary.logic.communication.http.file.upload.AbFileUpload_Package;


