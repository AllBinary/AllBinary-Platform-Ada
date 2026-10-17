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


package body org.allbinary.logic.io.file.zip.ZipFileUtil_Package is

   procedure Initialize_Fields (This : in out ZipFileUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out ZipFileUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ZipFileUtil_Access is
      This : constant ZipFileUtil_Access := new ZipFileUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return ZipFileUtil_Access is
   begin
        return ZipFileUtil_Package.instance;
   end getInstance;

   procedure create (This : in out ZipFileUtil; outFilename : Unbounded_String; fileBasicArrayList : BasicArrayList_Access) is
      zipFile : AbFile_Access;
      outputStream : ZipOutputStream_Access;
      streamUtil : StreamUtil_Access;
      stringBuffer : StringMaker_Access;
      byteArray : Short_Short_Integer_Array_Access;
      fileInputStream : AbFileInputStream_Access;
      size : Integer;
      current : Integer;
      file : AbFile_Access;
      i : Integer;
   begin
        begin
            zipFile := AbFile_Package.createAbFile (outFilename);
            if zipFile.exists then
                zipFile.delete;
            end if;
            zipFile.createNewFile;
            outputStream := ZipOutputStream_Package.Create (AbFileOutputStream_Package.createFromAbFile (zipFile));
            streamUtil := StreamUtil_Package.getInstance;
            stringBuffer := StringMaker_Package.Create;
            byteArray := new Short_Short_Integer_Array'(0 .. (16384) - 1 => 0);
            fileInputStream := null;
            size := fileBasicArrayList.size;
            current := 0;
            for i in 0 .. (size) - 1 loop
                file := AbFile_Access (fileBasicArrayList.get (i));
                if file.isDirectory then
                    null;
                elsif file.isFile then
                    stringBuffer.delete (0, stringBuffer.length);
                    stringBuffer.appendint (current);
                    stringBuffer.append (To_Unbounded_String (" Creating Zip File Entry: "));
                    stringBuffer.append (file.getPath);
                    This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("create()"));
                    begin
                        fileInputStream := AbFileInputStream_Package.Create (file);
                        outputStream.putNextEntry (ZipEntry_Package.Create (file.getPath));
                        streamUtil.get (fileInputStream, outputStream, byteArray);
                        outputStream.closeEntry;
                        streamUtil.close (fileInputStream);
                    exception
                        when e : others =>
                        This.logUtil.putF (To_Unbounded_String ("Skipping File (Probably Local): ") & Java_Image (file.getPath), This'Unchecked_Access, To_Unbounded_String ("create()"));
                    end;
                end if;
                current := current + 1;
            end loop;
            streamUtil.close (outputStream);
        exception
            when e : others =>
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("create"), e);
        end;
   end create;

   --  throws Exception
   procedure unzip (This : in out ZipFileUtil; path : Unbounded_String; zipFile : AbFile_Access; fileName : Unbounded_String) is
      buffer : Short_Short_Integer_Array_Access;
      inputStream : ZipInputStream_Access;
      zipEntry : ZipEntry_Access;
      stringBuffer : StringMaker_Access;
      fileUtil : FileUtil_Access;
      entryName : Unbounded_String;
      entryFile : AbFile_Access;
      dataOutputStream : AbDataOutputStream_Access;
   begin
        buffer := new Short_Short_Integer_Array'(0 .. (16384) - 1 => 0);
        inputStream := null;
        begin
            inputStream := ZipInputStream_Package.Create (AbFileInputStream_Package.Create (zipFile));
            zipEntry := null;
            stringBuffer := StringMaker_Package.Create;
            fileUtil := FileUtil_Package.getInstance;
            while ((Java_Assign (zipEntry, inputStream.getNextEntry))) /= (null) loop
                entryName := zipEntry.getName;
                if zipEntry.isDirectory then
                    null;
                else
                    entryFile := AbFile_Package.createAbFile (path & entryName);
                    stringBuffer.delete (0, stringBuffer.length);
                    stringBuffer.append (To_Unbounded_String ("ZipEntry Name: "));
                    stringBuffer.append (entryName);
                    stringBuffer.append (To_Unbounded_String (" isFile: "));
                    stringBuffer.appendboolean (entryFile.isFile);
                    stringBuffer.append (To_Unbounded_String (" isDirectory: "));
                    stringBuffer.appendboolean (entryFile.isDirectory);
                    stringBuffer.append (To_Unbounded_String (" getParent: "));
                    stringBuffer.append (entryFile.getParent);
                    This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("unzip"));
                    dataOutputStream := DataOutputStreamFactory_Package.getInstance.getInstanceForAbFile (entryFile);
                    fileUtil.write (inputStream, dataOutputStream, buffer);
                end if;
                inputStream.closeEntry;
            end loop;
        end;
        --  finally
        begin
            StreamUtil_Package.getInstance.close (inputStream);
        end;
   end unzip;

   procedure getInstance is
      Java_Result : constant ZipFileUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := ZipFileUtil_Package.Create;

end org.allbinary.logic.io.file.zip.ZipFileUtil_Package;


