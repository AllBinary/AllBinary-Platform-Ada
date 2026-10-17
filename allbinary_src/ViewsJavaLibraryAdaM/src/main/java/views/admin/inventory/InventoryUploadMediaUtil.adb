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


package body views.admin.inventory.InventoryUploadMediaUtil_Package is

   procedure Initialize_Fields (This : in out InventoryUploadMediaUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.mediaUtil := MediaUtil_Package.getInstance;
      This.LARGEWIDTH := 1024;
      This.LARGEHEIGHT := 1024;
      This.MEDIUMWIDTH := 256;
      This.MEDIUMHEIGHT := 256;
      This.SMALLWIDTH := 128;
      This.SMALLHEIGHT := 128;
      This.SMALL := To_Unbounded_String ("Small");
      This.MEDIUM := To_Unbounded_String ("Medium");
      This.LARGE := To_Unbounded_String ("Large");
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out InventoryUploadMediaUtil'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class; itemInterface_Param : access ItemInterface_Package.ItemInterface'Class) is
      storeFrontInterface : constant StoreFrontInterface_Access := StoreFrontInterface_Access (storeFrontInterface_Param);
      itemInterface : constant ItemInterface_Access := ItemInterface_Access (itemInterface_Param);
   begin
      Initialize_Fields (This);
        This.storeFrontInterface := storeFrontInterface;
        This.itemInterface := itemInterface;
   end Initialize;

   function Create (storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class; itemInterface_Param : access ItemInterface_Package.ItemInterface'Class) return InventoryUploadMediaUtil_Access is
      This : constant InventoryUploadMediaUtil_Access := new InventoryUploadMediaUtil;
   begin
      InventoryUploadMediaUtil_Package.Initialize (This.all, storeFrontInterface_Param, itemInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function saveFiles (This : in out InventoryUploadMediaUtil; byteArray : Short_Short_Integer_Array_Access; fileName : Unbounded_String; mediaData_Param : access MediaData_Package.MediaData'Class) return ItemInterface_Access is
      mediaData : constant MediaData_Access := MediaData_Access (mediaData_Param);
      fileUtil : FileUtil_Access;
      stringBuffer : StringMaker_Access;
      fullPath : Unbounded_String;
      imageDirectoryFile : AbFile_Access;
      originalImageFile : AbFile_Access;
      uploadMedia : UploadMediaSingleton_Access;
      isMediaSupported : Boolean;
      defaultMediaData : MediaData_Access;
      isMediaResizable : Boolean;
      isConvertable : Boolean;
      smallImageFile : AbFile_Access;
      mediumImageFile : AbFile_Access;
      largeImageFile : AbFile_Access;
      commonStrings : CommonStrings_Access;
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.CATEGORY) then
            This.logUtil.putF (To_Unbounded_String ("Start FileName: ") & fileName, InventoryUploadMediaUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("saveFiles()"));
        end if;
        if StringValidationUtil_Package.getInstance.isEmpty (fileName) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Image File Name Was Null")));
        end if;
        fileUtil := FileUtil_Package.getInstance;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (URLGLOBALS.getWebappPath);
        stringBuffer.append (This.storeFrontInterface.getCurrentHostNamePath);
        stringBuffer.append (This.itemInterface.getCategory);
        fullPath := stringBuffer.toString;
        imageDirectoryFile := AbFile_Package.createAbFile (fullPath);
        if not (imageDirectoryFile.isDirectory) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Unable to save file to non existant directory")));
        end if;
        stringBuffer.delete (0, stringBuffer.length);
        stringBuffer.append (fullPath);
        stringBuffer.append (fileName);
        stringBuffer.append (AbPathData_Package.getInstance.EXTENSION_SEP);
        stringBuffer.append (mediaData.getName);
        originalImageFile := AbFile_Package.createAbFile (stringBuffer.toString);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.CATEGORY) then
            This.logUtil.putF (To_Unbounded_String ("Saving Original Image: ") & Java_Image (originalImageFile), InventoryUploadMediaUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("saveFiles()"));
        end if;
        originalImageFile.createNewFile;
        fileUtil.write (ByteArrayInputStream_Package.Create (byteArray), originalImageFile);
        uploadMedia := UploadMediaSingleton_Package.getInstance;
        isMediaSupported := (uploadMedia.isWriterSupported (mediaData.getName)) or else (uploadMedia.isReaderSupported (mediaData.getName));
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.CATEGORY) then
            stringBuffer.delete (0, stringBuffer.length);
            stringBuffer.append (To_Unbounded_String ("Is Image Type: "));
            stringBuffer.append (mediaData.getName);
            stringBuffer.append (To_Unbounded_String (" supported: "));
            stringBuffer.appendboolean (isMediaSupported);
            This.logUtil.putF (stringBuffer.toString, InventoryUploadMediaUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("saveFiles()"));
        end if;
        defaultMediaData := MediaData_Package.getDefault;
        This.setFileNames (fileName);
        if isMediaSupported then
            isMediaResizable := uploadMedia.isWriterMedia (mediaData.getName, MediaTypeData_Package.getInstance.RESIZABLE_MEDIA);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.CATEGORY) then
                stringBuffer.delete (0, stringBuffer.length);
                stringBuffer.append (To_Unbounded_String ("Is "));
                stringBuffer.append (mediaData.toString);
                stringBuffer.append (To_Unbounded_String (" Image Resize Supported:"));
                stringBuffer.appendboolean (uploadMedia.isSupported (mediaData.getName));
                stringBuffer.append (To_Unbounded_String (" WriterMedia: "));
                stringBuffer.appendboolean (isMediaResizable);
                This.logUtil.putF (stringBuffer.toString, InventoryUploadMediaUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("saveFiles()"));
            end if;
            if isMediaResizable then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.CATEGORY) then
                    This.logUtil.putF (To_Unbounded_String ("Saving Small Image: ") & Java_Image (This.itemInterface.getSmallImage), InventoryUploadMediaUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("saveFiles()"));
                end if;
                This.mediaUtil.saveImageFile (originalImageFile, This.itemInterface.getSmallImage, fullPath, mediaData, This.SMALLWIDTH, This.SMALLHEIGHT);
                This.mediaUtil.saveImageFile (originalImageFile, This.itemInterface.getMediumImage, fullPath, mediaData, This.MEDIUMWIDTH, This.MEDIUMHEIGHT);
                This.mediaUtil.saveImageFile (originalImageFile, This.itemInterface.getLargeImage, fullPath, mediaData, This.LARGEWIDTH, This.LARGEHEIGHT);
            else
                isConvertable := mediaData.isConvertableTo (defaultMediaData);
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.CATEGORY) then
                    stringBuffer.delete (0, stringBuffer.length);
                    stringBuffer.append (To_Unbounded_String ("Converting: "));
                    stringBuffer.append (defaultMediaData.getName);
                    stringBuffer.append (To_Unbounded_String (" into "));
                    stringBuffer.append (mediaData.getName);
                    stringBuffer.append (To_Unbounded_String (" if Convertable is it: "));
                    stringBuffer.appendboolean (isConvertable);
                    This.logUtil.putF (stringBuffer.toString, InventoryUploadMediaUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("saveFiles()"));
                end if;
                if isConvertable then
                    if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.CATEGORY) then
                        This.logUtil.putF (To_Unbounded_String ("Saving Small Image: ") & Java_Image (This.itemInterface.getSmallImage), InventoryUploadMediaUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("saveFiles()"));
                    end if;
                    This.mediaUtil.saveImageFile (originalImageFile, This.itemInterface.getSmallImage, fullPath, defaultMediaData, This.SMALLWIDTH, This.SMALLHEIGHT);
                    This.mediaUtil.saveImageFile (originalImageFile, This.itemInterface.getMediumImage, fullPath, defaultMediaData, This.MEDIUMWIDTH, This.MEDIUMHEIGHT);
                    This.mediaUtil.saveImageFile (originalImageFile, This.itemInterface.getLargeImage, fullPath, defaultMediaData, This.LARGEWIDTH, This.LARGEHEIGHT);
                else
                    smallImageFile := AbFile_Package.createAbFile (This.itemInterface.getSmallImage);
                    smallImageFile.createNewFile;
                    fileUtil.write (ByteArrayInputStream_Package.Create (byteArray), smallImageFile);
                    mediumImageFile := AbFile_Package.createAbFile (This.itemInterface.getMediumImage);
                    smallImageFile.createNewFile;
                    fileUtil.write (ByteArrayInputStream_Package.Create (byteArray), mediumImageFile);
                    largeImageFile := AbFile_Package.createAbFile (This.itemInterface.getSmallImage);
                    largeImageFile.createNewFile;
                    fileUtil.write (ByteArrayInputStream_Package.Create (byteArray), largeImageFile);
                end if;
            end if;
        end if;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.CATEGORY) then
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.putF (commonStrings.END_Id, InventoryUploadMediaUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("saveFiles()"));
        end if;
        return This.itemInterface;
   end saveFiles;

   procedure setFileNames (This : in out InventoryUploadMediaUtil; fileName : Unbounded_String) is
      stringBuffer : StringMaker_Access;
      END_Id : Unbounded_String;
      newImageFileName : Unbounded_String;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.itemInterface.getId);
        stringBuffer.append (AbPathData_Package.getInstance.EXTENSION_SEP);
        stringBuffer.append (MediaData_Package.getDefault.getName);
        END_Id := stringBuffer.toString;
        stringBuffer.delete (0, stringBuffer.length);
        stringBuffer.append (fileName);
        stringBuffer.append (This.SMALL);
        stringBuffer.append (END_Id);
        newImageFileName := stringBuffer.toString;
        This.itemInterface.setSmallImage (newImageFileName);
        stringBuffer.delete (0, stringBuffer.length);
        stringBuffer.append (fileName);
        stringBuffer.append (This.MEDIUM);
        stringBuffer.append (END_Id);
        newImageFileName := stringBuffer.toString;
        This.itemInterface.setMediumImage (newImageFileName);
        stringBuffer.delete (0, stringBuffer.length);
        stringBuffer.append (fileName);
        stringBuffer.append (This.LARGE);
        stringBuffer.append (END_Id);
        newImageFileName := stringBuffer.toString;
        This.itemInterface.setLargeImage (newImageFileName);
   end setFileNames;

   procedure saveFiles (This : in out InventoryUploadMediaUtil; byteArray : Short_Short_Integer_Array_Access; fileName : Unbounded_String; mediaData_Param : access MediaData_Package.MediaData'Class) is
      Java_Result : constant ItemInterface_Access := InventoryUploadMediaUtil'Class (This).saveFiles (byteArray, fileName, mediaData_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end saveFiles;

end views.admin.inventory.InventoryUploadMediaUtil_Package;


