--  Generated Code Do Not Modify


package body org.apache.commons.fileupload.FileItemUtil_Package is

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
        return Java_New_String (This.getBytes (fileItem), This.DEFAULT_CHARSET);
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
            outputStream := ByteArrayOutputStream_Access (streamUtil.get (inputStream, outputStream, new Short_Short_Integer_Array'(0 .. (16384) - 1 => 0)));
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
      Java_Result : constant Unbounded_String := FileItemUtil'Class (This).getString (byteArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getString;

   procedure getString (This : in out FileItemUtil; fileItem_Param : access FileItemStream_Package.FileItemStream'Class) is
      Java_Result : constant Unbounded_String := FileItemUtil'Class (This).getString (fileItem_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getString;

   procedure getBytes (This : in out FileItemUtil; fileItem_Param : access FileItemStream_Package.FileItemStream'Class) is
      Java_Result : constant Short_Short_Integer_Array_Access := FileItemUtil'Class (This).getBytes (fileItem_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getBytes;

begin
   null;
   instance := FileItemUtil_Package.Create;

end org.apache.commons.fileupload.FileItemUtil_Package;


