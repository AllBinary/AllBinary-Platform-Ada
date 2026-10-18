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


with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.visual.media.MediaData_Package; use org.allbinary.logic.visual.media.MediaData_Package;
with org.allbinary.logic.visual.media.MediaIOUtil_Package; use org.allbinary.logic.visual.media.MediaIOUtil_Package;
with org.allbinary.logic.visual.media.MediaTypeData_Package; use org.allbinary.logic.visual.media.MediaTypeData_Package;

package body org.allbinary.logic.communication.http.file.upload.media.UploadMediaSingleton_Package is

   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package MediaData_Package renames Standard.org.allbinary.logic.visual.media.MediaData_Package;
   package MediaIOUtil_Package renames Standard.org.allbinary.logic.visual.media.MediaIOUtil_Package;
   package MediaTypeData_Package renames Standard.org.allbinary.logic.visual.media.MediaTypeData_Package;
   procedure Initialize_Fields (This : in out UploadMediaSingleton'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out UploadMediaSingleton'Class) is
      hashMap : HashMap_Access;
      set : Set_Access;
      mediaDataNameArray : Java_Object_Access_Array_Access;
      size : Integer;
      mediaDataName : Unbounded_String;
      mediaData : MediaData_Access;
      index : Integer;
      mediaIOUtil : MediaIOUtil_Access;
      RESIZABLE_MEDIA : Unbounded_String;
      readerFileTypes : Unbounded_String_Array_Access;
      writerFileTypes : Unbounded_String_Array_Access;
      stringBuffer : StringMaker_Access;
   begin
      Initialize_Fields (This);
        This.readerFileTypesHashMap := StdUtil_Package.getInstance.createHashMap;
        This.writerFileTypesHashMap := StdUtil_Package.getInstance.createHashMap;
        hashMap := MediaData_Package.toHashMap;
        set := hashMap.keySet;
        mediaDataNameArray := set.toArray;
        size := mediaDataNameArray'Length;
        for index in 0 .. (size) - 1 loop
            mediaDataName := Java_Unbox (mediaDataNameArray (index));
            mediaData := MediaData_Access (hashMap.get (Java_Box (mediaDataName)));
            This.readerFileTypesHashMap.put (Java_Box (mediaData.getName), mediaData.getType);
        end loop;
        mediaIOUtil := MediaIOUtil_Package.getInstance;
        RESIZABLE_MEDIA := MediaTypeData_Package.getInstance.RESIZABLE_MEDIA;
        readerFileTypes := mediaIOUtil.getReaderFormatNames;
        for index in 0 .. (readerFileTypes'Length) - 1 loop
            This.readerFileTypesHashMap.put (readerFileTypes (index), Java_Box (RESIZABLE_MEDIA));
        end loop;
        writerFileTypes := mediaIOUtil.getWriterFormatNames;
        for index in 0 .. (writerFileTypes'Length) - 1 loop
            This.writerFileTypesHashMap.put (writerFileTypes (index), Java_Box (RESIZABLE_MEDIA));
        end loop;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.HTTPREQUEST) then
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("Supported Media Readers: "));
            stringBuffer.append (This.readerFileTypesHashMap.toString);
            stringBuffer.append (To_Unbounded_String (" Writers: "));
            stringBuffer.append (This.writerFileTypesHashMap.toString);
            This.logUtil.putF (stringBuffer.toString, UploadMediaSingleton_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        end if;
   end Initialize;

   function Create return UploadMediaSingleton_Access is
      This : constant UploadMediaSingleton_Access := new UploadMediaSingleton;
   begin
      UploadMediaSingleton_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return UploadMediaSingleton_Access is
   begin
        if (UploadMediaSingleton_Package.uploadMedia) = (null) then
            UploadMediaSingleton_Package.uploadMedia := UploadMediaSingleton_Package.Create;
        end if;
        return UploadMediaSingleton_Package.uploadMedia;
   end getInstance;

   function isReaderSupported (This : in out UploadMediaSingleton; mediaFileType : Unbounded_String) return Boolean is
   begin
        return This.readerFileTypesHashMap.containsKey (Java_Box (mediaFileType));
   end isReaderSupported;

   function isWriterSupported (This : in out UploadMediaSingleton; mediaFileType : Unbounded_String) return Boolean is
   begin
        return This.readerFileTypesHashMap.containsKey (Java_Box (mediaFileType));
   end isWriterSupported;

   function isSupported (This : in out UploadMediaSingleton; mediaFileType : Unbounded_String) return Boolean is
   begin
        return (UploadMediaSingleton'Class (This).isReaderSupported (mediaFileType)) and then (UploadMediaSingleton'Class (This).isWriterSupported (mediaFileType));
   end isSupported;

   function isMedia (This : in out UploadMediaSingleton; mediaFileType : Unbounded_String; aMediaType : Unbounded_String) return Boolean is
   begin
        return (UploadMediaSingleton'Class (This).isReaderMedia (mediaFileType, aMediaType)) and then (UploadMediaSingleton'Class (This).isWriterMedia (mediaFileType, aMediaType));
   end isMedia;

   function isReaderMedia (This : in out UploadMediaSingleton; mediaFileType : Unbounded_String; aMediaType : Unbounded_String) return Boolean is
   begin
        return UploadMediaSingleton'Class (This).isMedia (mediaFileType, aMediaType, This.readerFileTypesHashMap);
   end isReaderMedia;

   function isWriterMedia (This : in out UploadMediaSingleton; mediaFileType : Unbounded_String; aMediaType : Unbounded_String) return Boolean is
   begin
        return UploadMediaSingleton'Class (This).isMedia (mediaFileType, aMediaType, This.writerFileTypesHashMap);
   end isWriterMedia;

   function isMedia (This : in out UploadMediaSingleton; mediaFileType : Unbounded_String; aMediaType : Unbounded_String; hashMap_Param : access HashMap_Package.HashMap'Class) return Boolean is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      mediaType : Unbounded_String;
   begin
        if hashMap.containsKey (Java_Box (mediaFileType)) then
            mediaType := Java_Unbox (hashMap.get (Java_Box (mediaFileType)));
            if (Java_Compare_To (mediaType, aMediaType)) = (0) then
                return True;
            else
                return False;
            end if;
        else
            return False;
        end if;
   end isMedia;

   procedure isReaderSupported (This : in out UploadMediaSingleton; mediaFileType : Unbounded_String) is
      Java_Result : constant Boolean := UploadMediaSingleton'Class (This).isReaderSupported (mediaFileType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isReaderSupported;

   procedure isWriterSupported (This : in out UploadMediaSingleton; mediaFileType : Unbounded_String) is
      Java_Result : constant Boolean := UploadMediaSingleton'Class (This).isWriterSupported (mediaFileType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isWriterSupported;

   procedure isSupported (This : in out UploadMediaSingleton; mediaFileType : Unbounded_String) is
      Java_Result : constant Boolean := UploadMediaSingleton'Class (This).isSupported (mediaFileType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isSupported;

   procedure isMedia (This : in out UploadMediaSingleton; mediaFileType : Unbounded_String; aMediaType : Unbounded_String) is
      Java_Result : constant Boolean := UploadMediaSingleton'Class (This).isMedia (mediaFileType, aMediaType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isMedia;

   procedure isReaderMedia (This : in out UploadMediaSingleton; mediaFileType : Unbounded_String; aMediaType : Unbounded_String) is
      Java_Result : constant Boolean := UploadMediaSingleton'Class (This).isReaderMedia (mediaFileType, aMediaType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isReaderMedia;

   procedure isWriterMedia (This : in out UploadMediaSingleton; mediaFileType : Unbounded_String; aMediaType : Unbounded_String) is
      Java_Result : constant Boolean := UploadMediaSingleton'Class (This).isWriterMedia (mediaFileType, aMediaType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isWriterMedia;

   procedure isMedia (This : in out UploadMediaSingleton; mediaFileType : Unbounded_String; aMediaType : Unbounded_String; hashMap_Param : access HashMap_Package.HashMap'Class) is
      Java_Result : constant Boolean := UploadMediaSingleton'Class (This).isMedia (mediaFileType, aMediaType, hashMap_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isMedia;

begin
   null;
   uploadMedia := null;

end org.allbinary.logic.communication.http.file.upload.media.UploadMediaSingleton_Package;


