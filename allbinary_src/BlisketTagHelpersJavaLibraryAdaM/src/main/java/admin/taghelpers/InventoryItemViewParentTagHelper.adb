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


package body admin.taghelpers.InventoryItemViewParentTagHelper_Package is

   procedure Initialize_Fields (This : in out InventoryItemViewParentTagHelper'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out InventoryItemViewParentTagHelper'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return InventoryItemViewParentTagHelper_Access is
      This : constant InventoryItemViewParentTagHelper_Access := new InventoryItemViewParentTagHelper;
   begin
      InventoryItemViewParentTagHelper_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return InventoryItemViewParentTagHelper_Access is
   begin
        return InventoryItemViewParentTagHelper_Package.instance;
   end getInstance;

   --  throws Exception
   function getInventoryItemView (This : in out InventoryItemViewParentTagHelper; inventoryTag_Param : access HelperTag_Package.HelperTag'Class) return InventoryItemView_Access is
      inventoryTag : constant HelperTag_Access := HelperTag_Access (inventoryTag_Param);
      validationViewHelper : ValidationViewHelper_Access;
      viewObject : TransformInterface_Access;
      stringBuffer : StringMaker_Access;
   begin
        if (inventoryTag) /= (null) then
            This.checkForValidationViewHelper (inventoryTag.getHelper);
            validationViewHelper := ValidationViewHelper_Access (inventoryTag.getHelper);
            viewObject := validationViewHelper.getViewObject;
            if (viewObject.getTypeId) /= (InventoryItemView_Package.TYPE_ID) then
                stringBuffer := StringMaker_Package.Create;
                stringBuffer.append (To_Unbounded_String ("Must have "));
                stringBuffer.append (To_Unbounded_String ("InventoryItemView and not: "));
                stringBuffer.append (To_Unbounded_String (Ada.Tags.Expanded_Name (inventoryTag.getHelper.all'Tag)));
                Java_Throw (Java_New_Exception ("Exception", stringBuffer.toString));
            end if;
            return InventoryItemView_Access (viewObject);
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Must have parent tag.")));
        end if;
   end getInventoryItemView;

   --  throws Exception
   function getDownloadableInventoryItemView (This : in out InventoryItemViewParentTagHelper; inventoryTag_Param : access HelperTag_Package.HelperTag'Class) return DownloadableInventoryItemView_Access is
      inventoryTag : constant HelperTag_Access := HelperTag_Access (inventoryTag_Param);
      validationViewHelper : ValidationViewHelper_Access;
      viewObject : TransformInterface_Access;
      stringBuffer : StringMaker_Access;
   begin
        if (inventoryTag) /= (null) then
            This.checkForValidationViewHelper (inventoryTag.getHelper);
            validationViewHelper := ValidationViewHelper_Access (inventoryTag.getHelper);
            viewObject := validationViewHelper.getViewObject;
            if (viewObject.getTypeId) /= (DownloadableInventoryItemView_Package.TYPE_ID) then
                stringBuffer := StringMaker_Package.Create;
                stringBuffer.append (To_Unbounded_String ("Must have "));
                stringBuffer.append (To_Unbounded_String ("DownloadableInventoryItemView and not: "));
                stringBuffer.append (To_Unbounded_String (Ada.Tags.Expanded_Name (inventoryTag.getHelper.all'Tag)));
                Java_Throw (Java_New_Exception ("Exception", stringBuffer.toString));
            end if;
            return DownloadableInventoryItemView_Access (viewObject);
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Must have parent tag.")));
        end if;
   end getDownloadableInventoryItemView;

   --  throws Exception
   function getRequestMapInterface (This : in out InventoryItemViewParentTagHelper; inventoryTag_Param : access HelperTag_Package.HelperTag'Class) return RequestMapInterface_Access is
      inventoryTag : constant HelperTag_Access := HelperTag_Access (inventoryTag_Param);
      validationViewHelper : ValidationViewHelper_Access;
      viewObject : TransformInterface_Access;
      stringBuffer : StringMaker_Access;
   begin
        if (inventoryTag) /= (null) then
            This.checkForValidationViewHelper (inventoryTag.getHelper);
            validationViewHelper := ValidationViewHelper_Access (inventoryTag.getHelper);
            viewObject := validationViewHelper.getViewObject;
            if ((viewObject.getTypeId) /= (InventoryItemView_Package.TYPE_ID)) and then ((viewObject.getTypeId) /= (DownloadableInventoryItemView_Package.TYPE_ID)) then
                stringBuffer := StringMaker_Package.Create;
                stringBuffer.append (To_Unbounded_String ("Must have "));
                stringBuffer.append (To_Unbounded_String ("specific TYPE_ID and not: "));
                stringBuffer.append (To_Unbounded_String (Ada.Tags.Expanded_Name (inventoryTag.getHelper.all'Tag)));
                Java_Throw (Java_New_Exception ("Exception", stringBuffer.toString));
            end if;
            return RequestMapInterface_Access (viewObject);
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Must have parent tag.")));
        end if;
   end getRequestMapInterface;

   --  throws Exception
   procedure checkForValidationViewHelper (This : in out InventoryItemViewParentTagHelper; helperObject_Param : access Java_Object'Class) is
      helperObject : constant Java_Object_Access := Java_Object_Access (helperObject_Param);
      stringBuffer : StringMaker_Access;
   begin
        if not (((helperObject.all in ValidationViewHelper_Package.ValidationViewHelper'Class))) then
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("Must have "));
            stringBuffer.append (To_Unbounded_String ("ValidationViewHelper"));
            stringBuffer.append (To_Unbounded_String ("and not: "));
            stringBuffer.append (To_Unbounded_String (Ada.Tags.Expanded_Name (helperObject.all'Tag)));
            Java_Throw (Java_New_Exception ("Exception", stringBuffer.toString));
        end if;
   end checkForValidationViewHelper;

   procedure getInventoryItemView (This : in out InventoryItemViewParentTagHelper; inventoryTag_Param : access HelperTag_Package.HelperTag'Class) is
      Java_Result : constant InventoryItemView_Access := InventoryItemViewParentTagHelper'Class (This).getInventoryItemView (inventoryTag_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInventoryItemView;

   procedure getDownloadableInventoryItemView (This : in out InventoryItemViewParentTagHelper; inventoryTag_Param : access HelperTag_Package.HelperTag'Class) is
      Java_Result : constant DownloadableInventoryItemView_Access := InventoryItemViewParentTagHelper'Class (This).getDownloadableInventoryItemView (inventoryTag_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDownloadableInventoryItemView;

   procedure getRequestMapInterface (This : in out InventoryItemViewParentTagHelper; inventoryTag_Param : access HelperTag_Package.HelperTag'Class) is
      Java_Result : constant RequestMapInterface_Access := InventoryItemViewParentTagHelper'Class (This).getRequestMapInterface (inventoryTag_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRequestMapInterface;

begin
   null;
   instance := InventoryItemViewParentTagHelper_Package.Create;

end admin.taghelpers.InventoryItemViewParentTagHelper_Package;


