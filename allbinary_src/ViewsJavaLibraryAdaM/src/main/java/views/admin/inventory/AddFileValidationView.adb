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


with org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package; use org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItemValidation_Package; use org.allbinary.business.user.commerce.inventory.item.BasicItemValidation_Package;
with org.allbinary.business.user.commerce.money.MoneyException_Package; use org.allbinary.business.user.commerce.money.MoneyException_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package; use org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package;
with org.allbinary.globals.GLOBALS2_Package; use org.allbinary.globals.GLOBALS2_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil_Package; use org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil_Package;
with org.allbinary.logic.communication.http.file.upload.media.UploadMediaSingleton_Package; use org.allbinary.logic.communication.http.file.upload.media.UploadMediaSingleton_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.FileData_Package; use org.allbinary.logic.io.file.FileData_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.apache.commons.fileupload.FileItem_Package; use org.apache.commons.fileupload.FileItem_Package;

package body views.admin.inventory.AddFileValidationView_Package is

   package StoreFrontFactory_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package BasicItemValidation_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.BasicItemValidation_Package;
   package MoneyException_Package renames Standard.org.allbinary.business.user.commerce.money.MoneyException_Package;
   package InventoryEntityFactory_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package;
   package GLOBALS2_Package renames Standard.org.allbinary.globals.GLOBALS2_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package HttpFileUploadUtil_Package renames Standard.org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil_Package;
   package UploadMediaSingleton_Package renames Standard.org.allbinary.logic.communication.http.file.upload.media.UploadMediaSingleton_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package FileData_Package renames Standard.org.allbinary.logic.io.file.FileData_Package;
   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
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
        InventoryItemView_Package.Initialize (This, transformInfoInterface);
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
      stringBuffer : StringMaker_Access;
      basicItemValidation : BasicItemValidation_Access;
      storeFrontInterface : StoreFrontInterface_Access;
      fullCategory : Unbounded_String;
      categoryFile : AbFile_Access;
      imageFileItemObject : Java_Object_Access;
      fileItem : FileItem_Access;
      fileName : Unbounded_String;
      size : Long_Long_Integer;
   begin
        begin
            command := Java_Unbox (AddFileValidationView'Class (This).getRequestHashMap.get (GLOBALS2_Package.ADMINCOMMAND));
            if (StringValidationUtil_Package.getInstance.isEmpty (command)) or else ((((Java_Compare_To (command, AddFileValidationView_Package.ADDPRODUCT)) /= (0)) and then ((Java_Compare_To (command, NEXTSTEP)) /= (0)))) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                    stringBuffer := StringMaker_Package.Create;
                    stringBuffer.append (To_Unbounded_String ("Invalid AdminCommand: "));
                    stringBuffer.append (command);
                    stringBuffer.append (To_Unbounded_String (" must be: "));
                    stringBuffer.append (AddFileValidationView_Package.ADDPRODUCT);
                    stringBuffer.append (To_Unbounded_String (" or "));
                    stringBuffer.append (AddFileValidationView_Package.NEXTSTEP);
                    This.logUtil.putF (stringBuffer.toString, AddFileValidationView_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
                end if;
                return False;
            end if;
            basicItemValidation := BasicItemValidation_Package.Create (This.itemInterface);
            if (basicItemValidation.isValid) = (False) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                    This.logUtil.putF (basicItemValidation.validationInfo, AddFileValidationView_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
                end if;
                return False;
            end if;
            storeFrontInterface := StoreFrontFactory_Package.getInstance (AddFileValidationView'Class (This).getWeblisketSession.getStoreName);
            This.itemInterface.setCategory ((storeFrontInterface.getCategoryPath) + (This.itemInterface.getCategory));
            fullCategory := StringMaker_Package.Create.append (URLGLOBALS_Package.getWebappPath).append (storeFrontInterface.getCurrentHostNamePath).append (This.itemInterface.getCategory).toString;
            categoryFile := AbFile_Package.createAbFile (fullCategory);
            if not (categoryFile.isDirectory) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                    This.logUtil.putF (To_Unbounded_String ("Category Does Not Exist: ") & fullCategory, AddFileValidationView_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
                end if;
                return False;
            end if;
            if (InventoryEntityFactory_Package.getInstance.getInventoryEntityInstance.getItem (This.itemInterface.getId)) /= (null) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                    This.logUtil.putF (To_Unbounded_String ("Item Already Exists"), AddFileValidationView_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
                end if;
                return False;
            end if;
            imageFileItemObject := AddFileValidationView'Class (This).getRequestHashMap.get (This.basicItemData.IMAGE);
            if HttpFileUploadUtil_Package.getInstance.isValid (imageFileItemObject) then
                fileItem := FileItem_Access (imageFileItemObject);
                fileName := fileItem.getName;
                size := fileItem.getSize;
                HttpFileUploadUtil_Package.log (fileItem);
                if (AddFileValidationView'Class (This).isValid (fileName, size)) = (False) then
                    return False;
                end if;
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
      basicItemValidation : BasicItemValidation_Access;
      storeFrontInterface : StoreFrontInterface_Access;
      fullCategory : Unbounded_String;
      categoryFile : AbFile_Access;
      anyType : Java_Object_Access;
      fileItem : FileItem_Access;
      fileName : Unbounded_String;
      fileItemFieldName : Unbounded_String;
      size : Long_Long_Integer;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            command := Java_Unbox (AddFileValidationView'Class (This).getRequestHashMap.get (GLOBALS2_Package.ADMINCOMMAND));
            if (StringValidationUtil_Package.getInstance.isEmpty (command)) or else ((((Java_Compare_To (command, AddFileValidationView_Package.ADDPRODUCT)) /= (0)) and then ((Java_Compare_To (command, NEXTSTEP)) /= (0)))) then
                return StringUtil_Package.getInstance.EMPTY_STRING;
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
                stringBuffer.append (To_Unbounded_String (" does not exist.<br />"));
            end if;
            begin
                if (InventoryEntityFactory_Package.getInstance.getInventoryEntityInstance.getItem (This.itemInterface.getId)) /= (null) then
                    stringBuffer.append (To_Unbounded_String ("Id is already in use. Refresh the page for a valid id.<br/>"));
                end if;
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                    This.logUtil.putF (To_Unbounded_String ("Existing Item With MoneyException"), AddFileValidationView_Access'(This'Unchecked_Access), To_Unbounded_String ("validationInfo()"));
                end if;
                    end;
            end;
            anyType := AddFileValidationView'Class (This).getRequestHashMap.get (This.basicItemData.IMAGE);
            if HttpFileUploadUtil_Package.getInstance.isValid (anyType) then
                fileItem := FileItem_Access (anyType);
                fileName := fileItem.getName;
                fileItemFieldName := fileItem.getFieldName;
                size := fileItem.getSize;
                AddFileValidationView'Class (This).validationInfo (stringBuffer, fileName, fileItemFieldName, size);
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
      pathData : AbPathData_Access;
      extension : Unbounded_String;
      uploadMedia : UploadMediaSingleton_Access;
   begin
        fileData := FileData_Package.getInstance;
        if (size) > (fileData.MINIMAGEFILESIZE) then
            if (size) < (fileData.MAXIMAGEFILESIZE) then
                if not (StringValidationUtil_Package.getInstance.isValidRequired (fileName, fileData.MINLEN, fileData.MAXLEN)) then
                    return False;
                else
                    pathData := AbPathData_Package.getInstance;
                    extension := pathData.getExtension (fileName);
                    uploadMedia := UploadMediaSingleton_Package.getInstance;
                    if (not (uploadMedia.isWriterSupported (extension))) and then (not (uploadMedia.isReaderSupported (extension))) then
                        return False;
                    end if;
                end if;
            else
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                    stringBuffer := StringMaker_Package.Create;
                    stringBuffer.append (To_Unbounded_String ("File Size To Large: "));
                    stringBuffer.appendlong (size);
                    stringBuffer.append (To_Unbounded_String (">"));
                    stringBuffer.appendint (Integer (fileData.MAXIMAGEFILESIZE));
                    This.logUtil.putF (stringBuffer.toString, AddFileValidationView_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
                end if;
                return False;
            end if;
            AddFileValidationView'Class (This).processImageFiles;
        else
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                stringBuffer := StringMaker_Package.Create;
                stringBuffer.append (To_Unbounded_String ("File Size To Small: "));
                stringBuffer.appendlong (size);
                stringBuffer.append (To_Unbounded_String (">"));
                stringBuffer.appendint (Integer (fileData.MINIMAGEFILESIZE));
                This.logUtil.putF (stringBuffer.toString, AddFileValidationView_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
            end if;
            return False;
        end if;
        return True;
   end isValid;

   procedure validationInfo (This : in out AddFileValidationView; stringBuffer_Param : access StringMaker_Package.StringMaker'Class; fileName : Unbounded_String; fileItemFieldName : Unbounded_String; size : Long_Long_Integer) is
      stringBuffer : constant StringMaker_Access := StringMaker_Access (stringBuffer_Param);
      fileData : FileData_Access;
      pathData : AbPathData_Access;
      extension : Unbounded_String;
      uploadMedia : UploadMediaSingleton_Access;
   begin
        fileData := FileData_Package.getInstance;
        if (size) > (fileData.MINIMAGEFILESIZE) then
            if (Java_Compare_To (fileItemFieldName, This.basicItemData.IMAGE)) = (0) then
                if (size) < (fileData.MAXIMAGEFILESIZE) then
                    if not (StringValidationUtil_Package.getInstance.isValidRequired (fileName, fileData.MINLEN, fileData.MAXLEN)) then
                        stringBuffer.append (To_Unbounded_String ("FileName must be >"));
                        stringBuffer.appendint (Integer (fileData.MINLEN));
                        stringBuffer.append (To_Unbounded_String (" and <"));
                        stringBuffer.appendint (Integer (fileData.MAXLEN));
                        stringBuffer.append (To_Unbounded_String ("<br/>"));
                    else
                        pathData := AbPathData_Package.getInstance;
                        extension := pathData.getExtension (fileName);
                        uploadMedia := UploadMediaSingleton_Package.getInstance;
                        if (not (uploadMedia.isWriterSupported (extension))) and then (not (uploadMedia.isReaderSupported (extension))) then
                            stringBuffer.append (To_Unbounded_String ("Image type: "));
                            stringBuffer.append (extension);
                            stringBuffer.append (To_Unbounded_String (" not supported.<br />"));
                        end if;
                    end if;
                else
                    stringBuffer.append (To_Unbounded_String ("Image File Is To Large. "));
                    stringBuffer.appendint (Integer (fileData.MINIMAGEFILESIZE));
                    stringBuffer.append (To_Unbounded_String (" < > "));
                    stringBuffer.appendint (Integer (fileData.MAXIMAGEFILESIZE));
                    stringBuffer.append (To_Unbounded_String ("<br/>"));
                end if;
            end if;
        else
            stringBuffer.append (To_Unbounded_String ("Image File Is To Small. "));
            stringBuffer.appendint (Integer (fileData.MINIMAGEFILESIZE));
            stringBuffer.append (To_Unbounded_String (" < > "));
            stringBuffer.appendint (Integer (fileData.MAXIMAGEFILESIZE));
            stringBuffer.append (To_Unbounded_String ("<br/>"));
        end if;
   end validationInfo;

   procedure toValidationInfoNode (This : in out AddFileValidationView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := AddFileValidationView'Class (This).toValidationInfoNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

   procedure isValid (This : in out AddFileValidationView; fileName : Unbounded_String; size : Long_Long_Integer) is
      Java_Result : constant Boolean := AddFileValidationView'Class (This).isValid (fileName, size);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

begin
   null;
   ADDPRODUCT := To_Unbounded_String ("Add Product");
   NEXTSTEP := Java_Image (CommonLabels_Package.getInstance.NEXT) & To_Unbounded_String (" Step");

end views.admin.inventory.AddFileValidationView_Package;


