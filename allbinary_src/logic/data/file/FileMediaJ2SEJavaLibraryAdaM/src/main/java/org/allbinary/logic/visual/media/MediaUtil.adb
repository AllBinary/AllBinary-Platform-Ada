--  Generated Code Do Not Modify


package body org.allbinary.logic.visual.media.MediaUtil_Package is

   procedure Initialize_Fields (This : in out MediaUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return MediaUtil_Access is
   begin
        return MediaUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out MediaUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return MediaUtil_Access is
      This : constant MediaUtil_Access := new MediaUtil;
   begin
      MediaUtil_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure saveImageFile (This : in out MediaUtil; originalImageFile : AbFile_Access; newImageFileName : Unbounded_String; category : Unbounded_String; mediaData : MediaData_Access; newWidth : Integer; newHeight : Integer) is
      bufferedImage : BufferedImage_Access;
      hashMap : HashMap_Access;
      imageFile : AbFile_Access;
      imageUtil : ImageUtil_Access;
      newBufferedImage : BufferedImage_Access;
      isWritten : Boolean;
      commonLabels : CommonLabels_Access;
      stringBuffer : StringMaker_Access;
   begin
        if ((originalImageFile) = (null)) or else (not (originalImageFile.isFile)) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Original Image File Does Not Exist.")));
        end if;
        bufferedImage := ImageIOUtil_Package.read (originalImageFile);
        if (bufferedImage) = (null) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Unable to find ImageReader for this file.")));
        end if;
        if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.VIEW) then
            hashMap := This.getImageBufferPropertyHashMap (bufferedImage);
            This.logUtil.putF (To_Unbounded_String ("Image Properties: ") & hashMap.toString, This'Unchecked_Access, To_Unbounded_String ("saveImageFile()"));
        end if;
        imageFile := AbFile_Package.createAbFile (category & newImageFileName);
        imageFile.createNewFile;
        imageUtil := ImageUtil_Package.getInstance;
        newBufferedImage := imageUtil.createBufferedImageForSave (bufferedImage, newWidth, newHeight);
        isWritten := ImageIOUtil_Package.write (RenderedImage_Access (newBufferedImage), mediaData.getName, imageFile);
        if not (isWritten) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Unable to write.")));
        end if;
        if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.VIEW) then
            commonLabels := CommonLabels_Package.getInstance;
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("Get Path: "));
            stringBuffer.append (originalImageFile.getPath);
            stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "NewImageFileName: "));
            stringBuffer.append (newImageFileName);
            stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "Category: "));
            stringBuffer.append (category);
            stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "Save File Type: "));
            stringBuffer.append (mediaData.getName);
            stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "New")).append (commonLabels.WIDTH_LABEL);
            stringBuffer.appendint (newWidth);
            stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "New")).append (commonLabels.HEIGHT_LABEL);
            stringBuffer.appendint (newHeight);
            stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "File Length: "));
            stringBuffer.appendlong (Long_Long_Integer (originalImageFile.length));
            stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "New File Length: "));
            stringBuffer.appendlong (Long_Long_Integer (imageFile.length));
            This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("saveImageFile()"));
        end if;
   end saveImageFile;

   function getImageBufferPropertyHashMap (bufferedImage : BufferedImage_Access) return HashMap_Access is
      hashMap : HashMap_Access;
      propertyStringArray : Unbounded_String_Array_Access;
      propertyObject : Java_Object_Access;
      index : Integer;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        propertyStringArray := bufferedImage.getPropertyNames;
        if (propertyStringArray) /= (null) then
            for index in 0 .. (propertyStringArray'Length) - 1 loop
                propertyObject := bufferedImage.getProperty (propertyStringArray (index));
                hashMap.put (propertyStringArray (index), propertyObject.toString);
            end loop;
        end if;
        return hashMap;
   end getImageBufferPropertyHashMap;

   procedure getImageBufferPropertyHashMap (bufferedImage : BufferedImage_Access) is
      Java_Result : constant HashMap_Access := getImageBufferPropertyHashMap (bufferedImage);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getImageBufferPropertyHashMap;

begin
   null;
   instance := MediaUtil_Package.Create;

end org.allbinary.logic.visual.media.MediaUtil_Package;


