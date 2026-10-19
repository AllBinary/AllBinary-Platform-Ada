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
with org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package; use org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package;
with org.allbinary.logic.communication.http.request.RequestParams_Package; use org.allbinary.logic.communication.http.request.RequestParams_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;

package body views.admin.inventory.DeleteFileValidationView_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package InventoryEntityFactory_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package;
   package RequestParams_Package renames Standard.org.allbinary.logic.communication.http.request.RequestParams_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   procedure Initialize_Fields (This : in out DeleteFileValidationView'Class) is
   begin
      null;
      This.id := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out DeleteFileValidationView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        InventoryItemView_Package.Initialize (This, transformInfoInterface, StringUtil_Package.getInstance.EMPTY_STRING);
        Initialize_Fields (This);
        DeleteFileValidationView'Class (This).getFormData;
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
        This.id := Java_Unbox (hashMap.get (This.basicItemData.ID));
   end getFormData;

   function isValid (This : in out DeleteFileValidationView) return Boolean is
   begin
        begin
            if ((This.id) = (Null_Unbounded_String)) or else (not (StringValidationUtil_Package.getInstance.isNumber (This.id))) then
                return False;
            end if;
            This.itemInterface := InventoryEntityFactory_Package.getInstance.getInventoryEntityInstance.getItem (This.id);
            if (This.itemInterface) = (null) then
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
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            if ((This.id) = (Null_Unbounded_String)) or else (not (StringValidationUtil_Package.getInstance.isNumber (This.id))) then
                stringBuffer.append (To_Unbounded_String ("Id is not valid.<br />"));
            end if;
            if (InventoryEntityFactory_Package.getInstance.getInventoryEntityInstance.getItem (This.id)) = (null) then
                stringBuffer.append (To_Unbounded_String ("Item does not exist.<br />"));
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
      Java_Result : constant Node_Access := DeleteFileValidationView'Class (This).toValidationInfoNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.admin.inventory.DeleteFileValidationView_Package;


