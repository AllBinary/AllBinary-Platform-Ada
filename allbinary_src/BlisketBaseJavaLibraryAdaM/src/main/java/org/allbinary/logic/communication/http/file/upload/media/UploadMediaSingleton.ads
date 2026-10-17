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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with java.util.Set_Package; use java.util.Set_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.visual.media.MediaData_Package; use org.allbinary.logic.visual.media.MediaData_Package;
with org.allbinary.logic.visual.media.MediaIOUtil_Package; use org.allbinary.logic.visual.media.MediaIOUtil_Package;
with org.allbinary.logic.visual.media.MediaTypeData_Package; use org.allbinary.logic.visual.media.MediaTypeData_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.logic.communication.http.file.upload.media.UploadMediaSingleton_Package is

   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package MediaData_Package renames Standard.org.allbinary.logic.visual.media.MediaData_Package;
   package MediaIOUtil_Package renames Standard.org.allbinary.logic.visual.media.MediaIOUtil_Package;
   package MediaTypeData_Package renames Standard.org.allbinary.logic.visual.media.MediaTypeData_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type UploadMediaSingleton is tagged;
   type UploadMediaSingleton_Access is access all UploadMediaSingleton'Class;
   type UploadMediaSingleton_Access_Array is array (Natural range <>) of UploadMediaSingleton_Access;
   type UploadMediaSingleton_Access_Array_Access is access all UploadMediaSingleton_Access_Array;

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
   procedure getInstance;
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
   function isMedia (This : in out UploadMediaSingleton; mediaFileType : Unbounded_String; aMediaType : Unbounded_String; hashMap : HashMap_Access) return Boolean;
   procedure isMedia (This : in out UploadMediaSingleton; mediaFileType : Unbounded_String; aMediaType : Unbounded_String; hashMap : HashMap_Access);

end org.allbinary.logic.communication.http.file.upload.media.UploadMediaSingleton_Package;


