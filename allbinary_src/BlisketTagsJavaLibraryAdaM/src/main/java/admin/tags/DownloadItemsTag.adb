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


package body admin.tags.DownloadItemsTag_Package is

   procedure Initialize_Fields (This : in out DownloadItemsTag'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out DownloadItemsTag'Class) is
   begin
      TableTag_Package.Initialize (This);
      Initialize_Fields (This);
        This.setTagHelperFactory (DownloadItemsHelperFactory_Package.Create);
        This.setTagRequestHelperFactory (DownloadItemsRequestHelperFactory_Package.Create);
   end Initialize;

   function Create return DownloadItemsTag_Access is
      This : constant DownloadItemsTag_Access := new DownloadItemsTag;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  throws JspTagException
   function doStartTag (This : in out DownloadItemsTag) return Integer is
      parentTag : Tag_Access;
   begin
        begin
            if This.isEnabled then
                if (This.getCommand) /= (null) then
                    if ((((This.getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.BACKUP)) /= (0)) and then ((This.getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.RESTORE)) /= (0))) and then ((This.getCommand.compareTo (This.commonStrings.CREATE)) /= (0))) and then ((This.getCommand.compareTo (This.commonStrings.DROP)) /= (0)) then
                        parentTag := This.getParent;
                        ParentInventoryTagHelper_Package.getInstance.isValid (This'Unchecked_Access, parentTag);
                        This.getPropertiesHashMap.put (AbTagData_Package.PARENT, parentTag);
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

   procedure doStartTag (This : in out DownloadItemsTag) is
      Java_Result : constant Integer := DownloadItemsTag'Class (This).doStartTag;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end doStartTag;

end admin.tags.DownloadItemsTag_Package;


