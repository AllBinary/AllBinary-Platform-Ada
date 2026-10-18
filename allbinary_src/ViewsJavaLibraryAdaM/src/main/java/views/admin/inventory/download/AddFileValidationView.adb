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


with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package; use org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItemValidation_Package; use org.allbinary.business.user.commerce.inventory.item.BasicItemValidation_Package;
with org.allbinary.business.user.commerce.inventory.item.download.DownloadItemData_Package; use org.allbinary.business.user.commerce.inventory.item.download.DownloadItemData_Package;
with org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package; use org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package;
with org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemValidation_Package; use org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemValidation_Package;
with org.allbinary.business.user.commerce.money.MoneyException_Package; use org.allbinary.business.user.commerce.money.MoneyException_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package; use org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package; use org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package;
with org.allbinary.globals.GLOBALS2_Package; use org.allbinary.globals.GLOBALS2_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil_Package; use org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.FileData_Package; use org.allbinary.logic.io.file.FileData_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.apache.commons.fileupload.FileItem_Package; use org.apache.commons.fileupload.FileItem_Package;

package body views.admin.inventory.download.AddFileValidationView_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package StoreFrontFactory_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package BasicItemValidation_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.BasicItemValidation_Package;
   package DownloadItemData_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.download.DownloadItemData_Package;
   package DownloadableItem_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package;
   package DownloadableItemValidation_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemValidation_Package;
   package MoneyException_Package renames Standard.org.allbinary.business.user.commerce.money.MoneyException_Package;
   package InventoryEntity_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package;
   package InventoryEntityFactory_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package;
   package GLOBALS2_Package renames Standard.org.allbinary.globals.GLOBALS2_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package HttpFileUploadUtil_Package renames Standard.org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package FileData_Package renames Standard.org.allbinary.logic.io.file.FileData_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package FileItem_Package renames Standard.org.apache.commons.fileupload.FileItem_Package;
   procedure Initialize_Fields (This : in out AddFileValidationView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.basicItemData := BasicItemData_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out AddFileValidationView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        DownloadableInventoryItemView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return AddFileValidationView_Access is
      This : constant AddFileValidationView_Access := new AddFileValidationView;
   begin
      AddFileValidationView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   function isValid (This : in out AddFileValidationView) return Boolean is
      command : Unbounded_String;
      inventoryEntity : InventoryEntity_Access;
      storeFrontInterface : StoreFrontInterface_Access;
      fullCategory : Unbounded_String;
      categoryFile : AbFile_Access;
      downloadableFileObject : Java_Object_Access;
      fileItem : FileItem_Access;
      fileName : Unbounded_String;
      size : Long_Long_Integer;
      licenseFileObject : Java_Object_Access;
      extraFilesObject : Java_Object_Access;
      hashMap : HashMap_Access;
      licenseObject : Java_Object_Access;
      fileObject : Java_Object_Access;
      downloadableItemValidation : DownloadableItemValidation_Access;
   begin
        begin
            command := Java_Unbox (AddFileValidationView'Class (This).getRequestHashMap.get (GLOBALS2_Package.ADMINCOMMAND));
            if (StringValidationUtil_Package.getInstance.isEmpty (command)) or else ((((Java_Compare_To (command, AddFileValidationView_Package.ADDPRODUCT)) /= (0)) and then ((Java_Compare_To (command, ADDANOTHERDOWNLOADABLE)) /= (0)))) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                    This.logUtil.putF (To_Unbounded_String ("Invalid AdminCommand=") & command, AddFileValidationView_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
                end if;
                return False;
            end if;
            begin
                inventoryEntity := InventoryEntityFactory_Package.getInstance.getInventoryEntityInstance;
                This.itemInterface := inventoryEntity.getItem (This.id);
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                    This.logUtil.put (To_Unbounded_String ("Existing Item With MoneyException"), AddFileValidationView_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID, e);
                end if;
                    end;
            end;
            if (This.itemInterface) = (null) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                    This.logUtil.putF (To_Unbounded_String ("Item Does Not Exist"), AddFileValidationView_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
                end if;
                return False;
            end if;
            if (BasicItemValidation_Package.Create (This.itemInterface).isValid) = (False) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                    This.logUtil.putF (To_Unbounded_String ("BasicItem is not valid"), AddFileValidationView_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
                end if;
                return False;
            end if;
            storeFrontInterface := StoreFrontFactory_Package.getInstance (AddFileValidationView'Class (This).getWeblisketSession.getStoreName);
            fullCategory := StringMaker_Package.Create.append (URLGLOBALS_Package.getWebappPath).append (storeFrontInterface.getCurrentHostNamePath).append (This.itemInterface.getCategory).toString;
            categoryFile := AbFile_Package.createAbFile (fullCategory);
            if not (categoryFile.isDirectory) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                    This.logUtil.putF (To_Unbounded_String ("Category Does Not Exist: ") & fullCategory, AddFileValidationView_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
                end if;
                return False;
            end if;
            downloadableFileObject := AddFileValidationView'Class (This).getRequestHashMap.get (DownloadItemData_Package.FILE);
            if HttpFileUploadUtil_Package.getInstance.isValid (downloadableFileObject) then
                fileItem := FileItem_Access (downloadableFileObject);
                fileName := fileItem.getName;
                size := fileItem.getSize;
                HttpFileUploadUtil_Package.log (fileItem);
                if (AddFileValidationView'Class (This).isValid (fileName, size)) = (False) then
                    return False;
                else
                    AddFileValidationView'Class (This).processFile (fileItem);
                    AddFileValidationView'Class (This).getRequestHashMap.put (DownloadItemData_Package.SIZE, To_Unbounded_String (Java_Image (size)));
                end if;
            else
                AddFileValidationView'Class (This).getRequestHashMap.remove (DownloadItemData_Package.FILE);
            end if;
            licenseFileObject := AddFileValidationView'Class (This).getRequestHashMap.get (DownloadItemData_Package.LICENSE_FILE);
            if HttpFileUploadUtil_Package.getInstance.isValid (licenseFileObject) then
                fileItem := FileItem_Access (licenseFileObject);
                fileName := fileItem.getName;
                size := fileItem.getSize;
                HttpFileUploadUtil_Package.log (fileItem);
                if (AddFileValidationView'Class (This).isValid (fileName, size)) = (False) then
                    null;
                else
                    AddFileValidationView'Class (This).processFile (fileItem);
                end if;
            else
                AddFileValidationView'Class (This).getRequestHashMap.remove (DownloadItemData_Package.LICENSE_FILE);
            end if;
            extraFilesObject := AddFileValidationView'Class (This).getRequestHashMap.get (DownloadItemData_Package.EXTRA_FILES);
            if HttpFileUploadUtil_Package.getInstance.isValid (extraFilesObject) then
                fileItem := FileItem_Access (extraFilesObject);
                fileName := fileItem.getName;
                size := fileItem.getSize;
                HttpFileUploadUtil_Package.log (fileItem);
                if (AddFileValidationView'Class (This).isValid (fileName, size)) = (False) then
                    null;
                else
                    AddFileValidationView'Class (This).processFile (fileItem);
                    AddFileValidationView'Class (This).unzip (fileItem);
                end if;
            else
                AddFileValidationView'Class (This).getRequestHashMap.remove (DownloadItemData_Package.EXTRA_FILES);
            end if;
            hashMap := AddFileValidationView'Class (This).getRequestHashMap;
            hashMap.put (This.basicItemData.ID, This.itemInterface.getId);
            licenseObject := hashMap.get (DownloadItemData_Package.LICENSE_FILE);
            if (licenseObject) /= (null) then
                hashMap.put (DownloadItemData_Package.LICENSE_FILE, Java_Box ((FileItem_Access (licenseObject)).getName));
            else
                hashMap.put (DownloadItemData_Package.LICENSE_FILE, StringUtil_Package.getInstance.EMPTY_STRING);
            end if;
            fileObject := hashMap.get (DownloadItemData_Package.FILE);
            if (fileObject) /= (null) then
                hashMap.put (DownloadItemData_Package.FILE, Java_Box ((FileItem_Access (fileObject)).getName));
            else
                hashMap.put (DownloadItemData_Package.FILE, StringUtil_Package.getInstance.EMPTY_STRING);
            end if;
            This.downloadableItem := DownloadableItem_Package.Create (hashMap);
            downloadableItemValidation := DownloadableItemValidation_Package.Create (This.downloadableItem);
            if (downloadableItemValidation.isValid) = (False) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                    This.logUtil.putF (To_Unbounded_String ("DownloadableItem is not valid"), AddFileValidationView_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
                end if;
                return False;
            end if;
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Exception in validation"), AddFileValidationView_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID, e);
            end if;
            return False;
                end;
        end;
   end isValid;

   function toValidationInfoDoc (This : in out AddFileValidationView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out AddFileValidationView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   function validationInfo (This : in out AddFileValidationView) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      command : Unbounded_String;
      ITEM_NOT_FOUND : Unbounded_String;
      basicItemValidation : BasicItemValidation_Access;
      storeFrontInterface : StoreFrontInterface_Access;
      fullCategory : Unbounded_String;
      categoryFile : AbFile_Access;
      downloadableFileObject : Java_Object_Access;
      fileItem : FileItem_Access;
      fileName : Unbounded_String;
      size : Long_Long_Integer;
      licenseFileObject : Java_Object_Access;
      extraFilesObject : Java_Object_Access;
      downloadableItemValidation : DownloadableItemValidation_Access;
      log : Unbounded_String;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            command := Java_Unbox (AddFileValidationView'Class (This).getRequestHashMap.get (GLOBALS2_Package.ADMINCOMMAND));
            if (StringValidationUtil_Package.getInstance.isEmpty (command)) or else ((((Java_Compare_To (command, AddFileValidationView_Package.ADDPRODUCT)) /= (0)) and then ((Java_Compare_To (command, ADDANOTHERDOWNLOADABLE)) /= (0)))) then
                return StringUtil_Package.getInstance.EMPTY_STRING;
            end if;
            if (This.itemInterface) = (null) then
                ITEM_NOT_FOUND := To_Unbounded_String ("Item Does Not Exist");
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                    This.logUtil.putF (ITEM_NOT_FOUND, AddFileValidationView_Access'(This'Unchecked_Access), To_Unbounded_String ("validationInfo()"));
                end if;
                return ITEM_NOT_FOUND;
            end if;
            basicItemValidation := BasicItemValidation_Package.Create (This.itemInterface);
            if (basicItemValidation.isValid) = (False) then
                stringBuffer.append (basicItemValidation.validationInfo);
                stringBuffer.append (To_Unbounded_String ("<br/>"));
            end if;
            storeFrontInterface := StoreFrontFactory_Package.getInstance (AddFileValidationView'Class (This).getWeblisketSession.getStoreName);
            fullCategory := StringMaker_Package.Create.append (URLGLOBALS_Package.getWebappPath).append (storeFrontInterface.getCurrentHostNamePath).append (This.itemInterface.getCategory).toString;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("Category: ") & fullCategory, AddFileValidationView_Access'(This'Unchecked_Access), To_Unbounded_String ("validationInfo()"));
            end if;
            categoryFile := AbFile_Package.createAbFile (fullCategory);
            if not (categoryFile.isDirectory) then
                stringBuffer.append (To_Unbounded_String ("Category "));
                stringBuffer.append (This.itemInterface.getCategory);
                stringBuffer.append (To_Unbounded_String (" does not exist."));
                stringBuffer.append (To_Unbounded_String ("<br />"));
            end if;
            downloadableFileObject := AddFileValidationView'Class (This).getRequestHashMap.get (DownloadItemData_Package.FILE);
            if HttpFileUploadUtil_Package.getInstance.isValid (downloadableFileObject) then
                fileItem := FileItem_Access (downloadableFileObject);
                fileName := fileItem.getName;
                size := fileItem.getSize;
                AddFileValidationView'Class (This).validationInfo (stringBuffer, fileName, size);
            else
                stringBuffer.append (To_Unbounded_String ("Download File Missing"));
                stringBuffer.append (To_Unbounded_String ("<br/>"));
            end if;
            licenseFileObject := AddFileValidationView'Class (This).getRequestHashMap.get (DownloadItemData_Package.LICENSE_FILE);
            if HttpFileUploadUtil_Package.getInstance.isValid (licenseFileObject) then
                fileItem := FileItem_Access (licenseFileObject);
                fileName := fileItem.getName;
                size := fileItem.getSize;
                AddFileValidationView'Class (This).validationInfo (stringBuffer, fileName, size);
            else
                null;
            end if;
            extraFilesObject := AddFileValidationView'Class (This).getRequestHashMap.get (DownloadItemData_Package.EXTRA_FILES);
            if HttpFileUploadUtil_Package.getInstance.isValid (extraFilesObject) then
                fileItem := FileItem_Access (extraFilesObject);
                fileName := fileItem.getName;
                size := fileItem.getSize;
                AddFileValidationView'Class (This).validationInfo (stringBuffer, fileName, size);
            else
                null;
            end if;
            if (This.downloadableItem) /= (null) then
                downloadableItemValidation := DownloadableItemValidation_Package.Create (This.downloadableItem);
                if (downloadableItemValidation.isValid) = (False) then
                    log := downloadableItemValidation.validationInfo;
                    if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                        This.logUtil.putF (log, AddFileValidationView_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
                    end if;
                    stringBuffer.append (log);
                    stringBuffer.append (To_Unbounded_String ("<br/>"));
                end if;
            end if;
            return stringBuffer.toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation error info"), AddFileValidationView_Access'(This'Unchecked_Access), To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Getting Validation Info");
                end;
        end;
   end validationInfo;

   --  throws Exception
   function isValid (This : in out AddFileValidationView; fileName : Unbounded_String; size : Long_Long_Integer) return Boolean is
      fileData : FileData_Access;
      stringBuffer : StringMaker_Access;
   begin
        fileData := FileData_Package.getInstance;
        if (size) > (fileData.MINDOWNLOADABLEFILESIZE) then
            if (size) < (fileData.MAXDOWNLOADABLEFILESIZE) then
                if not (StringValidationUtil_Package.getInstance.isValidRequired (fileName, fileData.MINLEN, fileData.MAXLEN)) then
                    if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                        stringBuffer := StringMaker_Package.Create;
                        stringBuffer.append (To_Unbounded_String ("File name is not valid: "));
                        stringBuffer.append (fileName);
                        This.logUtil.putF (stringBuffer.toString, AddFileValidationView_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
                    end if;
                    return False;
                else
                    null;
                end if;
            else
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                    stringBuffer := StringMaker_Package.Create;
                    stringBuffer.append (To_Unbounded_String ("File Size To Large: "));
                    stringBuffer.appendlong (size);
                    stringBuffer.append (To_Unbounded_String (">"));
                    stringBuffer.appendint (Integer (fileData.MAXDOWNLOADABLEFILESIZE));
                    This.logUtil.putF (stringBuffer.toString, AddFileValidationView_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
                end if;
                return False;
            end if;
        else
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                stringBuffer := StringMaker_Package.Create;
                stringBuffer.append (To_Unbounded_String ("File Size To Small: "));
                stringBuffer.appendlong (size);
                stringBuffer.append (To_Unbounded_String (">"));
                stringBuffer.appendint (Integer (fileData.MINDOWNLOADABLEFILESIZE));
                This.logUtil.putF (stringBuffer.toString, AddFileValidationView_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
            end if;
            return False;
        end if;
        return True;
   end isValid;

   procedure validationInfo (This : in out AddFileValidationView; stringBuffer_Param : access StringMaker_Package.StringMaker'Class; fileName : Unbounded_String; size : Long_Long_Integer) is
      stringBuffer : constant StringMaker_Access := StringMaker_Access (stringBuffer_Param);
      fileData : FileData_Access;
   begin
        fileData := FileData_Package.getInstance;
        if (size) > (fileData.MINDOWNLOADABLEFILESIZE) then
            if (size) < (fileData.MAXDOWNLOADABLEFILESIZE) then
                if not (StringValidationUtil_Package.getInstance.isValidRequired (fileName, fileData.MINLEN, fileData.MAXLEN)) then
                    stringBuffer.append (To_Unbounded_String ("File Name must be more than "));
                    stringBuffer.appendint (Integer (fileData.MINLEN));
                    stringBuffer.append (To_Unbounded_String (" and less than "));
                    stringBuffer.appendint (Integer (fileData.MAXLEN));
                    stringBuffer.append (To_Unbounded_String (" characters in length: "));
                    stringBuffer.append (fileName);
                    stringBuffer.append (To_Unbounded_String ("<br/>"));
                else
                    null;
                end if;
            else
                stringBuffer.append (To_Unbounded_String ("File Is Not The Right Size. "));
                stringBuffer.appendint (Integer (fileData.MINDOWNLOADABLEFILESIZE));
                stringBuffer.append (To_Unbounded_String ("< >"));
                stringBuffer.appendint (Integer (fileData.MAXDOWNLOADABLEFILESIZE));
                stringBuffer.append (To_Unbounded_String ("<br/>"));
            end if;
        end if;
   end validationInfo;

   procedure toValidationInfoNode (This : in out AddFileValidationView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := AddFileValidationView'Class (This).toValidationInfoNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

   procedure isValid (This : in out AddFileValidationView; fileName : Unbounded_String; size : Long_Long_Integer) is
      Java_Result : constant Boolean := AddFileValidationView'Class (This).isValid (fileName => fileName, size => size);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

begin
   null;
   ADDPRODUCT := To_Unbounded_String ("Finish");
   ADDANOTHERDOWNLOADABLE := To_Unbounded_String ("Add Another");

end views.admin.inventory.download.AddFileValidationView_Package;


