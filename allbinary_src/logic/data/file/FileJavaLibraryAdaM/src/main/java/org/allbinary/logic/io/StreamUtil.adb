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


package body org.allbinary.logic.io.StreamUtil_Package is

   procedure Initialize_Fields (This : in out StreamUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return StreamUtil_Access is
   begin
        return StreamUtil_Package.instance;
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
   function get (This : in out StreamUtil; inputStream_Param : access InputStream'Class; outputStream_Param : access OutputStream'Class; buffer : Short_Short_Integer_Array_Access) return OutputStream_Access is
      inputStream : InputStream_Access := InputStream_Access (inputStream_Param);
      outputStream : OutputStream_Access := OutputStream_Access (outputStream_Param);
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
   function getByteArray (This : in out StreamUtil; inputStream_Param : access InputStream'Class; outputStream2_Param : access ByteArrayOutputStream'Class; byteArray : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access is
      inputStream : InputStream_Access := InputStream_Access (inputStream_Param);
      outputStream2 : ByteArrayOutputStream_Access := ByteArrayOutputStream_Access (outputStream2_Param);
      outputStream : ByteArrayOutputStream_Access;
   begin
        outputStream := outputStream2;
        begin
            This.get (inputStream, outputStream, byteArray);
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
            This.close (outputStream);
        end;
   end getByteArray;

   function close (This : in out StreamUtil; closeable_Param : access Closeable'Class) return Boolean is
      closeable : Closeable_Access := Closeable_Access (closeable_Param);
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

   procedure get (This : in out StreamUtil; inputStream_Param : access InputStream'Class; outputStream_Param : access OutputStream'Class; buffer : Short_Short_Integer_Array_Access) is
      Java_Result : constant OutputStream_Access := StreamUtil'Class (This).get (inputStream_Param, outputStream_Param, buffer);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure getByteArray (This : in out StreamUtil; inputStream_Param : access InputStream'Class; outputStream2_Param : access ByteArrayOutputStream'Class; byteArray : Short_Short_Integer_Array_Access) is
      Java_Result : constant Short_Short_Integer_Array_Access := StreamUtil'Class (This).getByteArray (inputStream_Param, outputStream2_Param, byteArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getByteArray;

   procedure close (This : in out StreamUtil; closeable_Param : access Closeable'Class) is
      Java_Result : constant Boolean := StreamUtil'Class (This).close (closeable_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end close;

begin
   null;
   instance := StreamUtil_Package.Create;

end org.allbinary.logic.io.StreamUtil_Package;


