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


package body views.admin.inventory.DeleteFileValidationView_Package is

   procedure Initialize_Fields (This : in out DeleteFileValidationView'Class) is
   begin
      null;
      This.id := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out DeleteFileValidationView'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        InventoryItemView_Package.Initialize (This, transformInfoInterface, StringUtil_Package.getInstance.EMPTY_STRING);
        Initialize_Fields (This);
        This.getFormData;
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return DeleteFileValidationView_Access is
      This : constant DeleteFileValidationView_Access := new DeleteFileValidationView;
   begin
      Initialize (This.all, transformInfoInterface);
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
            when e : others =>
            return False;
        end;
   end isValid;

   function toValidationInfoDoc (This : in out DeleteFileValidationView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out DeleteFileValidationView; document : Document_Access) return Node_Access is
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
            when e : others =>
            return To_Unbounded_String ("Unkown Validation Error.<br />");
        end;
   end validationInfo;

   procedure isValid (This : in out DeleteFileValidationView) is
      Java_Result : constant Boolean := DeleteFileValidationView'Class (This).isValid;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

   procedure toValidationInfoDoc (This : in out DeleteFileValidationView) is
      Java_Result : constant Document_Access := DeleteFileValidationView'Class (This).toValidationInfoDoc;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoDoc;

   procedure toValidationInfoNode (This : in out DeleteFileValidationView; document : Document_Access) is
      Java_Result : constant Node_Access := DeleteFileValidationView'Class (This).toValidationInfoNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

   procedure validationInfo (This : in out DeleteFileValidationView) is
      Java_Result : constant Unbounded_String := DeleteFileValidationView'Class (This).validationInfo;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end validationInfo;

end views.admin.inventory.DeleteFileValidationView_Package;


