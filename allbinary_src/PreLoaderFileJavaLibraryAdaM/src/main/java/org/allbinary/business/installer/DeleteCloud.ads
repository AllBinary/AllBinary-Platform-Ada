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
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.communication.http.file.upload.FileUploadData_Package; use org.allbinary.logic.communication.http.file.upload.FileUploadData_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.io.AbIOSystem_Package; use org.allbinary.logic.io.AbIOSystem_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.directory.Directory_Package; use org.allbinary.logic.io.file.directory.Directory_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.business.installer.DeleteCloud_Package is

   package URLGLOBALS_Package renames org.allbinary.globals.URLGLOBALS_Package;
   package FileUploadData_Package renames org.allbinary.logic.communication.http.file.upload.FileUploadData_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package AbIOSystem_Package renames org.allbinary.logic.io.AbIOSystem_Package;
   package AbFile_Package renames org.allbinary.logic.io.file.AbFile_Package;
   package Directory_Package renames org.allbinary.logic.io.file.directory.Directory_Package;
   package AbPath_Package renames org.allbinary.logic.io.path.AbPath_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;

   type DeleteCloud is tagged;
   type DeleteCloud_Access is access all DeleteCloud'Class;
   type DeleteCloud_Access_Array is array (Natural range <>) of DeleteCloud_Access;
   type DeleteCloud_Access_Array_Access is access all DeleteCloud_Access_Array;

   type DeleteCloud is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out DeleteCloud'Class);
   function Create return DeleteCloud_Access;
   function delete (This : in out DeleteCloud; prePath : Unbounded_String; current : Integer; total : Integer) return Boolean;
   procedure delete (This : in out DeleteCloud; prePath : Unbounded_String; current : Integer; total : Integer);

end org.allbinary.business.installer.DeleteCloud_Package;


