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
--  with java.io.File_Package; use java.io.File_Package;
--  with java.io.IOException_Package; use java.io.IOException_Package;
--  with java.io.InputStream_Package; use java.io.InputStream_Package;
--  with java.io.OutputStream_Package; use java.io.OutputStream_Package;
--  with java.io.UnsupportedEncodingException_Package; use java.io.UnsupportedEncodingException_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.apache.commons.fileupload.FileItem_Package; use org.apache.commons.fileupload.FileItem_Package;
with org.apache.commons.fileupload.FileItemHeaders_Package; use org.apache.commons.fileupload.FileItemHeaders_Package;
with org.apache.commons.fileupload.FileItemUtil_Package; use org.apache.commons.fileupload.FileItemUtil_Package;

package org.allbinary.logic.communication.http.file.upload.AbFileItem_Package is

   package ForcedLogUtil_Package renames org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package AbFile_Package renames org.allbinary.logic.io.file.AbFile_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package StringValidationUtil_Package renames org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;
   package FileItem_Package renames org.apache.commons.fileupload.FileItem_Package;
   package FileItemHeaders_Package renames org.apache.commons.fileupload.FileItemHeaders_Package;
   package FileItemUtil_Package renames org.apache.commons.fileupload.FileItemUtil_Package;

   type AbFileItem is tagged;
   type AbFileItem_Access is access all AbFileItem'Class;
   type AbFileItem_Access_Array is array (Natural range <>) of AbFileItem_Access;
   type AbFileItem_Access_Array_Access is access all AbFileItem_Access_Array;

   type AbFileItem is new FileItem with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      name : Unbounded_String;
      fieldName : Unbounded_String;
      byteArray : Short_Short_Integer_Array_Access;
   end record;

   procedure Initialize (This : in out AbFileItem'Class; name : Unbounded_String; fieldName : Unbounded_String; byteArray : Short_Short_Integer_Array_Access);
   function Create (name : Unbounded_String; fieldName : Unbounded_String; byteArray : Short_Short_Integer_Array_Access) return AbFileItem_Access;
   function getInputStream (This : in out AbFileItem) return InputStream_Access;
   procedure getInputStream (This : in out AbFileItem);
   function getContentType (This : in out AbFileItem) return Unbounded_String;
   procedure getContentType (This : in out AbFileItem);
   function getName (This : in out AbFileItem) return Unbounded_String;
   procedure getName (This : in out AbFileItem);
   function isInMemory (This : in out AbFileItem) return Boolean;
   procedure isInMemory (This : in out AbFileItem);
   function getSize (This : in out AbFileItem) return Long_Long_Integer;
   procedure getSize (This : in out AbFileItem);
   function get (This : in out AbFileItem) return Short_Short_Integer_Array_Access;
   procedure get (This : in out AbFileItem);
   function getString (This : in out AbFileItem; encoding : Unbounded_String) return Unbounded_String;
   procedure getString (This : in out AbFileItem; encoding : Unbounded_String);
   function getString (This : in out AbFileItem) return Unbounded_String;
   procedure getString (This : in out AbFileItem);
   procedure write (This : in out AbFileItem; file : File_Access);
   procedure write (This : in out AbFileItem; file : AbFile_Access);
   procedure delete (This : in out AbFileItem);
   function getFieldName (This : in out AbFileItem) return Unbounded_String;
   procedure getFieldName (This : in out AbFileItem);
   procedure setFieldName (This : in out AbFileItem; name : Unbounded_String);
   function isFormField (This : in out AbFileItem) return Boolean;
   procedure isFormField (This : in out AbFileItem);
   procedure setFormField (This : in out AbFileItem; state : Boolean);
   function getOutputStream (This : in out AbFileItem) return OutputStream_Access;
   procedure getOutputStream (This : in out AbFileItem);
   function getHeaders (This : in out AbFileItem) return FileItemHeaders_Access;
   procedure getHeaders (This : in out AbFileItem);
   procedure setHeaders (This : in out AbFileItem; fih : FileItemHeaders_Access);

end org.allbinary.logic.communication.http.file.upload.AbFileItem_Package;


