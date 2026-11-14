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
limited with org.allbinary.logic.communication.http.file.upload.AbFileUpload_Package;
package org.allbinary.logic.communication.http.file.upload.AbFileUpload_Package_References is
   type AbFileUpload_Access is access all org.allbinary.logic.communication.http.file.upload.AbFileUpload_Package.AbFileUpload'Class;
   type AbFileUpload_Access_Array is array (Natural range <>) of AbFileUpload_Access;
   type AbFileUpload_Access_Array_Access is access all AbFileUpload_Access_Array;
   type AbFileUpload_Access_Array_Access_Array is array (Natural range <>) of AbFileUpload_Access_Array_Access;
   type AbFileUpload_Access_Array_Access_Array_Access is access all AbFileUpload_Access_Array_Access_Array;
   type AbFileUpload_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AbFileUpload_Access_Array_Access;
   end record;
   function Java_Box (Value : AbFileUpload_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AbFileUpload_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AbFileUpload_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AbFileUpload_Access_Array_Access is (if Value /= null and then Value.all in AbFileUpload_Access_Array_Object'Class then AbFileUpload_Access_Array_Object'Class (Value.all).Value else null);
   type AbFileUpload_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AbFileUpload_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AbFileUpload_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AbFileUpload_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AbFileUpload_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AbFileUpload_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AbFileUpload_Access_Array_Access_Array_Object'Class then AbFileUpload_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.http.file.upload.AbFileUpload_Package_References;

with org.allbinary.logic.communication.http.file.upload.AbFileUpload_Package_References;
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
limited with org.apache.commons.fileupload.FileItemFactory_Package;
with org.apache.commons.fileupload.FileItemFactory_Package_References;
limited with org.apache.commons.fileupload.FileItemIterator_Package;
with org.apache.commons.fileupload.FileItemIterator_Package_References;
with org.apache.commons.fileupload.FileUpload_Package; use org.apache.commons.fileupload.FileUpload_Package;

package org.allbinary.logic.communication.http.file.upload.AbFileUpload_Package is

   package FileItemFactory_Package renames Standard.org.apache.commons.fileupload.FileItemFactory_Package;
   package FileItemIterator_Package renames Standard.org.apache.commons.fileupload.FileItemIterator_Package;
   package FileUpload_Package renames Standard.org.apache.commons.fileupload.FileUpload_Package;
   package Reference_Types is
   subtype FileItemFactory_Access is org.apache.commons.fileupload.FileItemFactory_Package_References.FileItemFactory_Access;
   use type FileItemFactory_Access;
   subtype FileItemFactory_Access_Array is org.apache.commons.fileupload.FileItemFactory_Package_References.FileItemFactory_Access_Array;
   use type FileItemFactory_Access_Array;
   subtype FileItemFactory_Access_Array_Access is org.apache.commons.fileupload.FileItemFactory_Package_References.FileItemFactory_Access_Array_Access;
   use type FileItemFactory_Access_Array_Access;
   subtype FileItemFactory_Access_Array_Access_Array is org.apache.commons.fileupload.FileItemFactory_Package_References.FileItemFactory_Access_Array_Access_Array;
   use type FileItemFactory_Access_Array_Access_Array;
   subtype FileItemFactory_Access_Array_Access_Array_Access is org.apache.commons.fileupload.FileItemFactory_Package_References.FileItemFactory_Access_Array_Access_Array_Access;
   use type FileItemFactory_Access_Array_Access_Array_Access;
   subtype FileItemIterator_Access is org.apache.commons.fileupload.FileItemIterator_Package_References.FileItemIterator_Access;
   use type FileItemIterator_Access;
   subtype FileItemIterator_Access_Array is org.apache.commons.fileupload.FileItemIterator_Package_References.FileItemIterator_Access_Array;
   use type FileItemIterator_Access_Array;
   subtype FileItemIterator_Access_Array_Access is org.apache.commons.fileupload.FileItemIterator_Package_References.FileItemIterator_Access_Array_Access;
   use type FileItemIterator_Access_Array_Access;
   subtype FileItemIterator_Access_Array_Access_Array is org.apache.commons.fileupload.FileItemIterator_Package_References.FileItemIterator_Access_Array_Access_Array;
   use type FileItemIterator_Access_Array_Access_Array;
   subtype FileItemIterator_Access_Array_Access_Array_Access is org.apache.commons.fileupload.FileItemIterator_Package_References.FileItemIterator_Access_Array_Access_Array_Access;
   use type FileItemIterator_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AbFileUpload_Access is org.allbinary.logic.communication.http.file.upload.AbFileUpload_Package_References.AbFileUpload_Access;
   function "=" (Left, Right : AbFileUpload_Access) return Boolean renames org.allbinary.logic.communication.http.file.upload.AbFileUpload_Package_References."=";
   subtype AbFileUpload_Access_Array is org.allbinary.logic.communication.http.file.upload.AbFileUpload_Package_References.AbFileUpload_Access_Array;
   function "=" (Left, Right : AbFileUpload_Access_Array) return Boolean renames org.allbinary.logic.communication.http.file.upload.AbFileUpload_Package_References."=";
   subtype AbFileUpload_Access_Array_Access is org.allbinary.logic.communication.http.file.upload.AbFileUpload_Package_References.AbFileUpload_Access_Array_Access;
   function "=" (Left, Right : AbFileUpload_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.file.upload.AbFileUpload_Package_References."=";
   function Java_Box (Value : AbFileUpload_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.http.file.upload.AbFileUpload_Package_References.Java_Box;
   function Java_Unbox_AbFileUpload_Access_Array (Value : access Java_Object'Class) return AbFileUpload_Access_Array_Access renames org.allbinary.logic.communication.http.file.upload.AbFileUpload_Package_References.Java_Unbox_AbFileUpload_Access_Array;
   subtype AbFileUpload_Access_Array_Access_Array is org.allbinary.logic.communication.http.file.upload.AbFileUpload_Package_References.AbFileUpload_Access_Array_Access_Array;
   function "=" (Left, Right : AbFileUpload_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.http.file.upload.AbFileUpload_Package_References."=";
   subtype AbFileUpload_Access_Array_Access_Array_Access is org.allbinary.logic.communication.http.file.upload.AbFileUpload_Package_References.AbFileUpload_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbFileUpload_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.file.upload.AbFileUpload_Package_References."=";
   function Java_Box (Value : AbFileUpload_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.http.file.upload.AbFileUpload_Package_References.Java_Box;
   function Java_Unbox_AbFileUpload_Access_Array_Access_Array (Value : access Java_Object'Class) return AbFileUpload_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.http.file.upload.AbFileUpload_Package_References.Java_Unbox_AbFileUpload_Access_Array_Access_Array;

   type AbFileUpload is new FileUpload_Package.FileUpload with null record;

   procedure Initialize (This : in out AbFileUpload'Class; fileItemFactory_Param : access FileItemFactory_Package.FileItemFactory'Class);
   function Create (fileItemFactory_Param : access FileItemFactory_Package.FileItemFactory'Class) return AbFileUpload_Access;
   function getItemIterator (This : in out AbFileUpload; request_Param : access HttpServletRequest_Package.HttpServletRequest'Class) return FileItemIterator_Access;
   procedure getItemIterator (This : in out AbFileUpload; request_Param : access HttpServletRequest_Package.HttpServletRequest'Class);

end org.allbinary.logic.communication.http.file.upload.AbFileUpload_Package;


