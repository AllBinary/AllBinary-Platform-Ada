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
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function get (This : in out StreamUtil; inputStream : InputStream_Access; outputStream : OutputStream_Access; buffer : Short_Short_Integer_Array_Access) return OutputStream_Access is
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
   function getByteArray (This : in out StreamUtil; inputStream : InputStream_Access; outputStream2 : ByteArrayOutputStream_Access; byteArray : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access is
      outputStream : ByteArrayOutputStream_Access;
   begin
        outputStream := outputStream2;
        begin
            This.get (inputStream, outputStream, byteArray);
            return outputStream.toByteArray;
        exception
            when e : others =>
            Java_Throw (e);
        end;
        --  finally
        begin
            This.close (outputStream);
        end;
   end getByteArray;

   function close (This : in out StreamUtil; closeable : Closeable_Access) return Boolean is
      commonStrings : CommonStrings_Access;
   begin
        begin
            if (closeable) /= (null) then
                closeable.close;
            end if;
            return True;
        exception
            when e : others =>
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.CLOSE, e);
            return False;
        end;
   end close;

   procedure getInstance is
      Java_Result : constant StreamUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure get (This : in out StreamUtil; inputStream : InputStream_Access; outputStream : OutputStream_Access; buffer : Short_Short_Integer_Array_Access) is
      Java_Result : constant OutputStream_Access := StreamUtil'Class (This).get (inputStream, outputStream, buffer);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure getByteArray (This : in out StreamUtil; inputStream : InputStream_Access; outputStream2 : ByteArrayOutputStream_Access; byteArray : Short_Short_Integer_Array_Access) is
      Java_Result : constant Short_Short_Integer_Array_Access := StreamUtil'Class (This).getByteArray (inputStream, outputStream2, byteArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getByteArray;

   procedure close (This : in out StreamUtil; closeable : Closeable_Access) is
      Java_Result : constant Boolean := StreamUtil'Class (This).close (closeable);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end close;

begin
   null;
   instance := StreamUtil_Package.Create;

end org.allbinary.logic.io.StreamUtil_Package;


