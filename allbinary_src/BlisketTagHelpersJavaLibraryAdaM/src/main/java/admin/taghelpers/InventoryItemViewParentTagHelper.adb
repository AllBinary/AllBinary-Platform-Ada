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


with org.allbinary.logic.communication.http.request.RequestMapInterface_Package; use org.allbinary.logic.communication.http.request.RequestMapInterface_Package;
with org.allbinary.logic.communication.http.request.RequestMapInterface_Package_References;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.visual.transform.TransformInterface_Package; use org.allbinary.logic.visual.transform.TransformInterface_Package;
with taghelpers.ValidationViewHelper_Package; use taghelpers.ValidationViewHelper_Package;
with tags.HelperTag_Package; use tags.HelperTag_Package;
with tags.HelperTag_Package_References;
with views.admin.inventory.InventoryItemView_Package; use views.admin.inventory.InventoryItemView_Package;
with views.admin.inventory.InventoryItemView_Package_References;
with views.admin.inventory.download.DownloadableInventoryItemView_Package; use views.admin.inventory.download.DownloadableInventoryItemView_Package;
with views.admin.inventory.download.DownloadableInventoryItemView_Package_References;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.java.character_Id.CharacterSet_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;
with taghelpers.ViewHelper_Package;

package body admin.taghelpers.InventoryItemViewParentTagHelper_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package TransformInterface_Package renames Standard.org.allbinary.logic.visual.transform.TransformInterface_Package;
   package ValidationViewHelper_Package renames Standard.taghelpers.ValidationViewHelper_Package;
   subtype RequestMapInterface_Access is org.allbinary.logic.communication.http.request.RequestMapInterface_Package_References.RequestMapInterface_Access;
   function "=" (Left, Right : RequestMapInterface_Access) return Boolean renames org.allbinary.logic.communication.http.request.RequestMapInterface_Package_References."=";
   subtype RequestMapInterface_Access_Array is org.allbinary.logic.communication.http.request.RequestMapInterface_Package_References.RequestMapInterface_Access_Array;
   function "=" (Left, Right : RequestMapInterface_Access_Array) return Boolean renames org.allbinary.logic.communication.http.request.RequestMapInterface_Package_References."=";
   subtype RequestMapInterface_Access_Array_Access is org.allbinary.logic.communication.http.request.RequestMapInterface_Package_References.RequestMapInterface_Access_Array_Access;
   function "=" (Left, Right : RequestMapInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.request.RequestMapInterface_Package_References."=";
   subtype RequestMapInterface_Access_Array_Access_Array is org.allbinary.logic.communication.http.request.RequestMapInterface_Package_References.RequestMapInterface_Access_Array_Access_Array;
   function "=" (Left, Right : RequestMapInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.http.request.RequestMapInterface_Package_References."=";
   subtype RequestMapInterface_Access_Array_Access_Array_Access is org.allbinary.logic.communication.http.request.RequestMapInterface_Package_References.RequestMapInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RequestMapInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.request.RequestMapInterface_Package_References."=";
   subtype HelperTag_Access is tags.HelperTag_Package_References.HelperTag_Access;
   function "=" (Left, Right : HelperTag_Access) return Boolean renames tags.HelperTag_Package_References."=";
   subtype HelperTag_Access_Array is tags.HelperTag_Package_References.HelperTag_Access_Array;
   function "=" (Left, Right : HelperTag_Access_Array) return Boolean renames tags.HelperTag_Package_References."=";
   subtype HelperTag_Access_Array_Access is tags.HelperTag_Package_References.HelperTag_Access_Array_Access;
   function "=" (Left, Right : HelperTag_Access_Array_Access) return Boolean renames tags.HelperTag_Package_References."=";
   subtype HelperTag_Access_Array_Access_Array is tags.HelperTag_Package_References.HelperTag_Access_Array_Access_Array;
   function "=" (Left, Right : HelperTag_Access_Array_Access_Array) return Boolean renames tags.HelperTag_Package_References."=";
   subtype HelperTag_Access_Array_Access_Array_Access is tags.HelperTag_Package_References.HelperTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HelperTag_Access_Array_Access_Array_Access) return Boolean renames tags.HelperTag_Package_References."=";
   subtype InventoryItemView_Access is views.admin.inventory.InventoryItemView_Package_References.InventoryItemView_Access;
   function "=" (Left, Right : InventoryItemView_Access) return Boolean renames views.admin.inventory.InventoryItemView_Package_References."=";
   subtype InventoryItemView_Access_Array is views.admin.inventory.InventoryItemView_Package_References.InventoryItemView_Access_Array;
   function "=" (Left, Right : InventoryItemView_Access_Array) return Boolean renames views.admin.inventory.InventoryItemView_Package_References."=";
   subtype InventoryItemView_Access_Array_Access is views.admin.inventory.InventoryItemView_Package_References.InventoryItemView_Access_Array_Access;
   function "=" (Left, Right : InventoryItemView_Access_Array_Access) return Boolean renames views.admin.inventory.InventoryItemView_Package_References."=";
   subtype InventoryItemView_Access_Array_Access_Array is views.admin.inventory.InventoryItemView_Package_References.InventoryItemView_Access_Array_Access_Array;
   function "=" (Left, Right : InventoryItemView_Access_Array_Access_Array) return Boolean renames views.admin.inventory.InventoryItemView_Package_References."=";
   subtype InventoryItemView_Access_Array_Access_Array_Access is views.admin.inventory.InventoryItemView_Package_References.InventoryItemView_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InventoryItemView_Access_Array_Access_Array_Access) return Boolean renames views.admin.inventory.InventoryItemView_Package_References."=";
   subtype DownloadableInventoryItemView_Access is views.admin.inventory.download.DownloadableInventoryItemView_Package_References.DownloadableInventoryItemView_Access;
   function "=" (Left, Right : DownloadableInventoryItemView_Access) return Boolean renames views.admin.inventory.download.DownloadableInventoryItemView_Package_References."=";
   subtype DownloadableInventoryItemView_Access_Array is views.admin.inventory.download.DownloadableInventoryItemView_Package_References.DownloadableInventoryItemView_Access_Array;
   function "=" (Left, Right : DownloadableInventoryItemView_Access_Array) return Boolean renames views.admin.inventory.download.DownloadableInventoryItemView_Package_References."=";
   subtype DownloadableInventoryItemView_Access_Array_Access is views.admin.inventory.download.DownloadableInventoryItemView_Package_References.DownloadableInventoryItemView_Access_Array_Access;
   function "=" (Left, Right : DownloadableInventoryItemView_Access_Array_Access) return Boolean renames views.admin.inventory.download.DownloadableInventoryItemView_Package_References."=";
   subtype DownloadableInventoryItemView_Access_Array_Access_Array is views.admin.inventory.download.DownloadableInventoryItemView_Package_References.DownloadableInventoryItemView_Access_Array_Access_Array;
   function "=" (Left, Right : DownloadableInventoryItemView_Access_Array_Access_Array) return Boolean renames views.admin.inventory.download.DownloadableInventoryItemView_Package_References."=";
   subtype DownloadableInventoryItemView_Access_Array_Access_Array_Access is views.admin.inventory.download.DownloadableInventoryItemView_Package_References.DownloadableInventoryItemView_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DownloadableInventoryItemView_Access_Array_Access_Array_Access) return Boolean renames views.admin.inventory.download.DownloadableInventoryItemView_Package_References."=";
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
            InventoryItemViewParentTagHelper'Class (This).checkForValidationViewHelper (inventoryTag.getHelper);
            validationViewHelper := ValidationViewHelper_Access (inventoryTag.getHelper);
            viewObject := TransformInterface_Access (validationViewHelper.getViewObject);
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
            InventoryItemViewParentTagHelper'Class (This).checkForValidationViewHelper (inventoryTag.getHelper);
            validationViewHelper := ValidationViewHelper_Access (inventoryTag.getHelper);
            viewObject := TransformInterface_Access (validationViewHelper.getViewObject);
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
            InventoryItemViewParentTagHelper'Class (This).checkForValidationViewHelper (inventoryTag.getHelper);
            validationViewHelper := ValidationViewHelper_Access (inventoryTag.getHelper);
            viewObject := TransformInterface_Access (validationViewHelper.getViewObject);
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
      Java_Result : constant InventoryItemView_Access := InventoryItemViewParentTagHelper'Class (This).getInventoryItemView (inventoryTag_Param => inventoryTag_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInventoryItemView;

   procedure getDownloadableInventoryItemView (This : in out InventoryItemViewParentTagHelper; inventoryTag_Param : access HelperTag_Package.HelperTag'Class) is
      Java_Result : constant DownloadableInventoryItemView_Access := InventoryItemViewParentTagHelper'Class (This).getDownloadableInventoryItemView (inventoryTag_Param => inventoryTag_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDownloadableInventoryItemView;

   procedure getRequestMapInterface (This : in out InventoryItemViewParentTagHelper; inventoryTag_Param : access HelperTag_Package.HelperTag'Class) is
      Java_Result : constant RequestMapInterface_Access := InventoryItemViewParentTagHelper'Class (This).getRequestMapInterface (inventoryTag_Param => inventoryTag_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRequestMapInterface;

   procedure checkForValidationViewHelper (This : in out InventoryItemViewParentTagHelper; Value : Unbounded_String) is
   begin
      InventoryItemViewParentTagHelper'Class (This).checkForValidationViewHelper (Java_Box (Value));
   end checkForValidationViewHelper;

begin
   null;
   instance := InventoryItemViewParentTagHelper_Package.Create;

end admin.taghelpers.InventoryItemViewParentTagHelper_Package;


