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
limited with org.allbinary.logic.communication.http.file.upload.media.UploadMediaSingleton_Package;
package org.allbinary.logic.communication.http.file.upload.media.UploadMediaSingleton_Package_References is
   type UploadMediaSingleton_Access is access all org.allbinary.logic.communication.http.file.upload.media.UploadMediaSingleton_Package.UploadMediaSingleton'Class;
   type UploadMediaSingleton_Access_Array is array (Natural range <>) of UploadMediaSingleton_Access;
   type UploadMediaSingleton_Access_Array_Access is access all UploadMediaSingleton_Access_Array;
   type UploadMediaSingleton_Access_Array_Access_Array is array (Natural range <>) of UploadMediaSingleton_Access_Array_Access;
   type UploadMediaSingleton_Access_Array_Access_Array_Access is access all UploadMediaSingleton_Access_Array_Access_Array;
   type UploadMediaSingleton_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UploadMediaSingleton_Access_Array_Access;
   end record;
   function Java_Box (Value : UploadMediaSingleton_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UploadMediaSingleton_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UploadMediaSingleton_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UploadMediaSingleton_Access_Array_Access is (if Value /= null and then Value.all in UploadMediaSingleton_Access_Array_Object'Class then UploadMediaSingleton_Access_Array_Object'Class (Value.all).Value else null);
   type UploadMediaSingleton_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UploadMediaSingleton_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : UploadMediaSingleton_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UploadMediaSingleton_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UploadMediaSingleton_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UploadMediaSingleton_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in UploadMediaSingleton_Access_Array_Access_Array_Object'Class then UploadMediaSingleton_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.http.file.upload.media.UploadMediaSingleton_Package_References;

with org.allbinary.logic.communication.http.file.upload.media.UploadMediaSingleton_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;

package org.allbinary.logic.communication.http.file.upload.media.UploadMediaSingleton_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype UploadMediaSingleton_Access is org.allbinary.logic.communication.http.file.upload.media.UploadMediaSingleton_Package_References.UploadMediaSingleton_Access;
   function "=" (Left, Right : UploadMediaSingleton_Access) return Boolean renames org.allbinary.logic.communication.http.file.upload.media.UploadMediaSingleton_Package_References."=";
   subtype UploadMediaSingleton_Access_Array is org.allbinary.logic.communication.http.file.upload.media.UploadMediaSingleton_Package_References.UploadMediaSingleton_Access_Array;
   function "=" (Left, Right : UploadMediaSingleton_Access_Array) return Boolean renames org.allbinary.logic.communication.http.file.upload.media.UploadMediaSingleton_Package_References."=";
   subtype UploadMediaSingleton_Access_Array_Access is org.allbinary.logic.communication.http.file.upload.media.UploadMediaSingleton_Package_References.UploadMediaSingleton_Access_Array_Access;
   function "=" (Left, Right : UploadMediaSingleton_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.file.upload.media.UploadMediaSingleton_Package_References."=";
   function Java_Box (Value : UploadMediaSingleton_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.http.file.upload.media.UploadMediaSingleton_Package_References.Java_Box;
   function Java_Unbox_UploadMediaSingleton_Access_Array (Value : access Java_Object'Class) return UploadMediaSingleton_Access_Array_Access renames org.allbinary.logic.communication.http.file.upload.media.UploadMediaSingleton_Package_References.Java_Unbox_UploadMediaSingleton_Access_Array;
   subtype UploadMediaSingleton_Access_Array_Access_Array is org.allbinary.logic.communication.http.file.upload.media.UploadMediaSingleton_Package_References.UploadMediaSingleton_Access_Array_Access_Array;
   function "=" (Left, Right : UploadMediaSingleton_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.http.file.upload.media.UploadMediaSingleton_Package_References."=";
   subtype UploadMediaSingleton_Access_Array_Access_Array_Access is org.allbinary.logic.communication.http.file.upload.media.UploadMediaSingleton_Package_References.UploadMediaSingleton_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UploadMediaSingleton_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.file.upload.media.UploadMediaSingleton_Package_References."=";
   function Java_Box (Value : UploadMediaSingleton_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.http.file.upload.media.UploadMediaSingleton_Package_References.Java_Box;
   function Java_Unbox_UploadMediaSingleton_Access_Array_Access_Array (Value : access Java_Object'Class) return UploadMediaSingleton_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.http.file.upload.media.UploadMediaSingleton_Package_References.Java_Unbox_UploadMediaSingleton_Access_Array_Access_Array;

   type UploadMediaSingleton is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      readerFileTypesHashMap : HashMap_Access;
      writerFileTypesHashMap : HashMap_Access;
   end record;
   uploadMedia : UploadMediaSingleton_Access;

   procedure Initialize (This : in out UploadMediaSingleton'Class);
   function Create return UploadMediaSingleton_Access;
   function getInstance return UploadMediaSingleton_Access;
   function isReaderSupported (This : in out UploadMediaSingleton; mediaFileType : Unbounded_String) return Boolean;
   procedure isReaderSupported (This : in out UploadMediaSingleton; mediaFileType : Unbounded_String);
   function isWriterSupported (This : in out UploadMediaSingleton; mediaFileType : Unbounded_String) return Boolean;
   procedure isWriterSupported (This : in out UploadMediaSingleton; mediaFileType : Unbounded_String);
   function isSupported (This : in out UploadMediaSingleton; mediaFileType : Unbounded_String) return Boolean;
   procedure isSupported (This : in out UploadMediaSingleton; mediaFileType : Unbounded_String);
   function isMedia (This : in out UploadMediaSingleton; mediaFileType : Unbounded_String; aMediaType : Unbounded_String) return Boolean;
   procedure isMedia (This : in out UploadMediaSingleton; mediaFileType : Unbounded_String; aMediaType : Unbounded_String);
   function isReaderMedia (This : in out UploadMediaSingleton; mediaFileType : Unbounded_String; aMediaType : Unbounded_String) return Boolean;
   procedure isReaderMedia (This : in out UploadMediaSingleton; mediaFileType : Unbounded_String; aMediaType : Unbounded_String);
   function isWriterMedia (This : in out UploadMediaSingleton; mediaFileType : Unbounded_String; aMediaType : Unbounded_String) return Boolean;
   procedure isWriterMedia (This : in out UploadMediaSingleton; mediaFileType : Unbounded_String; aMediaType : Unbounded_String);
   function isMedia (This : in out UploadMediaSingleton; mediaFileType : Unbounded_String; aMediaType : Unbounded_String; hashMap_Param : access HashMap_Package.HashMap'Class) return Boolean;
   procedure isMedia (This : in out UploadMediaSingleton; mediaFileType : Unbounded_String; aMediaType : Unbounded_String; hashMap_Param : access HashMap_Package.HashMap'Class);

end org.allbinary.logic.communication.http.file.upload.media.UploadMediaSingleton_Package;


