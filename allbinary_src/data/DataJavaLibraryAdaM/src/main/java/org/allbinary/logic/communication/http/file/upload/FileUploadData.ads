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

limited with org.allbinary.logic.communication.http.file.upload.FileUploadData_Package;
package org.allbinary.logic.communication.http.file.upload.FileUploadData_Package_References is
   type FileUploadData_Access is access all org.allbinary.logic.communication.http.file.upload.FileUploadData_Package.FileUploadData'Class;
   type FileUploadData_Access_Array is array (Natural range <>) of FileUploadData_Access;
   type FileUploadData_Access_Array_Access is access all FileUploadData_Access_Array;
   type FileUploadData_Access_Array_Access_Array is array (Natural range <>) of FileUploadData_Access_Array_Access;
   type FileUploadData_Access_Array_Access_Array_Access is access all FileUploadData_Access_Array_Access_Array;
end org.allbinary.logic.communication.http.file.upload.FileUploadData_Package_References;

with org.allbinary.logic.communication.http.file.upload.FileUploadData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.communication.http.file.upload.FileUploadData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype FileUploadData_Access is org.allbinary.logic.communication.http.file.upload.FileUploadData_Package_References.FileUploadData_Access;
   function "=" (Left, Right : FileUploadData_Access) return Boolean renames org.allbinary.logic.communication.http.file.upload.FileUploadData_Package_References."=";
   subtype FileUploadData_Access_Array is org.allbinary.logic.communication.http.file.upload.FileUploadData_Package_References.FileUploadData_Access_Array;
   function "=" (Left, Right : FileUploadData_Access_Array) return Boolean renames org.allbinary.logic.communication.http.file.upload.FileUploadData_Package_References."=";
   subtype FileUploadData_Access_Array_Access is org.allbinary.logic.communication.http.file.upload.FileUploadData_Package_References.FileUploadData_Access_Array_Access;
   function "=" (Left, Right : FileUploadData_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.file.upload.FileUploadData_Package_References."=";
   subtype FileUploadData_Access_Array_Access_Array is org.allbinary.logic.communication.http.file.upload.FileUploadData_Package_References.FileUploadData_Access_Array_Access_Array;
   function "=" (Left, Right : FileUploadData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.http.file.upload.FileUploadData_Package_References."=";
   subtype FileUploadData_Access_Array_Access_Array_Access is org.allbinary.logic.communication.http.file.upload.FileUploadData_Package_References.FileUploadData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FileUploadData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.file.upload.FileUploadData_Package_References."=";

   type FileUploadData is new Java_Object with record
      FILE : Unbounded_String;
      UPLOAD_TO_FILE_PATH : Unbounded_String;
      FILE_DATA : Unbounded_String;
   end record;
   instance : FileUploadData_Access;

   procedure Initialize (This : in out FileUploadData'Class);
   function Create return FileUploadData_Access;
   function getInstance return FileUploadData_Access;

end org.allbinary.logic.communication.http.file.upload.FileUploadData_Package;


