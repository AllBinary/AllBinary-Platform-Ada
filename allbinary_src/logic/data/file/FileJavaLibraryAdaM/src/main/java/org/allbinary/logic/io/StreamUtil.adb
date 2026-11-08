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


with java.io.ByteArrayOutputStream_Package; use java.io.ByteArrayOutputStream_Package;
with java.io.Closeable_Package; use java.io.Closeable_Package;
with java.io.InputStream_Package; use java.io.InputStream_Package;
with java.io.OutputStream_Package; use java.io.OutputStream_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.logic.io.StreamUtil_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
   procedure Initialize_Fields (This : in out StreamUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return StreamUtil_Access is
   begin
        return StreamUtil_Access (StreamUtil_Package.instance);
   end getInstance;

   procedure Initialize (This : in out StreamUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return StreamUtil_Access is
      This : constant StreamUtil_Access := new StreamUtil;
   begin
      StreamUtil_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function get (This : in out StreamUtil; inputStream_Param : access InputStream_Package.InputStream'Class; outputStream_Param : access OutputStream_Package.OutputStream'Class; buffer : Short_Short_Integer_Array_Access) return OutputStream_Access is
      inputStream : constant InputStream_Access := InputStream_Access (inputStream_Param);
      outputStream : constant OutputStream_Access := OutputStream_Access (outputStream_Param);
      len : Integer;
   begin
        len := 0;
        while True loop
            len := inputStream.read (buffer, 0, buffer'Length);
            if (len) /= (-(1)) then
                null;
            else
                exit;
            end if;
            outputStream.write (buffer, 0, len);
        end loop;
        return outputStream;
   end get;

   --  throws Exception
   function getByteArray (This : in out StreamUtil; inputStream_Param : access InputStream_Package.InputStream'Class; outputStream2_Param : access ByteArrayOutputStream_Package.ByteArrayOutputStream'Class; byteArray : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access is
      inputStream : constant InputStream_Access := InputStream_Access (inputStream_Param);
      outputStream2 : constant ByteArrayOutputStream_Access := ByteArrayOutputStream_Access (outputStream2_Param);
      outputStream : ByteArrayOutputStream_Access;
   begin
        outputStream := outputStream2;
        begin
            StreamUtil'Class (This).get (inputStream, outputStream, byteArray);
            return outputStream.toByteArray;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
        --  finally
        begin
            StreamUtil'Class (This).close (outputStream);
        end;
   end getByteArray;

   function close (This : in out StreamUtil; closeable_Param : access Closeable_Package.Closeable'Class) return Boolean is
      closeable : constant Closeable_Access := Closeable_Access (closeable_Param);
      commonStrings : CommonStrings_Access;
   begin
        begin
            if (closeable) /= (null) then
                closeable.close;
            end if;
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, StreamUtil_Access'(This'Unchecked_Access), commonStrings.CLOSE, e);
            return False;
                end;
        end;
   end close;

   procedure get (This : in out StreamUtil; inputStream_Param : access InputStream_Package.InputStream'Class; outputStream_Param : access OutputStream_Package.OutputStream'Class; buffer : Short_Short_Integer_Array_Access) is
      Java_Result : constant OutputStream_Access := StreamUtil'Class (This).get (inputStream_Param => inputStream_Param, outputStream_Param => outputStream_Param, buffer => buffer);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure getByteArray (This : in out StreamUtil; inputStream_Param : access InputStream_Package.InputStream'Class; outputStream2_Param : access ByteArrayOutputStream_Package.ByteArrayOutputStream'Class; byteArray : Short_Short_Integer_Array_Access) is
      Java_Result : constant Short_Short_Integer_Array_Access := StreamUtil'Class (This).getByteArray (inputStream_Param => inputStream_Param, outputStream2_Param => outputStream2_Param, byteArray => byteArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getByteArray;

   procedure close (This : in out StreamUtil; closeable_Param : access Closeable_Package.Closeable'Class) is
      Java_Result : constant Boolean := StreamUtil'Class (This).close (closeable_Param => closeable_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end close;

begin
   null;
   instance := StreamUtil_Package.Create;

end org.allbinary.logic.io.StreamUtil_Package;


