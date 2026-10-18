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


with org.allbinary.logic.communication.sql.AbSqlData_Package; use org.allbinary.logic.communication.sql.AbSqlData_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;

package body org.allbinary.business.user.commerce.inventory.item.BasicItemValidation_Package is

   package AbSqlData_Package renames Standard.org.allbinary.logic.communication.sql.AbSqlData_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   procedure Initialize_Fields (This : in out BasicItemValidation'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.MAXWEIGHT := 14;
      This.MAXPRICE := 14;
      
   end Initialize_Fields;


   procedure Initialize (This : in out BasicItemValidation'Class; itemInterface_Param : access ItemInterface_Package.ItemInterface'Class) is
      itemInterface : constant ItemInterface_Access := ItemInterface_Access (itemInterface_Param);
   begin
      Validation_Package.Initialize (This);
      Initialize_Fields (This);
        This.itemInterface := itemInterface;
   end Initialize;

   function Create (itemInterface_Param : access ItemInterface_Package.ItemInterface'Class) return BasicItemValidation_Access is
      This : constant BasicItemValidation_Access := new BasicItemValidation;
   begin
      BasicItemValidation_Package.Initialize (This.all, itemInterface_Param);
      return This;
   end Create;

   function isValid (This : in out BasicItemValidation) return Boolean is
      stringValidationUtil : StringValidationUtil_Access;
   begin
        begin
            if (((This.itemInterface.getId) = (null)) or else ((This.itemInterface.getId.length) < (1))) or else ((This.itemInterface.getId.length) > (AbSqlData_Package.MAXNUM)) then
                return False;
            end if;
            stringValidationUtil := StringValidationUtil_Package.getInstance;
            if ((This.itemInterface.getId) /= (null)) and then (not (stringValidationUtil.isNumber (This.itemInterface.getId))) then
                return False;
            end if;
            if (((This.itemInterface.getNumber) = (null)) or else ((This.itemInterface.getNumber.length) < (1))) or else ((This.itemInterface.getNumber.length) > (AbSqlData_Package.MAXNUM)) then
                return False;
            end if;
            if ((This.itemInterface.getNumber) /= (null)) and then (not (stringValidationUtil.isNumber (This.itemInterface.getNumber))) then
                return False;
            end if;
            if (((This.itemInterface.getInBaskets) = (null)) or else ((This.itemInterface.getInBaskets.length) < (1))) or else ((This.itemInterface.getInBaskets.length) > (AbSqlData_Package.MAXNUM)) then
                return False;
            end if;
            if ((This.itemInterface.getInBaskets) /= (null)) and then (not (stringValidationUtil.isNumber (This.itemInterface.getInBaskets))) then
                return False;
            end if;
            if (((This.itemInterface.getWeight) = (null)) or else ((This.itemInterface.getWeight.length) < (1))) or else ((This.itemInterface.getWeight.length) > (This.MAXWEIGHT)) then
                return False;
            end if;
            if ((This.itemInterface.getWeight) /= (null)) and then (not (stringValidationUtil.isNumber (This.itemInterface.getWeight))) then
                return False;
            end if;
            if (((This.itemInterface.getEnabled) = (null)) or else ((This.itemInterface.getEnabled.length) < (1))) or else ((This.itemInterface.getEnabled.length) > (AbSqlData_Package.MAXSTRING)) then
                return False;
            end if;
            if (((This.itemInterface.getNewOrUsed) = (null)) or else ((This.itemInterface.getNewOrUsed.length) < (1))) or else ((This.itemInterface.getNewOrUsed.length) > (AbSqlData_Package.MAXSTRING)) then
                return False;
            end if;
            if (((This.itemInterface.getSummary) = (null)) or else ((This.itemInterface.getSummary.length) < (1))) or else ((This.itemInterface.getSummary.length) > (AbSqlData_Package.MAXSTRING)) then
                return False;
            end if;
            if (((This.itemInterface.getDescription) = (null)) or else ((This.itemInterface.getDescription.length) < (1))) or else ((This.itemInterface.getDescription.length) > (AbSqlData_Package.MAXBLOB)) then
                return False;
            end if;
            if (((This.itemInterface.getKeywords) = (null)) or else ((This.itemInterface.getKeywords.length) < (1))) or else ((This.itemInterface.getKeywords.length) > (AbSqlData_Package.MAXSTRING)) then
                return False;
            end if;
            if (((This.itemInterface.getCategory) = (null)) or else ((This.itemInterface.getCategory.length) < (1))) or else ((This.itemInterface.getCategory.length) > (AbSqlData_Package.MAXSTRING)) then
                return False;
            end if;
            if (((This.itemInterface.getType) = (null)) or else ((This.itemInterface.getType.length) < (1))) or else ((This.itemInterface.getType.length) > (AbSqlData_Package.MAXSTRING)) then
                return False;
            end if;
            if ((This.itemInterface.getPrice) = (null)) or else (not (This.itemInterface.getPrice.isValid)) then
                return False;
            end if;
            if (((This.itemInterface.getCustoms) = (null)) or else ((This.itemInterface.getCustoms.length) < (1))) or else ((This.itemInterface.getCustoms.length) > (AbSqlData_Package.MAXNUM)) then
                return False;
            end if;
            if (((This.itemInterface.getDownloads) = (null)) or else ((This.itemInterface.getDownloads.length) < (1))) or else ((This.itemInterface.getDownloads.length) > (AbSqlData_Package.MAXNUM)) then
                return False;
            end if;
            if (((This.itemInterface.getGroups) = (null)) or else ((This.itemInterface.getGroups.length) < (1))) or else ((This.itemInterface.getGroups.length) > (AbSqlData_Package.MAXNUM)) then
                return False;
            end if;
            if (((This.itemInterface.getOptions) = (null)) or else ((This.itemInterface.getOptions.length) < (1))) or else ((This.itemInterface.getOptions.length) > (AbSqlData_Package.MAXNUM)) then
                return False;
            end if;
            if (((This.itemInterface.getPermissions) = (null)) or else ((This.itemInterface.getPermissions.length) < (1))) or else ((This.itemInterface.getPermissions.length) > (AbSqlData_Package.MAXNUM)) then
                return False;
            end if;
            if (((This.itemInterface.getSpecials) = (null)) or else ((This.itemInterface.getSpecials.length) < (1))) or else ((This.itemInterface.getSpecials.length) > (AbSqlData_Package.MAXNUM)) then
                return False;
            end if;
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to validate form"), BasicItemValidation_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID, e);
            end if;
            return False;
                end;
        end;
   end isValid;

   function validationInfo (This : in out BasicItemValidation) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      stringValidationUtil : StringValidationUtil_Access;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            if (((This.itemInterface.getId) = (null)) or else ((This.itemInterface.getId.length) < (1))) or else ((This.itemInterface.getId.length) > (AbSqlData_Package.MAXNUM)) then
                stringBuffer.append (To_Unbounded_String ("Id is invalid. Must be number < ") & Java_Image (AbSqlData_Package.MAXNUM) & To_Unbounded_String (" and > 0 digits.<br />"));
            end if;
            stringValidationUtil := StringValidationUtil_Package.getInstance;
            if ((This.itemInterface.getId) /= (null)) and then (not (stringValidationUtil.isNumber (This.itemInterface.getId))) then
                stringBuffer.append (To_Unbounded_String ("Id is invalid. Must be > 0.<br />"));
            end if;
            if (((This.itemInterface.getNumber) = (null)) or else ((This.itemInterface.getNumber.length) < (1))) or else ((This.itemInterface.getNumber.length) > (AbSqlData_Package.MAXNUM)) then
                stringBuffer.append (To_Unbounded_String ("Number of items is invalid. Must be number < ") & Java_Image (AbSqlData_Package.MAXNUM) & To_Unbounded_String (" and > 0 digits.<br />"));
            end if;
            if ((This.itemInterface.getNumber) /= (null)) and then (not (stringValidationUtil.isNumber (This.itemInterface.getNumber))) then
                stringBuffer.append (To_Unbounded_String ("Number of items value is not a valid number.<br />"));
            end if;
            if (((This.itemInterface.getInBaskets) = (null)) or else ((This.itemInterface.getInBaskets.length) < (1))) or else ((This.itemInterface.getInBaskets.length) > (AbSqlData_Package.MAXNUM)) then
                stringBuffer.append (To_Unbounded_String ("Number in baskets is invalid. Must be < ") & Java_Image (AbSqlData_Package.MAXNUM) & To_Unbounded_String (" and > 0 digits.<br />"));
            end if;
            if ((This.itemInterface.getInBaskets) /= (null)) and then (not (stringValidationUtil.isNumber (This.itemInterface.getInBaskets))) then
                stringBuffer.append (To_Unbounded_String ("In Baskets value is not a valid number.<br />"));
            end if;
            if (((This.itemInterface.getWeight) = (null)) or else ((This.itemInterface.getWeight.length) < (1))) or else ((This.itemInterface.getWeight.length) > (This.MAXWEIGHT)) then
                stringBuffer.append (To_Unbounded_String ("Weight value is invalid. Must be < ") & Java_Image (This.MAXWEIGHT) & To_Unbounded_String (" and > 0 digits.<br />"));
            end if;
            if ((This.itemInterface.getWeight) /= (null)) and then (not (stringValidationUtil.isNumber (This.itemInterface.getWeight))) then
                stringBuffer.append (To_Unbounded_String ("Weight value is not a valid number.<br />"));
            end if;
            if (((This.itemInterface.getEnabled) = (null)) or else ((This.itemInterface.getEnabled.length) < (1))) or else ((This.itemInterface.getEnabled.length) > (AbSqlData_Package.MAXSTRING)) then
                stringBuffer.append (To_Unbounded_String ("For Sale value is invalid. Must be < ") & Java_Image (AbSqlData_Package.MAXSTRING) & To_Unbounded_String (" and > 0 characters long.<br />"));
            end if;
            if (((This.itemInterface.getNewOrUsed) = (null)) or else ((This.itemInterface.getNewOrUsed.length) < (1))) or else ((This.itemInterface.getNewOrUsed.length) > (AbSqlData_Package.MAXSTRING)) then
                stringBuffer.append (To_Unbounded_String ("New Or Used value is invalid. Must be < ") & Java_Image (AbSqlData_Package.MAXSTRING) & To_Unbounded_String (" and > 0 characters long.<br />"));
            end if;
            if (((This.itemInterface.getSummary) = (null)) or else ((This.itemInterface.getSummary.length) < (1))) or else ((This.itemInterface.getSummary.length) > (AbSqlData_Package.MAXSTRING)) then
                stringBuffer.append (To_Unbounded_String ("Summary value is invalid. Must be < ") & Java_Image (AbSqlData_Package.MAXSTRING) & To_Unbounded_String (" and > 0 characters long.<br />"));
            end if;
            if (((This.itemInterface.getDescription) = (null)) or else ((This.itemInterface.getDescription.length) < (1))) or else ((This.itemInterface.getDescription.length) > (AbSqlData_Package.MAXBLOB)) then
                stringBuffer.append (To_Unbounded_String ("Description value is invalid. Must be < ") & Java_Image (AbSqlData_Package.MAXBLOB) & To_Unbounded_String (" and > 0 characters long.<br />"));
            end if;
            if (((This.itemInterface.getKeywords) = (null)) or else ((This.itemInterface.getKeywords.length) < (1))) or else ((This.itemInterface.getKeywords.length) > (AbSqlData_Package.MAXSTRING)) then
                stringBuffer.append (To_Unbounded_String ("Keywords value is invalid. Must be < ") & Java_Image (AbSqlData_Package.MAXSTRING) & To_Unbounded_String (" and > 0 characters long.<br />"));
            end if;
            if (((This.itemInterface.getCategory) = (null)) or else ((This.itemInterface.getCategory.length) < (1))) or else ((This.itemInterface.getCategory.length) > (AbSqlData_Package.MAXSTRING)) then
                stringBuffer.append (To_Unbounded_String ("Category value is invalid. Must be < ") & Java_Image (AbSqlData_Package.MAXSTRING) & To_Unbounded_String (" and > 0 characters long.<br />"));
            end if;
            if (((This.itemInterface.getType) = (null)) or else ((This.itemInterface.getType.length) < (1))) or else ((This.itemInterface.getType.length) > (AbSqlData_Package.MAXSTRING)) then
                stringBuffer.append (To_Unbounded_String ("Type value is invalid. Must be < ") & Java_Image (AbSqlData_Package.MAXSTRING) & To_Unbounded_String (" and > 0 characters long.<br />"));
            end if;
            if ((This.itemInterface.getPrice) = (null)) or else (not (This.itemInterface.getPrice.isValid)) then
                stringBuffer.append (To_Unbounded_String ("Price value is invalid. Must be < ") & Java_Image (This.MAXPRICE) & To_Unbounded_String (" and > 0 in length.<br />"));
            end if;
            if (((This.itemInterface.getCustoms) = (null)) or else ((This.itemInterface.getCustoms.length) < (1))) or else ((This.itemInterface.getCustoms.length) > (AbSqlData_Package.MAXNUM)) then
                stringBuffer.append (To_Unbounded_String ("Custom items value is invalid. Must be number < ") & Java_Image (AbSqlData_Package.MAXNUM) & To_Unbounded_String (" and > 0 digits.<br />"));
            end if;
            if (((This.itemInterface.getDownloads) = (null)) or else ((This.itemInterface.getDownloads.length) < (1))) or else ((This.itemInterface.getDownloads.length) > (AbSqlData_Package.MAXNUM)) then
                stringBuffer.append (To_Unbounded_String ("Downloadable item value is invalid. Must be number < ") & Java_Image (AbSqlData_Package.MAXNUM) & To_Unbounded_String (" and > 0 digits.<br />"));
            end if;
            if (((This.itemInterface.getGroups) = (null)) or else ((This.itemInterface.getGroups.length) < (1))) or else ((This.itemInterface.getGroups.length) > (AbSqlData_Package.MAXNUM)) then
                stringBuffer.append (To_Unbounded_String ("Group item value is invalid. Must be number < ") & Java_Image (AbSqlData_Package.MAXNUM) & To_Unbounded_String (" and > 0 digits.<br />"));
            end if;
            if (((This.itemInterface.getOptions) = (null)) or else ((This.itemInterface.getOptions.length) < (1))) or else ((This.itemInterface.getOptions.length) > (AbSqlData_Package.MAXNUM)) then
                stringBuffer.append (To_Unbounded_String ("Option item value is invalid. Must be number < ") & Java_Image (AbSqlData_Package.MAXNUM) & To_Unbounded_String (" and > 0 digits.<br />"));
            end if;
            if (((This.itemInterface.getPermissions) = (null)) or else ((This.itemInterface.getPermissions.length) < (1))) or else ((This.itemInterface.getPermissions.length) > (AbSqlData_Package.MAXNUM)) then
                stringBuffer.append (To_Unbounded_String ("Permission item value is invalid. Must be number < ") & Java_Image (AbSqlData_Package.MAXNUM) & To_Unbounded_String (" and > 0 digits.<br />"));
            end if;
            if (((This.itemInterface.getSpecials) = (null)) or else ((This.itemInterface.getSpecials.length) < (1))) or else ((This.itemInterface.getSpecials.length) > (AbSqlData_Package.MAXNUM)) then
                stringBuffer.append (To_Unbounded_String ("Special item value is invalid. Must be number < ") & Java_Image (AbSqlData_Package.MAXNUM) & To_Unbounded_String (" and > 0 digits.<br />"));
            end if;
            return stringBuffer.toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation error info"), BasicItemValidation_Access'(This'Unchecked_Access), To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Validating Form");
                end;
        end;
   end validationInfo;

   function toValidationInfoDoc (This : in out BasicItemValidation) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out BasicItemValidation; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   procedure toValidationInfoNode (This : in out BasicItemValidation; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := BasicItemValidation'Class (This).toValidationInfoNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end org.allbinary.business.user.commerce.inventory.item.BasicItemValidation_Package;


