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


package body tags.admin.inventory.DownloadItemTag_Package is

   procedure Initialize_Fields (This : in out DownloadItemTag'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out DownloadItemTag'Class) is
   begin
      StoreValidationTransformTag_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return DownloadItemTag_Access is
      This : constant DownloadItemTag_Access := new DownloadItemTag;
   begin
      DownloadItemTag_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws JspTagException
   function doStartTag (This : in out DownloadItemTag) return Integer is
   begin
        begin
            if (This.getCommand) /= (null) then
                if (This.getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.VIEW)) = (0) then
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Such View Command: ") & Java_Image (This.getCommand)));
                elsif (This.getCommand.compareTo (This.commonStrings.INSERT)) = (0) then
                    This.setName (To_Unbounded_String ("Add Inventory Item Validation View"));
                    This.setObjectFile (To_Unbounded_String ("views.admin.inventory.download.AddFileValidationView"));
                elsif (This.getCommand.compareTo (This.commonStrings.DELETE)) = (0) then
                    This.setName (To_Unbounded_String ("Delete Inventory Item Validation View"));
                    This.setObjectFile (To_Unbounded_String ("views.admin.inventory.download.DeleteFileValidationView"));
                elsif (This.getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.EDIT)) = (0) then
                    This.setName (To_Unbounded_String ("Edit Inventory Item Validation View"));
                    This.setObjectFile (To_Unbounded_String ("views.admin.inventory.download.EditValidationView"));
                elsif (This.getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.NEW_Id)) = (0) then
                    This.setName (To_Unbounded_String ("New Inventory Item Validation View"));
                    This.setObjectFile (To_Unbounded_String ("views.admin.inventory.download.NewValidationView"));
                elsif (This.getCommand.compareTo (This.commonStrings.UPDATE)) = (0) then
                    This.setName (To_Unbounded_String ("Update Inventory Item Validation View"));
                    This.setObjectFile (To_Unbounded_String ("views.admin.inventory.download.UpdateFileValidationView"));
                else
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Such View Command: ") & Java_Image (This.getCommand)));
                end if;
                return StoreValidationTransformTag (This).doStartTag;
            end if;
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Command Null")));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            AbResponseHandler_Package.sendJspTagLicensingRedirect (This.pageContext, e);
            return SKIP_BODY;
                end;
        end;
   end doStartTag;

end tags.admin.inventory.DownloadItemTag_Package;


