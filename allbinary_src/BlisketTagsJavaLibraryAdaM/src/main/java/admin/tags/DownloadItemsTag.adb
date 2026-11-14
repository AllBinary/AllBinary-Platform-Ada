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


with admin.taghelpers.DownloadItemsHelperFactory_Package; use admin.taghelpers.DownloadItemsHelperFactory_Package;
with admin.taghelpers.DownloadItemsRequestHelperFactory_Package; use admin.taghelpers.DownloadItemsRequestHelperFactory_Package;
with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
with org.allbinary.globals.GLOBALS2_Package; use org.allbinary.globals.GLOBALS2_Package;
with admin.tags.ParentInventoryTagHelper_Package; use admin.tags.ParentInventoryTagHelper_Package;
with admin.tags.AbTagData_Package; use admin.tags.AbTagData_Package;
with admin.tags.ParentInventoryTagHelper_Package;

package body admin.tags.DownloadItemsTag_Package is

   package DownloadItemsHelperFactory_Package renames Standard.admin.taghelpers.DownloadItemsHelperFactory_Package;
   package DownloadItemsRequestHelperFactory_Package renames Standard.admin.taghelpers.DownloadItemsRequestHelperFactory_Package;
   package AbResponseHandler_Package renames Standard.org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   package GLOBALS2_Package renames Standard.org.allbinary.globals.GLOBALS2_Package;
   procedure Initialize_Fields (This : in out DownloadItemsTag'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out DownloadItemsTag'Class) is
   begin
      TableTag_Package.Initialize (This);
      Initialize_Fields (This);
        DownloadItemsTag'Class (This).setTagHelperFactory (DownloadItemsHelperFactory_Package.Create);
        DownloadItemsTag'Class (This).setTagRequestHelperFactory (DownloadItemsRequestHelperFactory_Package.Create);
   end Initialize;

   function Create return DownloadItemsTag_Access is
      This : constant DownloadItemsTag_Access := new DownloadItemsTag;
   begin
      DownloadItemsTag_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws JspTagException
   function doStartTag (This : in out DownloadItemsTag) return Integer is
      parentTag : Tag_Access;
   begin
        begin
            if DownloadItemsTag'Class (This).isEnabled then
                if (DownloadItemsTag'Class (This).getCommand) /= (null) then
                    if ((((DownloadItemsTag'Class (This).getCommand.compareTo (GLOBALS2_Package.BACKUP)) /= (0)) and then ((DownloadItemsTag'Class (This).getCommand.compareTo (GLOBALS2_Package.RESTORE)) /= (0))) and then ((DownloadItemsTag'Class (This).getCommand.compareTo (This.commonStrings.CREATE)) /= (0))) and then ((DownloadItemsTag'Class (This).getCommand.compareTo (This.commonStrings.DROP)) /= (0)) then
                        parentTag := DownloadItemsTag'Class (This).getParent;
                        ParentInventoryTagHelper_Package.getInstance.isValid (DownloadItemsTag_Access'(This'Unchecked_Access), parentTag);
                        DownloadItemsTag'Class (This).getPropertiesHashMap.put (AbTagData_Package.PARENT, parentTag);
                    end if;
                    return TableTag_Package.TableTag (This).doStartTag;
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

end admin.tags.DownloadItemsTag_Package;


