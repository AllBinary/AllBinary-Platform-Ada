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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package; use org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
with org.allbinary.business.user.commerce.inventory.item.download.DownloadItemData_Package; use org.allbinary.business.user.commerce.inventory.item.download.DownloadItemData_Package;
with org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package; use org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package;
with org.allbinary.business.user.commerce.money.MoneyException_Package; use org.allbinary.business.user.commerce.money.MoneyException_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package; use org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntity_Package; use org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntity_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntityFactory_Package; use org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntityFactory_Package;
with org.allbinary.logic.communication.http.request.RequestParams_Package; use org.allbinary.logic.communication.http.request.RequestParams_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;

package body views.admin.inventory.download.EditValidationView_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package BasicItemData_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
   package DownloadItemData_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.download.DownloadItemData_Package;
   package DownloadableItem_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package;
   package MoneyException_Package renames Standard.org.allbinary.business.user.commerce.money.MoneyException_Package;
   package InventoryEntityFactory_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package;
   package DownloadItemsEntity_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntity_Package;
   package DownloadItemsEntityFactory_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntityFactory_Package;
   package RequestParams_Package renames Standard.org.allbinary.logic.communication.http.request.RequestParams_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   procedure Initialize_Fields (This : in out EditValidationView'Class) is
   begin
      null;
      This.downloadItemId := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out EditValidationView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        DownloadableInventoryItemView_Package.Initialize (This, transformInfoInterface, StringUtil_Package.getInstance.EMPTY_STRING);
        Initialize_Fields (This);
        EditValidationView'Class (This).getFormData;
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return EditValidationView_Access is
      This : constant EditValidationView_Access := new EditValidationView;
   begin
      EditValidationView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   --  throws Exception
   procedure getFormData (This : in out EditValidationView) is
      hashMap : HashMap_Access;
   begin
        hashMap := RequestParams_Package.Create (This.request).toHashMap;
        if (hashMap) = (null) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Request Params Found")));
        end if;
        This.id := Java_Unbox (hashMap.get (This.basicItemData.ID));
        This.downloadItemId := Java_Unbox (hashMap.get (DownloadItemData_Package.ID));
   end getFormData;

   --  throws Exception
   function isValid (This : in out EditValidationView) return Boolean is
      downloadable : Integer;
      downloadItemsEntity : DownloadItemsEntity_Access;
      vector : BasicArrayList_Access;
   begin
        if ((This.id) = (null)) or else (not (StringValidationUtil_Package.getInstance.isNumber (This.id))) then
            return False;
        end if;
        This.itemInterface := InventoryEntityFactory_Package.getInstance.getInventoryEntityInstance.getItem (This.id);
        if (This.itemInterface) = (null) then
            return False;
        end if;
        downloadable := Integer'Value (To_String (This.itemInterface.getDownloads));
        if (downloadable) /= (0) then
            downloadItemsEntity := DownloadItemsEntityFactory_Package.getInstance.getDownloadItemsEntityInstance;
            vector := downloadItemsEntity.getForItem (This.id, This.downloadItemId);
            if (vector.size) /= (1) then
                return False;
            end if;
            This.downloadableItem := DownloadableItem_Access (vector.get (0));
        else
            return False;
        end if;
        return True;
   end isValid;

   function toValidationInfoDoc (This : in out EditValidationView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out EditValidationView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   --  throws MoneyException
   function validationInfo (This : in out EditValidationView) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      downloadable : Integer;
   begin
        stringBuffer := StringMaker_Package.Create;
        if ((This.id) = (null)) or else (not (StringValidationUtil_Package.getInstance.isNumber (This.id))) then
            stringBuffer.append (To_Unbounded_String ("Id is not valid.<br />"));
        end if;
        if (InventoryEntityFactory_Package.getInstance.getInventoryEntityInstance.getItem (This.id)) = (null) then
            stringBuffer.append (To_Unbounded_String ("Item does not exist.<br />"));
        end if;
        downloadable := Integer'Value (To_String (This.itemInterface.getDownloads));
        if (downloadable) /= (0) then
            if (This.downloadableItem) = (null) then
                stringBuffer.append (To_Unbounded_String ("DownloadableItem does not exist for item.<br />"));
            end if;
        else
            stringBuffer.append (To_Unbounded_String ("Item should not have DownloadableItem.<br />"));
        end if;
        return stringBuffer.toString;
   end validationInfo;

   procedure toValidationInfoNode (This : in out EditValidationView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := EditValidationView'Class (This).toValidationInfoNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.admin.inventory.download.EditValidationView_Package;


