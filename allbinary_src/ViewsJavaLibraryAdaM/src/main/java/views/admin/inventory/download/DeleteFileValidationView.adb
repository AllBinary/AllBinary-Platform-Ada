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


package body views.admin.inventory.download.DeleteFileValidationView_Package is

   procedure Initialize_Fields (This : in out DeleteFileValidationView'Class) is
   begin
      null;
      This.downloadItemId := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out DeleteFileValidationView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        DownloadableInventoryItemView_Package.Initialize (This, transformInfoInterface, StringUtil_Package.getInstance.EMPTY_STRING);
        Initialize_Fields (This);
        This.getFormData;
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return DeleteFileValidationView_Access is
      This : constant DeleteFileValidationView_Access := new DeleteFileValidationView;
   begin
      DeleteFileValidationView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   --  throws Exception
   procedure getFormData (This : in out DeleteFileValidationView) is
      hashMap : HashMap_Access;
   begin
        hashMap := RequestParams_Package.Create (This.request).toHashMap;
        if (hashMap) = (null) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Request Params Found")));
        end if;
        This.id := Unbounded_String (hashMap.get (This.basicItemData.ID));
        This.downloadItemId := Unbounded_String (hashMap.get (DownloadItemData_Package.ID));
   end getFormData;

   function isValid (This : in out DeleteFileValidationView) return Boolean is
      inventoryEntity : InventoryEntity_Access;
      downloadItemsEntity : DownloadItemsEntity_Access;
      vector : BasicArrayList_Access;
   begin
        begin
            if ((This.id) = (null)) or else (not (StringValidationUtil_Package.getInstance.isNumber (This.id))) then
                return False;
            end if;
            inventoryEntity := InventoryEntityFactory_Package.getInstance.getInventoryEntityInstance;
            This.itemInterface := inventoryEntity.getItem (This.id);
            if (This.itemInterface) = (null) then
                return False;
            end if;
            downloadItemsEntity := DownloadItemsEntityFactory_Package.getInstance.getDownloadItemsEntityInstance;
            vector := downloadItemsEntity.getForItem (This.id, This.downloadItemId);
            if (vector.size) /= (1) then
                return False;
            end if;
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            return False;
                end;
        end;
   end isValid;

   function toValidationInfoDoc (This : in out DeleteFileValidationView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out DeleteFileValidationView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   function validationInfo (This : in out DeleteFileValidationView) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      downloadItemsEntity : DownloadItemsEntity_Access;
      vector : BasicArrayList_Access;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            if ((This.id) = (null)) or else (not (StringValidationUtil_Package.getInstance.isNumber (This.id))) then
                stringBuffer.append (To_Unbounded_String ("Id is not valid.<br />"));
            end if;
            if (InventoryEntityFactory_Package.getInstance.getInventoryEntityInstance.getItem (This.id)) = (null) then
                stringBuffer.append (To_Unbounded_String ("Item does not exist.<br />"));
            end if;
            downloadItemsEntity := DownloadItemsEntityFactory_Package.getInstance.getDownloadItemsEntityInstance;
            vector := downloadItemsEntity.getForItem (This.id, This.downloadItemId);
            if (vector.size) = (0) then
                stringBuffer.append (To_Unbounded_String ("DownloadItem does not exist.<br />"));
            end if;
            if (vector.size) > (1) then
                stringBuffer.append (To_Unbounded_String ("To Many DownloadItems exist.<br />"));
            end if;
            return stringBuffer.toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            return To_Unbounded_String ("Unkown Validation Error.<br />");
                end;
        end;
   end validationInfo;

   procedure toValidationInfoNode (This : in out DeleteFileValidationView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := DeleteFileValidationView'Class (This).toValidationInfoNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.admin.inventory.download.DeleteFileValidationView_Package;


