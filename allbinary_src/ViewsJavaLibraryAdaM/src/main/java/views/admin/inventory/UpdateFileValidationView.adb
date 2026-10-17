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


package body views.admin.inventory.UpdateFileValidationView_Package is

   procedure Initialize_Fields (This : in out UpdateFileValidationView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out UpdateFileValidationView'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        InventoryItemView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return UpdateFileValidationView_Access is
      This : constant UpdateFileValidationView_Access := new UpdateFileValidationView;
   begin
      Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   function isValid (This : in out UpdateFileValidationView) return Boolean is
      command : Unbounded_String;
      storeFrontInterface : StoreFrontInterface_Access;
      stringBuffer : StringMaker_Access;
      fullCategory : Unbounded_String;
      categoryFile : AbFile_Access;
      inventoryEntity : InventoryEntity_Access;
      anyType : Java_Object_Access;
      fileItem : FileItem_Access;
      size : Long_Long_Integer;
      fileName : Unbounded_String;
   begin
        begin
            command := Unbounded_String (This.getRequestHashMap.get (GLOBALS2.ADMINCOMMAND));
            if ((command) = (Null_Unbounded_String)) or else ((command.compareTo (UpdateFileValidationView_Package.UPDATEPRODUCT)) /= (0)) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                    This.logUtil.putF (To_Unbounded_String ("Invalid AdminCommand=") & command, This'Unchecked_Access, This.commonStrings.IS_VALID);
                end if;
                return False;
            end if;
            if (BasicItemValidation_Package.Create (This.itemInterface).isValid) = (False) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                    This.logUtil.putF (To_Unbounded_String ("BasicItem is not valid"), This'Unchecked_Access, This.commonStrings.IS_VALID);
                end if;
                return False;
            end if;
            storeFrontInterface := StoreFrontFactory_Package.getInstance (This.getWeblisketSession.getStoreName);
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (URLGLOBALS.getWebappPath);
            stringBuffer.append (storeFrontInterface.getCurrentHostNamePath);
            stringBuffer.append (This.itemInterface.getCategory);
            fullCategory := stringBuffer.toString;
            categoryFile := AbFile_Package.createAbFile (fullCategory);
            if not (categoryFile.isDirectory) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                    This.logUtil.putF (To_Unbounded_String ("Category Does Not Exist: ") & fullCategory, This'Unchecked_Access, This.commonStrings.IS_VALID);
                end if;
                return False;
            end if;
            inventoryEntity := InventoryEntityFactory_Package.getInstance.getInventoryEntityInstance;
            if (inventoryEntity.getItem (This.itemInterface.getId)) = (null) then
                return False;
            end if;
            anyType := This.getRequestHashMap.get (This.basicItemData.IMAGE);
            if HttpFileUploadUtil_Package.getInstance.isValid (anyType) then
                fileItem := FileItem_Access (anyType);
                size := fileItem.getSize;
                fileName := fileItem.getName;
                HttpFileUploadUtil_Package.log (fileItem);
                if (This.isValid (fileName, size)) = (False) then
                    return False;
                end if;
            end if;
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.put (To_Unbounded_String ("Exception in validation"), This'Unchecked_Access, This.commonStrings.IS_VALID, e);
            end if;
            return False;
                end;
        end;
   end isValid;

   function toValidationInfoDoc (This : in out UpdateFileValidationView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out UpdateFileValidationView; document : Document_Access) return Node_Access is
   begin
        return null;
   end toValidationInfoNode;

   --  throws Exception
   function validationInfo (This : in out UpdateFileValidationView) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      command : Unbounded_String;
      storeFrontInterface : StoreFrontInterface_Access;
      fullCategory : Unbounded_String;
      anyType : Java_Object_Access;
      fileItem : FileItem_Access;
      size : Long_Long_Integer;
      fileName : Unbounded_String;
      fileItemFieldName : Unbounded_String;
   begin
        stringBuffer := StringMaker_Package.Create;
        command := Unbounded_String (This.getRequestHashMap.get (GLOBALS2.ADMINCOMMAND));
        if ((command) = (Null_Unbounded_String)) or else ((command.compareTo (UpdateFileValidationView_Package.UPDATEPRODUCT)) /= (0)) then
            return CommonSeps_Package.getInstance.SPACE;
        end if;
        stringBuffer.append (BasicItemValidation_Package.Create (This.itemInterface).validationInfo);
        storeFrontInterface := StoreFrontFactory_Package.getInstance (This.getWeblisketSession.getStoreName);
        fullCategory := ((Unbounded_String (URLGLOBALS.getWebappPath)) + (storeFrontInterface.getCurrentHostNamePath)) + (This.itemInterface.getCategory);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("Category: ") & fullCategory, This'Unchecked_Access, To_Unbounded_String ("validationInfo()"));
        end if;
        begin
            if (InventoryEntityFactory_Package.getInstance.getInventoryEntityInstance.getItem (This.itemInterface.getId)) = (null) then
                stringBuffer.append (To_Unbounded_String ("Item does not exist.<br>"));
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("Existing Item With MoneyException"), This'Unchecked_Access, To_Unbounded_String ("validationInfo()"));
            end if;
                end;
        end;
        anyType := This.getRequestHashMap.get (This.basicItemData.IMAGE);
        if HttpFileUploadUtil_Package.getInstance.isValid (anyType) then
            fileItem := FileItem_Access (anyType);
            size := fileItem.getSize;
            fileName := fileItem.getName;
            fileItemFieldName := fileItem.getFieldName;
            This.validationInfo (stringBuffer, fileName, fileItemFieldName, size);
        end if;
        return stringBuffer.toString;
   end validationInfo;

   --  throws Exception
   function isValid (This : in out UpdateFileValidationView; fileName : Unbounded_String; size : Long_Long_Integer) return Boolean is
      fileData : FileData_Access;
      stringBuffer : StringMaker_Access;
   begin
        fileData := FileData_Package.getInstance;
        if (size) > (fileData.MINIMAGEFILESIZE) then
            if (size) < (fileData.MAXIMAGEFILESIZE) then
                if not (StringValidationUtil_Package.getInstance.isValidRequired (fileName, fileData.MINLEN, fileData.MAXLEN)) then
                    return False;
                end if;
            else
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                    stringBuffer := StringMaker_Package.Create;
                    stringBuffer.append (To_Unbounded_String ("File Size To Large: "));
                    stringBuffer.appendlong (size);
                    stringBuffer.append (To_Unbounded_String (">"));
                    stringBuffer.appendint (Integer (fileData.MAXIMAGEFILESIZE));
                    This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, This.commonStrings.IS_VALID);
                end if;
                return False;
            end if;
            This.processImageFiles;
        end if;
        return True;
   end isValid;

   procedure validationInfo (This : in out UpdateFileValidationView; stringBuffer : StringMaker_Access; fileName : Unbounded_String; fileItemFieldName : Unbounded_String; size : Long_Long_Integer) is
      fileData : FileData_Access;
   begin
        fileData := FileData_Package.getInstance;
        if (size) > (fileData.MINIMAGEFILESIZE) then
            if (fileItemFieldName.compareTo (This.basicItemData.IMAGE)) = (0) then
                if (size) < (fileData.MAXIMAGEFILESIZE) then
                    if not (StringValidationUtil_Package.getInstance.isValidRequired (fileName, fileData.MINLEN, fileData.MAXLEN)) then
                        stringBuffer.append (To_Unbounded_String ("FileName must be >"));
                        stringBuffer.appendint (Integer (fileData.MINLEN));
                        stringBuffer.append (To_Unbounded_String ("and <"));
                        stringBuffer.appendint (Integer (fileData.MAXLEN));
                        stringBuffer.append (To_Unbounded_String ("<br />"));
                    end if;
                else
                    stringBuffer.append (To_Unbounded_String ("Image File Is Not The Right Size. "));
                    stringBuffer.appendint (Integer (fileData.MINIMAGEFILESIZE));
                    stringBuffer.append (To_Unbounded_String ("< > "));
                    stringBuffer.appendint (Integer (fileData.MAXIMAGEFILESIZE));
                    stringBuffer.append (To_Unbounded_String ("<br />"));
                end if;
            end if;
        end if;
   end validationInfo;

   procedure isValid (This : in out UpdateFileValidationView) is
      Java_Result : constant Boolean := UpdateFileValidationView'Class (This).isValid;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

   procedure toValidationInfoDoc (This : in out UpdateFileValidationView) is
      Java_Result : constant Document_Access := UpdateFileValidationView'Class (This).toValidationInfoDoc;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoDoc;

   procedure toValidationInfoNode (This : in out UpdateFileValidationView; document : Document_Access) is
      Java_Result : constant Node_Access := UpdateFileValidationView'Class (This).toValidationInfoNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

   procedure validationInfo (This : in out UpdateFileValidationView) is
      Java_Result : constant Unbounded_String := UpdateFileValidationView'Class (This).validationInfo;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end validationInfo;

   procedure isValid (This : in out UpdateFileValidationView; fileName : Unbounded_String; size : Long_Long_Integer) is
      Java_Result : constant Boolean := UpdateFileValidationView'Class (This).isValid (fileName, size);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

begin
   null;
   UPDATEPRODUCT := CommonStrings_Package.getInstance.UPDATE;

end views.admin.inventory.UpdateFileValidationView_Package;


