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

package org.allbinary.logic.communication.http.file_Case.upload.FileUploadData_Package is


   type FileUploadData is tagged;
   type FileUploadData_Access is access all FileUploadData'Class;
   type FileUploadData_Access_Array is array (Natural range <>) of FileUploadData_Access;
   type FileUploadData_Access_Array_Access is access all FileUploadData_Access_Array;

   type FileUploadData is new Java_Object with record
      FILE : Unbounded_String;
      UPLOAD_TO_FILE_PATH : Unbounded_String;
      FILE_DATA : Unbounded_String;
   end record;
   instance : FileUploadData_Access;

   procedure Initialize (This : in out FileUploadData'Class);
   function Create return FileUploadData_Access;
   function getInstance return FileUploadData_Access;
   procedure getInstance;

end org.allbinary.logic.communication.http.file_Case.upload.FileUploadData_Package;


