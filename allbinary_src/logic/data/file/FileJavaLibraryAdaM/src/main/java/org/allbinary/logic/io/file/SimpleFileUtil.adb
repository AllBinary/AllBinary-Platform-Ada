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
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package body org.allbinary.logic.io.file.SimpleFileUtil_Package is

   package ByteArrayOutputStream_Package renames Standard.java.io.ByteArrayOutputStream_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
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
        return OutputStream_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     --  throws IOException
--     procedure write (This : in out ; b : Integer) is
--     begin
--                  null;
--     end write;
--              
--     --  throws IOException
--     procedure write (This : in out ; b : Short_Short_Integer_Array_Access; off : Integer; len : Integer) is
--     begin
--                  null;
--     end write;
--              
--     procedure close (This : in out ) is
--     begin
--                  null;
--     end close;
;
   end nullOutputStream;

   function nullWriter return Writer_Access is
   begin
        return Writer_Package.Create  --  Java anonymous class body: implement it as a named type
--              This.closed := False;
--              
--     --  throws IOException
--     function append (This : in out ; c : Character) return Writer_Access is
--     begin
--                  return SimpleFileUtil_Access'(This'Unchecked_Access);
--          return null;
--     end append;
--              
--     --  throws IOException
--     function append (This : in out ; csq_Param : access CharSequence_Package.CharSequence'Class) return Writer_Access is
--        csq : constant CharSequence_Access := CharSequence_Access (csq_Param);
--     begin
--                  return SimpleFileUtil_Access'(This'Unchecked_Access);
--          return null;
--     end append;
--              
--     --  throws IOException
--     function append (This : in out ; csq_Param : access CharSequence_Package.CharSequence'Class; start : Integer; end_Id : Integer) return Writer_Access is
--        csq : constant CharSequence_Access := CharSequence_Access (csq_Param);
--     begin
--                  return SimpleFileUtil_Access'(This'Unchecked_Access);
--          return null;
--     end append;
--              
--     --  throws IOException
--     procedure write (This : in out ; c : Integer) is
--     begin
--                  null;
--     end write;
--              
--     --  throws IOException
--     procedure write (This : in out ; cbuf : Character_Array_Access; off : Integer; len : Integer) is
--     begin
--                  null;
--     end write;
--              
--     --  throws IOException
--     procedure write (This : in out ; str : Unbounded_String) is
--     begin
--                  null;
--     end write;
--              
--     --  throws IOException
--     procedure write (This : in out ; str : Unbounded_String; off : Integer; len : Integer) is
--     begin
--                  null;
--     end write;
--              
--     --  throws IOException
--     procedure flush (This : in out ) is
--     begin
--                  null;
--     end flush;
--              
--     --  throws IOException
--     procedure close (This : in out ) is
--     begin
--                  null;
--     end close;
;
   end nullWriter;

   function nullReader return Reader_Access is
   begin
        return Reader_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     --  throws IOException
--     function read (This : in out ) return Integer is
--     begin
--                  return -(1);
--          return 0;
--     end read;
--              
--     --  throws IOException
--     function read (This : in out ; cbuf : Character_Array_Access; off : Integer; len : Integer) return Integer is
--     begin
--                  return -(1);
--          return 0;
--     end read;
--              
--     --  throws IOException
--     function read (This : in out ; target_Param : access CharBuffer_Package.CharBuffer'Class) return Integer is
--        target : constant CharBuffer_Access := CharBuffer_Access (target_Param);
--     begin
--                  return -(1);
--          return 0;
--     end read;
--              
--     --  throws IOException
--     function ready (This : in out ) return Boolean is
--     begin
--                  return False;
--          return False;
--     end ready;
--              
--     --  throws IOException
--     function skip (This : in out ; n : Long_Long_Integer) return Long_Long_Integer is
--     begin
--                  return 0;
--          return 0;
--     end skip;
--              
--     procedure close (This : in out ) is
--     begin
--                  null;
--     end close;
;
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
            while ((index) < ((size) - (1))) and then ((byteArray (index)) /= (Short_Short_Integer (Character'Pos (ASCII.LF)))) loop
                index := index + 1;
            end loop;
            if (includeReturnLine) = (0) then
                if ((index) > (0)) and then ((byteArray ((index) - (1))) = (Short_Short_Integer (Character'Pos (ASCII.CR)))) then
                    returnLine := 1;
                else
                    returnLine := 0;
                end if;
            end if;
            s := Java_New_String (byteArray, startIndex, ((((index) + (includeReturnLine)) - (returnLine)) - (startIndex)));
            stringList.add (s);
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
      Java_Result : constant BasicArrayList_Access := SimpleFileUtil'Class (This).loadFileAsList (inputStream_Param, max, byteArray1);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end loadFileAsList;

   procedure loadFileAsListReturnLine (This : in out SimpleFileUtil; inputStream_Param : access InputStream_Package.InputStream'Class; max : Integer; byteArray1 : Short_Short_Integer_Array_Access; includeReturnLine : Integer) is
      Java_Result : constant BasicArrayList_Access := SimpleFileUtil'Class (This).loadFileAsListReturnLine (inputStream_Param, max, byteArray1, includeReturnLine);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end loadFileAsListReturnLine;

   procedure createStringFromArrayOfStrings (This : in out SimpleFileUtil; stringArray : Unbounded_String_Array_Access) is
      Java_Result : constant Unbounded_String := SimpleFileUtil'Class (This).createStringFromArrayOfStrings (stringArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createStringFromArrayOfStrings;

begin
   null;
   instance := SimpleFileUtil_Package.Create;

end org.allbinary.logic.io.file.SimpleFileUtil_Package;


