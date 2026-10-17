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


package body org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemValidation_Package is

   procedure Initialize_Fields (This : in out DownloadableItemValidation'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out DownloadableItemValidation'Class; downloadableItem : DownloadableItem_Access) is
   begin
      Validation_Package.Initialize (This);
      Initialize_Fields (This);
        This.downloadableItem := downloadableItem;
   end Initialize;

   function Create (downloadableItem : DownloadableItem_Access) return DownloadableItemValidation_Access is
      This : constant DownloadableItemValidation_Access := new DownloadableItemValidation;
   begin
      Initialize (This.all, downloadableItem);
      return This;
   end Create;

   function isValid (This : in out DownloadableItemValidation) return Boolean is
      size : Unbounded_String;
   begin
        begin
            if (((This.downloadableItem.getId) = (null)) or else ((This.downloadableItem.getId.length) < (1))) or else ((This.downloadableItem.getId.length) > (AbSqlData_Package.MAXNUM)) then
                return False;
            end if;
            if ((This.downloadableItem.getId) /= (null)) and then (not (StringValidationUtil_Package.getInstance.isNumber (This.downloadableItem.getId))) then
                return False;
            end if;
            if (((This.downloadableItem.getSystem) = (null)) or else ((This.downloadableItem.getSystem.length) < (1))) or else ((This.downloadableItem.getSystem.length) > (AbSqlData_Package.MAXSTRING)) then
                return False;
            end if;
            if (((This.downloadableItem.getPlatform) = (null)) or else ((This.downloadableItem.getPlatform.length) < (1))) or else ((This.downloadableItem.getPlatform.length) > (AbSqlData_Package.MAXSTRING)) then
                return False;
            end if;
            if (((This.downloadableItem.getSpecialName) = (null)) or else ((This.downloadableItem.getSpecialName.length) < (0))) or else ((This.downloadableItem.getSpecialName.length) > (AbSqlData_Package.MAXSTRING)) then
                return False;
            end if;
            if (((This.downloadableItem.getVersion) = (null)) or else ((This.downloadableItem.getVersion.length) < (1))) or else ((This.downloadableItem.getVersion.length) > (AbSqlData_Package.MAXSTRING)) then
                return False;
            end if;
            if (((This.downloadableItem.getChanges) = (null)) or else ((This.downloadableItem.getChanges.length) < (1))) or else ((This.downloadableItem.getChanges.length) > (AbSqlData_Package.MAXBLOB)) then
                return False;
            end if;
            if (This.downloadableItem.getSize) = (null) then
                return False;
            else
                size := This.downloadableItem.getSize.toString;
                if ((Length (size)) < (1)) or else ((Length (size)) > (AbSqlData_Package.MAXNUM)) then
                    return False;
                end if;
            end if;
            if (This.downloadableItem.getValidTime) = (null) then
                return False;
            else
                size := This.downloadableItem.getValidTime.toString;
                if ((Length (size)) < (1)) or else ((Length (size)) > (AbSqlData_Package.MAXNUM)) then
                    return False;
                end if;
            end if;
            if (This.downloadableItem.getRetries) = (null) then
                return False;
            else
                size := This.downloadableItem.getRetries.toString;
                if ((Length (size)) < (1)) or else ((Length (size)) > (AbSqlData_Package.MAXNUM)) then
                    return False;
                end if;
            end if;
            return True;
        exception
            when e : others =>
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to validate form"), This'Unchecked_Access, This.commonStrings.IS_VALID, e);
            end if;
            return False;
        end;
   end isValid;

   function validationInfo (This : in out DownloadableItemValidation) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      size : Unbounded_String;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            if (((This.downloadableItem.getId) = (null)) or else ((This.downloadableItem.getId.length) < (1))) or else ((This.downloadableItem.getId.length) > (AbSqlData_Package.MAXNUM)) then
                stringBuffer.append (To_Unbounded_String ("Id is invalid. Must be number < "));
                stringBuffer.appendint (Integer (AbSqlData_Package.MAXNUM));
                stringBuffer.append (To_Unbounded_String (" and > 0 digits.<br/>"));
            end if;
            if ((This.downloadableItem.getId) /= (null)) and then (not (StringValidationUtil_Package.getInstance.isNumber (This.downloadableItem.getId))) then
                stringBuffer.append (To_Unbounded_String ("Id is invalid. Must be > 0.<br/>"));
            end if;
            if (((This.downloadableItem.getSystem) = (null)) or else ((This.downloadableItem.getSystem.length) < (1))) or else ((This.downloadableItem.getSystem.length) > (AbSqlData_Package.MAXSTRING)) then
                stringBuffer.append (To_Unbounded_String ("System value is invalid. Must be < "));
                stringBuffer.appendint (Integer (AbSqlData_Package.MAXSTRING));
                stringBuffer.append (To_Unbounded_String (" and > 0 characters long.<br/>"));
            end if;
            if (((This.downloadableItem.getPlatform) = (null)) or else ((This.downloadableItem.getPlatform.length) < (1))) or else ((This.downloadableItem.getPlatform.length) > (AbSqlData_Package.MAXSTRING)) then
                stringBuffer.append (To_Unbounded_String ("Platform value is invalid. Must be < "));
                stringBuffer.appendint (Integer (AbSqlData_Package.MAXSTRING));
                stringBuffer.append (To_Unbounded_String (" and > 0 characters long.<br/>"));
            end if;
            if (((This.downloadableItem.getSpecialName) = (null)) or else ((This.downloadableItem.getSpecialName.length) < (0))) or else ((This.downloadableItem.getSpecialName.length) > (AbSqlData_Package.MAXSTRING)) then
                stringBuffer.append (To_Unbounded_String ("Special Name value is invalid. Must be < "));
                stringBuffer.appendint (Integer (AbSqlData_Package.MAXSTRING));
                stringBuffer.append (To_Unbounded_String (" and > 0 characters long.<br/>"));
            end if;
            if (((This.downloadableItem.getVersion) = (null)) or else ((This.downloadableItem.getVersion.length) < (1))) or else ((This.downloadableItem.getVersion.length) > (AbSqlData_Package.MAXSTRING)) then
                stringBuffer.append (To_Unbounded_String ("Version value is invalid. Must be < "));
                stringBuffer.appendint (Integer (AbSqlData_Package.MAXSTRING));
                stringBuffer.append (To_Unbounded_String (" and > 0 characters long.<br/>"));
            end if;
            if (((This.downloadableItem.getChanges) = (null)) or else ((This.downloadableItem.getChanges.length) < (0))) or else ((This.downloadableItem.getChanges.length) > (AbSqlData_Package.MAXBLOB)) then
                stringBuffer.append (To_Unbounded_String ("Changes value is invalid. Must be < "));
                stringBuffer.appendint (Integer (AbSqlData_Package.MAXBLOB));
                stringBuffer.append (To_Unbounded_String (" and >= 0 characters long.<br/>"));
            end if;
            if (This.downloadableItem.getSize) = (null) then
                stringBuffer.append (To_Unbounded_String ("File Size is null"));
            else
                size := This.downloadableItem.getSize.toString;
                if ((Length (size)) < (1)) or else ((Length (size)) > (AbSqlData_Package.MAXNUM)) then
                    stringBuffer.append (To_Unbounded_String ("File Size is invalid. Must be number < "));
                    stringBuffer.appendint (Integer (AbSqlData_Package.MAXNUM));
                    stringBuffer.append (To_Unbounded_String (" and > 0 digits.<br/>"));
                end if;
            end if;
            if (This.downloadableItem.getValidTime) = (null) then
                stringBuffer.append (To_Unbounded_String ("Valid Time is null"));
            else
                size := This.downloadableItem.getValidTime.toString;
                if ((Length (size)) < (1)) or else ((Length (size)) > (AbSqlData_Package.MAXNUM)) then
                    stringBuffer.append (To_Unbounded_String ("Valid Time is invalid. Must be number < "));
                    stringBuffer.appendint (Integer (AbSqlData_Package.MAXNUM));
                    stringBuffer.append (To_Unbounded_String (" and > 0 digits.<br/>"));
                end if;
            end if;
            if (This.downloadableItem.getRetries) = (null) then
                stringBuffer.append (To_Unbounded_String ("Retries is null"));
            else
                size := This.downloadableItem.getRetries.toString;
                if ((Length (size)) < (1)) or else ((Length (size)) > (AbSqlData_Package.MAXNUM)) then
                    stringBuffer.append (To_Unbounded_String ("Retries is invalid. Must be number < "));
                    stringBuffer.appendint (Integer (AbSqlData_Package.MAXNUM));
                    stringBuffer.append (To_Unbounded_String (" and > 0 digits.<br/>"));
                end if;
            end if;
            return stringBuffer.toString;
        exception
            when e : others =>
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation error info"), This'Unchecked_Access, To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Validating Form");
        end;
   end validationInfo;

   function toValidationInfoDoc (This : in out DownloadableItemValidation) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out DownloadableItemValidation; document : Document_Access) return Node_Access is
   begin
        return null;
   end toValidationInfoNode;

   procedure isValid (This : in out DownloadableItemValidation) is
      Java_Result : constant Boolean := DownloadableItemValidation'Class (This).isValid;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

   procedure validationInfo (This : in out DownloadableItemValidation) is
      Java_Result : constant Unbounded_String := DownloadableItemValidation'Class (This).validationInfo;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end validationInfo;

   procedure toValidationInfoDoc (This : in out DownloadableItemValidation) is
      Java_Result : constant Document_Access := DownloadableItemValidation'Class (This).toValidationInfoDoc;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoDoc;

   procedure toValidationInfoNode (This : in out DownloadableItemValidation; document : Document_Access) is
      Java_Result : constant Node_Access := DownloadableItemValidation'Class (This).toValidationInfoNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemValidation_Package;


