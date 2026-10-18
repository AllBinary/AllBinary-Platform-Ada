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


with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;

package body tags.admin.inventory.DownloadItemTag_Package is

   package AbResponseHandler_Package renames Standard.org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;
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
            if (DownloadItemTag'Class (This).getCommand) /= (null) then
                if (DownloadItemTag'Class (This).getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.VIEW)) = (0) then
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Such View Command: ") & Java_Image (DownloadItemTag'Class (This).getCommand)));
                elsif (DownloadItemTag'Class (This).getCommand.compareTo (This.commonStrings.INSERT)) = (0) then
                    DownloadItemTag'Class (This).setName (To_Unbounded_String ("Add Inventory Item Validation View"));
                    DownloadItemTag'Class (This).setObjectFile (To_Unbounded_String ("views.admin.inventory.download.AddFileValidationView"));
                elsif (DownloadItemTag'Class (This).getCommand.compareTo (This.commonStrings.DELETE)) = (0) then
                    DownloadItemTag'Class (This).setName (To_Unbounded_String ("Delete Inventory Item Validation View"));
                    DownloadItemTag'Class (This).setObjectFile (To_Unbounded_String ("views.admin.inventory.download.DeleteFileValidationView"));
                elsif (DownloadItemTag'Class (This).getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.EDIT)) = (0) then
                    DownloadItemTag'Class (This).setName (To_Unbounded_String ("Edit Inventory Item Validation View"));
                    DownloadItemTag'Class (This).setObjectFile (To_Unbounded_String ("views.admin.inventory.download.EditValidationView"));
                elsif (DownloadItemTag'Class (This).getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.NEW_Id)) = (0) then
                    DownloadItemTag'Class (This).setName (To_Unbounded_String ("New Inventory Item Validation View"));
                    DownloadItemTag'Class (This).setObjectFile (To_Unbounded_String ("views.admin.inventory.download.NewValidationView"));
                elsif (DownloadItemTag'Class (This).getCommand.compareTo (This.commonStrings.UPDATE)) = (0) then
                    DownloadItemTag'Class (This).setName (To_Unbounded_String ("Update Inventory Item Validation View"));
                    DownloadItemTag'Class (This).setObjectFile (To_Unbounded_String ("views.admin.inventory.download.UpdateFileValidationView"));
                else
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Such View Command: ") & Java_Image (DownloadItemTag'Class (This).getCommand)));
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


