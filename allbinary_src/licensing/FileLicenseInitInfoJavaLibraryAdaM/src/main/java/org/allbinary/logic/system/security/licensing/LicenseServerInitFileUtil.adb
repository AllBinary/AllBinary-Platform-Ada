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


with java.io.InputStream_Package; use java.io.InputStream_Package;
with org.allbinary.business.init.LicenseInitInfoUtil_Package; use org.allbinary.business.init.LicenseInitInfoUtil_Package;
with org.allbinary.data.resource.ResourceUtil_Package; use org.allbinary.data.resource.ResourceUtil_Package;
with org.allbinary.logic.io.FileStreamFactory_Package; use org.allbinary.logic.io.FileStreamFactory_Package;
with org.allbinary.logic.io.StreamUtil_Package; use org.allbinary.logic.io.StreamUtil_Package;
with org.allbinary.logic.io.file.FileFactory_Package; use org.allbinary.logic.io.file.FileFactory_Package;
with org.allbinary.logic.io.file.SimpleFileUtil_Package; use org.allbinary.logic.io.file.SimpleFileUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package body org.allbinary.logic.system.security.licensing.LicenseServerInitFileUtil_Package is

   package InputStream_Package renames Standard.java.io.InputStream_Package;
   package LicenseInitInfoUtil_Package renames Standard.org.allbinary.business.init.LicenseInitInfoUtil_Package;
   package ResourceUtil_Package renames Standard.org.allbinary.data.resource.ResourceUtil_Package;
   package FileStreamFactory_Package renames Standard.org.allbinary.logic.io.FileStreamFactory_Package;
   package StreamUtil_Package renames Standard.org.allbinary.logic.io.StreamUtil_Package;
   package FileFactory_Package renames Standard.org.allbinary.logic.io.file.FileFactory_Package;
   package SimpleFileUtil_Package renames Standard.org.allbinary.logic.io.file.SimpleFileUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   procedure Initialize_Fields (This : in out LicenseServerInitFileUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.NULL_OUTPUT_STREAM := SimpleFileUtil_Package.nullOutputStream;
   end Initialize_Fields;

   procedure Initialize (This : in out LicenseServerInitFileUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return LicenseServerInitFileUtil_Access is
      This : constant LicenseServerInitFileUtil_Access := new LicenseServerInitFileUtil;
   begin
      LicenseServerInitFileUtil_Package.Initialize (This.all);
      return This;
   end Create;


   procedure init (This : in out LicenseServerInitFileUtil) is
      filePath : Unbounded_String;
   begin
        begin
            filePath := LicenseInitInfoUtil_Package.getInstance.INITFILENAME;
            LicenseInitInfoUtil_Package.getInstance.setFilePath (StringUtil_Package.getInstance.EMPTY_STRING);
            if FileFactory_Package.getInstance.isFile (filePath) then
                This.logUtil.putF (To_Unbounded_String ("Using Existing License File"), LicenseServerInitFileUtil_Access'(This'Unchecked_Access), This.commonStrings.INIT);
            else
                LicenseServerInitFileUtil'Class (This).write;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, LicenseServerInitFileUtil_Access'(This'Unchecked_Access), This.commonStrings.INIT, e);
                end;
        end;
   end init;

   procedure write (This : in out LicenseServerInitFileUtil) is
      fileOutputStream : OutputStream_Access;
      resourceUtil : ResourceUtil_Access;
      filePath : Unbounded_String;
      inputStream : InputStream_Access;
      fileStreamFactory : FileStreamFactory_Access;
      b : Integer;
      index : Integer;
   begin
        fileOutputStream := This.NULL_OUTPUT_STREAM;
        begin
            resourceUtil := ResourceUtil_Package.getInstance;
            filePath := LicenseInitInfoUtil_Package.getInstance.INITFILENAME;
            inputStream := resourceUtil.getResourceAsStream (filePath);
            This.logUtil.putF (To_Unbounded_String ("Writing Default License File"), LicenseServerInitFileUtil_Access'(This'Unchecked_Access), This.commonStrings.INIT);
            fileStreamFactory := FileStreamFactory_Package.getInstance;
            fileOutputStream := fileStreamFactory.getFileOutputStreamInstance (StringUtil_Package.getInstance.EMPTY_STRING, filePath);
            b := 0;
            index := 0;
            while True loop
                b := inputStream.read;
                if (b) = (-(1)) then
                    exit;
                end if;
                fileOutputStream.write (b);
                index := index + 1;
            end loop;
            This.logUtil.putF (To_Unbounded_String ("Wrote Bytes: ") & Java_Image (index), LicenseServerInitFileUtil_Access'(This'Unchecked_Access), This.commonStrings.INIT);
            fileOutputStream.flush;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, LicenseServerInitFileUtil_Access'(This'Unchecked_Access), This.commonStrings.INIT, e);
                end;
        end;
        --  finally
        begin
            StreamUtil_Package.getInstance.close (fileOutputStream);
        end;
   end write;

end org.allbinary.logic.system.security.licensing.LicenseServerInitFileUtil_Package;


