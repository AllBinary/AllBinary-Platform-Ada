-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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


with java.io.ByteArrayOutputStream_Package; use java.io.ByteArrayOutputStream_Package;
with java.io.InputStream_Package; use java.io.InputStream_Package;
with java.io.OutputStream_Package; use java.io.OutputStream_Package;
with java.io.Reader_Package; use java.io.Reader_Package;
with java.io.Writer_Package; use java.io.Writer_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.NullUtil_Package_References;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.io.NullOutputStream_Package; use org.allbinary.logic.io.NullOutputStream_Package;
with org.allbinary.logic.io.NullReader_Package; use org.allbinary.logic.io.NullReader_Package;
with org.allbinary.logic.io.NullWriter_Package; use org.allbinary.logic.io.NullWriter_Package;
with org.allbinary.logic.io.StreamUtil_Package; use org.allbinary.logic.io.StreamUtil_Package;
with org.allbinary.logic.io.StreamUtil_Package_References;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayListS_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.logic.io.file.SimpleFileUtil_Package is

   package ByteArrayOutputStream_Package renames Standard.java.io.ByteArrayOutputStream_Package;
   package NullOutputStream_Package renames Standard.org.allbinary.logic.io.NullOutputStream_Package;
   package NullReader_Package renames Standard.org.allbinary.logic.io.NullReader_Package;
   package NullWriter_Package renames Standard.org.allbinary.logic.io.NullWriter_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   subtype NullUtil_Access is org.allbinary.logic.NullUtil_Package_References.NullUtil_Access;
   function "=" (Left, Right : NullUtil_Access) return Boolean renames org.allbinary.logic.NullUtil_Package_References."=";
   subtype NullUtil_Access_Array is org.allbinary.logic.NullUtil_Package_References.NullUtil_Access_Array;
   function "=" (Left, Right : NullUtil_Access_Array) return Boolean renames org.allbinary.logic.NullUtil_Package_References."=";
   subtype NullUtil_Access_Array_Access is org.allbinary.logic.NullUtil_Package_References.NullUtil_Access_Array_Access;
   function "=" (Left, Right : NullUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.NullUtil_Package_References."=";
   subtype NullUtil_Access_Array_Access_Array is org.allbinary.logic.NullUtil_Package_References.NullUtil_Access_Array_Access_Array;
   function "=" (Left, Right : NullUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.NullUtil_Package_References."=";
   subtype NullUtil_Access_Array_Access_Array_Access is org.allbinary.logic.NullUtil_Package_References.NullUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.NullUtil_Package_References."=";
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype StreamUtil_Access is org.allbinary.logic.io.StreamUtil_Package_References.StreamUtil_Access;
   function "=" (Left, Right : StreamUtil_Access) return Boolean renames org.allbinary.logic.io.StreamUtil_Package_References."=";
   subtype StreamUtil_Access_Array is org.allbinary.logic.io.StreamUtil_Package_References.StreamUtil_Access_Array;
   function "=" (Left, Right : StreamUtil_Access_Array) return Boolean renames org.allbinary.logic.io.StreamUtil_Package_References."=";
   subtype StreamUtil_Access_Array_Access is org.allbinary.logic.io.StreamUtil_Package_References.StreamUtil_Access_Array_Access;
   function "=" (Left, Right : StreamUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.io.StreamUtil_Package_References."=";
   subtype StreamUtil_Access_Array_Access_Array is org.allbinary.logic.io.StreamUtil_Package_References.StreamUtil_Access_Array_Access_Array;
   function "=" (Left, Right : StreamUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.StreamUtil_Package_References."=";
   subtype StreamUtil_Access_Array_Access_Array_Access is org.allbinary.logic.io.StreamUtil_Package_References.StreamUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StreamUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.StreamUtil_Package_References."=";
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   procedure Initialize_Fields (This : in out SimpleFileUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.NULL_WRITER := SimpleFileUtil_Package.nullWriter;
      This.NULL_READER := SimpleFileUtil_Package.nullReader;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.nullUtil := NullUtil_Package.getInstance;
      This.streamUtil := StreamUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out SimpleFileUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return SimpleFileUtil_Access is
      This : constant SimpleFileUtil_Access := new SimpleFileUtil;
   begin
      SimpleFileUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return SimpleFileUtil_Access is
   begin
        return SimpleFileUtil_Package.instance;
   end getInstance;

   function nullOutputStream return OutputStream_Access is
   begin
        return OutputStream_Access (NullOutputStream_Package.NULL_OUTPUT_STREAM);
   end nullOutputStream;

   function nullWriter return Writer_Access is
   begin
        return Writer_Access (NullWriter_Package.NULL_WRITER);
   end nullWriter;

   function nullReader return Reader_Access is
   begin
        return Reader_Access (NullReader_Package.NULL_READER);
   end nullReader;

   function loadFileAsList (This : in out SimpleFileUtil; inputStream_Param : access InputStream_Package.InputStream'Class; max : Integer; byteArray1 : Short_Short_Integer_Array_Access) return BasicArrayList_Access is
      inputStream : constant InputStream_Access := InputStream_Access (inputStream_Param);
   begin
        return SimpleFileUtil'Class (This).loadFileAsListReturnLine (inputStream, max, byteArray1, 0);
   end loadFileAsList;

   function loadFileAsListReturnLine (This : in out SimpleFileUtil; inputStream_Param : access InputStream_Package.InputStream'Class; max : Integer; byteArray1 : Short_Short_Integer_Array_Access; includeReturnLine : Integer) return BasicArrayList_Access is
      inputStream : constant InputStream_Access := InputStream_Access (inputStream_Param);
      stringList : BasicArrayList_Access;
      byteArray : Short_Short_Integer_Array_Access;
      outputStream2 : ByteArrayOutputStream_Access;
      size : Integer;
      index : Integer;
      startIndex : Integer;
      returnLine : Integer;
      s : Unbounded_String;
   begin
        stringList := BasicArrayList_Access (BasicArrayListD_Package.Create);
        if (inputStream) = (null) then
            return stringList;
        end if;
        byteArray := This.nullUtil.NULL_BYTE_ARRAY;
        begin
            outputStream2 := ByteArrayOutputStream_Package.Create (max);
            byteArray := This.streamUtil.getByteArray (inputStream, outputStream2, byteArray1);
            This.streamUtil.close (inputStream);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.streamUtil.close (inputStream);
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, SimpleFileUtil_Access'(This'Unchecked_Access), This.commonStrings.ADD, e);
                end;
        end;
        if (byteArray) = (null) then
            return stringList;
        end if;
        size := byteArray'Length;
        index := 0;
        startIndex := 0;
        returnLine := 0;
        while (index) < (size) loop
            startIndex := index;
            while ((index) < ((size) - (1))) and then ((Integer (byteArray (index))) /= (Integer (Short_Short_Integer (Character'Pos (ASCII.LF))))) loop
                index := index + 1;
            end loop;
            if (includeReturnLine) = (0) then
                if ((index) > (0)) and then ((Integer (byteArray ((index) - (1)))) = (Integer (Short_Short_Integer (Character'Pos (ASCII.CR))))) then
                    returnLine := 1;
                else
                    returnLine := 0;
                end if;
            end if;
            s := Java_New_String (byteArray, startIndex, ((((index) + (includeReturnLine)) - (returnLine)) - (startIndex)));
            stringList.add (Java_Box (s));
            index := index + 1;
        end loop;
        return stringList;
   end loadFileAsListReturnLine;

   function createStringFromArrayOfStrings (This : in out SimpleFileUtil; stringArray : Unbounded_String_Array_Access) return Unbounded_String is
      stringMaker : StringMaker_Access;
      size : Integer;
      index : Integer;
   begin
        stringMaker := StringMaker_Package.Create;
        size := stringArray'Length;
        for index in 0 .. (size) - 1 loop
            stringMaker.append (stringArray (index));
        end loop;
        return stringMaker.toString;
   end createStringFromArrayOfStrings;

   procedure loadFileAsList (This : in out SimpleFileUtil; inputStream_Param : access InputStream_Package.InputStream'Class; max : Integer; byteArray1 : Short_Short_Integer_Array_Access) is
      Java_Result : constant BasicArrayList_Access := SimpleFileUtil'Class (This).loadFileAsList (inputStream_Param => inputStream_Param, max => max, byteArray1 => byteArray1);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end loadFileAsList;

   procedure loadFileAsListReturnLine (This : in out SimpleFileUtil; inputStream_Param : access InputStream_Package.InputStream'Class; max : Integer; byteArray1 : Short_Short_Integer_Array_Access; includeReturnLine : Integer) is
      Java_Result : constant BasicArrayList_Access := SimpleFileUtil'Class (This).loadFileAsListReturnLine (inputStream_Param => inputStream_Param, max => max, byteArray1 => byteArray1, includeReturnLine => includeReturnLine);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end loadFileAsListReturnLine;

   procedure createStringFromArrayOfStrings (This : in out SimpleFileUtil; stringArray : Unbounded_String_Array_Access) is
      Java_Result : constant Unbounded_String := SimpleFileUtil'Class (This).createStringFromArrayOfStrings (stringArray => stringArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createStringFromArrayOfStrings;

begin
   null;
   instance := SimpleFileUtil_Package.Create;

end org.allbinary.logic.io.file.SimpleFileUtil_Package;


