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


with admin.taghelpers.InventoryHelperFactory_Package; use admin.taghelpers.InventoryHelperFactory_Package;
with admin.taghelpers.InventoryRequestHelperFactory_Package; use admin.taghelpers.InventoryRequestHelperFactory_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
with admin.tags.ParentInventoryTagHelper_Package; use admin.tags.ParentInventoryTagHelper_Package;
with admin.tags.AbTagData_Package; use admin.tags.AbTagData_Package;

package body admin.tags.InventoryTag_Package is

   package InventoryHelperFactory_Package renames Standard.admin.taghelpers.InventoryHelperFactory_Package;
   package InventoryRequestHelperFactory_Package renames Standard.admin.taghelpers.InventoryRequestHelperFactory_Package;
   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package AbResponseHandler_Package renames Standard.org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   procedure Initialize_Fields (This : in out InventoryTag'Class) is
   begin
      null;
      This.storeName := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out InventoryTag'Class) is
   begin
        TableTag_Package.Initialize (This);
        Initialize_Fields (This);
        InventoryTag'Class (This).setTagHelperFactory (InventoryHelperFactory_Package.Create);
        InventoryTag'Class (This).setTagRequestHelperFactory (InventoryRequestHelperFactory_Package.Create);
   end Initialize;

   function Create return InventoryTag_Access is
      This : constant InventoryTag_Access := new InventoryTag;
   begin
      InventoryTag_Package.Initialize (This.all);
      return This;
   end Create;

   procedure setStoreName (This : in out InventoryTag; value : Unbounded_String) is
   begin
        This.storeName := value;
   end setStoreName;

   --  throws JspTagException
   function doStartTag (This : in out InventoryTag) return Integer is
      parentTag : Tag_Access;
   begin
        begin
            if InventoryTag'Class (This).isEnabled then
                if (InventoryTag'Class (This).getCommand) /= (null) then
                    if ((((InventoryTag'Class (This).getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.BACKUP)) /= (0)) and then ((InventoryTag'Class (This).getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.RESTORE)) /= (0))) and then ((InventoryTag'Class (This).getCommand.compareTo (This.commonStrings.CREATE)) /= (0))) and then ((InventoryTag'Class (This).getCommand.compareTo (This.commonStrings.DROP)) /= (0)) then
                        parentTag := InventoryTag'Class (This).getParent;
                        ParentInventoryTagHelper_Package.getInstance.isValid (InventoryTag_Access'(This'Unchecked_Access), parentTag);
                        InventoryTag'Class (This).getPropertiesHashMap.put (AbTagData_Package.PARENT, parentTag);
                        InventoryTag'Class (This).getPropertiesHashMap.put (StoreFrontData_Package.getInstance.NAME, This.storeName);
                    end if;
                    return TableTag (This).doStartTag;
                end if;
            end if;
            return SKIP_BODY;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            AbResponseHandler_Package.sendJspTagRedirect (This.pageContext, e);
            return SKIP_BODY;
                end;
        end;
   end doStartTag;

end admin.tags.InventoryTag_Package;


