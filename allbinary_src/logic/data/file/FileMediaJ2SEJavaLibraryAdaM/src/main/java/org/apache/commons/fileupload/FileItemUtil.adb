--  Generated Code Do Not Modify


with java.io.ByteArrayOutputStream_Package; use java.io.ByteArrayOutputStream_Package;
with java.io.InputStream_Package; use java.io.InputStream_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.io.StreamUtil_Package; use org.allbinary.logic.io.StreamUtil_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFile_Package_References;
with org.allbinary.logic.io.file.AbFileNativeUtil_Package; use org.allbinary.logic.io.file.AbFileNativeUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.apache.commons.fileupload.FileItemStream_Package; use org.apache.commons.fileupload.FileItemStream_Package;
with org.apache.commons.fileupload.FileItemStream_Package_References;
with org.apache.commons.fileupload.FileItem_Package; use org.apache.commons.fileupload.FileItem_Package;
with org.apache.commons.fileupload.FileItem_Package_References;
with org.allbinary.logic.io.path.AbFilePath_Package;
with org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.io.file.FilePathData_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.io.path.PathUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.apache.commons.fileupload.FileItemUtil_Package is

   package ByteArrayOutputStream_Package renames Standard.java.io.ByteArrayOutputStream_Package;
   package InputStream_Package renames Standard.java.io.InputStream_Package;
   package StreamUtil_Package renames Standard.org.allbinary.logic.io.StreamUtil_Package;
   package AbFileNativeUtil_Package renames Standard.org.allbinary.logic.io.file.AbFileNativeUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
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
   subtype AbFile_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access;
   function "=" (Left, Right : AbFile_Access) return Boolean renames org.allbinary.logic.io.file.AbFile_Package_References."=";
   subtype AbFile_Access_Array is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array;
   function "=" (Left, Right : AbFile_Access_Array) return Boolean renames org.allbinary.logic.io.file.AbFile_Package_References."=";
   subtype AbFile_Access_Array_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access;
   function "=" (Left, Right : AbFile_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.AbFile_Package_References."=";
   subtype AbFile_Access_Array_Access_Array is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access_Array;
   function "=" (Left, Right : AbFile_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.file.AbFile_Package_References."=";
   subtype AbFile_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbFile_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.AbFile_Package_References."=";
   subtype FileItemStream_Access is org.apache.commons.fileupload.FileItemStream_Package_References.FileItemStream_Access;
   function "=" (Left, Right : FileItemStream_Access) return Boolean renames org.apache.commons.fileupload.FileItemStream_Package_References."=";
   subtype FileItemStream_Access_Array is org.apache.commons.fileupload.FileItemStream_Package_References.FileItemStream_Access_Array;
   function "=" (Left, Right : FileItemStream_Access_Array) return Boolean renames org.apache.commons.fileupload.FileItemStream_Package_References."=";
   subtype FileItemStream_Access_Array_Access is org.apache.commons.fileupload.FileItemStream_Package_References.FileItemStream_Access_Array_Access;
   function "=" (Left, Right : FileItemStream_Access_Array_Access) return Boolean renames org.apache.commons.fileupload.FileItemStream_Package_References."=";
   subtype FileItemStream_Access_Array_Access_Array is org.apache.commons.fileupload.FileItemStream_Package_References.FileItemStream_Access_Array_Access_Array;
   function "=" (Left, Right : FileItemStream_Access_Array_Access_Array) return Boolean renames org.apache.commons.fileupload.FileItemStream_Package_References."=";
   subtype FileItemStream_Access_Array_Access_Array_Access is org.apache.commons.fileupload.FileItemStream_Package_References.FileItemStream_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FileItemStream_Access_Array_Access_Array_Access) return Boolean renames org.apache.commons.fileupload.FileItemStream_Package_References."=";
   subtype FileItem_Access is org.apache.commons.fileupload.FileItem_Package_References.FileItem_Access;
   function "=" (Left, Right : FileItem_Access) return Boolean renames org.apache.commons.fileupload.FileItem_Package_References."=";
   subtype FileItem_Access_Array is org.apache.commons.fileupload.FileItem_Package_References.FileItem_Access_Array;
   function "=" (Left, Right : FileItem_Access_Array) return Boolean renames org.apache.commons.fileupload.FileItem_Package_References."=";
   subtype FileItem_Access_Array_Access is org.apache.commons.fileupload.FileItem_Package_References.FileItem_Access_Array_Access;
   function "=" (Left, Right : FileItem_Access_Array_Access) return Boolean renames org.apache.commons.fileupload.FileItem_Package_References."=";
   subtype FileItem_Access_Array_Access_Array is org.apache.commons.fileupload.FileItem_Package_References.FileItem_Access_Array_Access_Array;
   function "=" (Left, Right : FileItem_Access_Array_Access_Array) return Boolean renames org.apache.commons.fileupload.FileItem_Package_References."=";
   subtype FileItem_Access_Array_Access_Array_Access is org.apache.commons.fileupload.FileItem_Package_References.FileItem_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FileItem_Access_Array_Access_Array_Access) return Boolean renames org.apache.commons.fileupload.FileItem_Package_References."=";
   procedure Initialize_Fields (This : in out FileItemUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.DEFAULT_CHARSET := To_Unbounded_String ("ISO-8859-1");
   end Initialize_Fields;

   procedure Initialize (This : in out FileItemUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return FileItemUtil_Access is
      This : constant FileItemUtil_Access := new FileItemUtil;
   begin
      FileItemUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return FileItemUtil_Access is
   begin
        return FileItemUtil_Package.instance;
   end getInstance;

   --  throws Exception
   function getString (This : in out FileItemUtil; byteArray : Short_Short_Integer_Array_Access) return Unbounded_String is
   begin
        return Java_New_String (byteArray, This.DEFAULT_CHARSET);
   end getString;

   --  throws Exception
   function getString (This : in out FileItemUtil; fileItem_Param : access FileItemStream_Package.FileItemStream'Class) return Unbounded_String is
      fileItem : constant FileItemStream_Access := FileItemStream_Access (fileItem_Param);
   begin
        return Java_New_String (FileItemUtil'Class (This).getBytes (fileItem), This.DEFAULT_CHARSET);
   end getString;

   --  throws Exception
   function getBytes (This : in out FileItemUtil; fileItem_Param : access FileItemStream_Package.FileItemStream'Class) return Short_Short_Integer_Array_Access is
      fileItem : constant FileItemStream_Access := FileItemStream_Access (fileItem_Param);
      streamUtil : StreamUtil_Access;
      inputStream : InputStream_Access;
      outputStream : ByteArrayOutputStream_Access;
      stringBuffer : StringMaker_Access;
   begin
        streamUtil := StreamUtil_Package.getInstance;
        inputStream := null;
        outputStream := null;
        begin
            inputStream := fileItem.openStream;
            outputStream := ByteArrayOutputStream_Package.Create;
            if fileItem.isFormField then
                This.logUtil.putF (To_Unbounded_String ("FileItemStream FieldName: ") & Java_Image (fileItem.getFieldName), FileItemUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("write()"));
            else
                stringBuffer := StringMaker_Package.Create;
                stringBuffer.append (To_Unbounded_String ("Uploaded File FieldName: "));
                stringBuffer.append (fileItem.getFieldName);
                stringBuffer.append (To_Unbounded_String (" name = "));
                stringBuffer.append (fileItem.getName);
                This.logUtil.putF (stringBuffer.toString, FileItemUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("write()"));
            end if;
            outputStream := ByteArrayOutputStream_Access (streamUtil.getByteArray (inputStream, outputStream, new Short_Short_Integer_Array'(0 .. (16384) - 1 => 0)));
            return outputStream.toByteArray;
        end;
        --  finally
        begin
            streamUtil.close (outputStream);
            streamUtil.close (inputStream);
        end;
   end getBytes;

   --  throws Exception
   procedure write (This : in out FileItemUtil; fileItem_Param : access FileItem_Package.FileItem'Class; file_Param : access AbFile_Package.AbFile'Class) is
      fileItem : constant FileItem_Access := FileItem_Access (fileItem_Param);
      file : constant AbFile_Access := AbFile_Access (file_Param);
   begin
        fileItem.write (AbFileNativeUtil_Package.get (file));
   end write;

   procedure getString (This : in out FileItemUtil; byteArray : Short_Short_Integer_Array_Access) is
      Java_Result : constant Unbounded_String := FileItemUtil'Class (This).getString (byteArray => byteArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getString;

   procedure getString (This : in out FileItemUtil; fileItem_Param : access FileItemStream_Package.FileItemStream'Class) is
      Java_Result : constant Unbounded_String := FileItemUtil'Class (This).getString (fileItem_Param => fileItem_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getString;

   procedure getBytes (This : in out FileItemUtil; fileItem_Param : access FileItemStream_Package.FileItemStream'Class) is
      Java_Result : constant Short_Short_Integer_Array_Access := FileItemUtil'Class (This).getBytes (fileItem_Param => fileItem_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getBytes;

begin
   null;
   instance := FileItemUtil_Package.Create;

end org.apache.commons.fileupload.FileItemUtil_Package;


