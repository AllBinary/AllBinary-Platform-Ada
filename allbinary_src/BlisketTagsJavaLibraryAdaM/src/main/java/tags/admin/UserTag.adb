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


with org.allbinary.business.user.role.UserRoleData_Package; use org.allbinary.business.user.role.UserRoleData_Package;
with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
with org.allbinary.logic.communication.sql.SqlStrings_Package; use org.allbinary.logic.communication.sql.SqlStrings_Package;

package body tags.admin.UserTag_Package is

   package UserRoleData_Package renames Standard.org.allbinary.business.user.role.UserRoleData_Package;
   package AbResponseHandler_Package renames Standard.org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   package SqlStrings_Package renames Standard.org.allbinary.logic.communication.sql.SqlStrings_Package;
   procedure Initialize_Fields (This : in out UserTag'Class) is
   begin
      null;
      This.role := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out UserTag'Class) is
   begin
      StoreValidationTransformTag_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return UserTag_Access is
      This : constant UserTag_Access := new UserTag;
   begin
      UserTag_Package.Initialize (This.all);
      return This;
   end Create;

   procedure setRole (This : in out UserTag; value : Unbounded_String) is
   begin
        This.role := value;
        UserTag'Class (This).getPropertiesHashMap.put (UserRoleData_Package.NAME, This.role);
   end setRole;

   --  throws JspTagException
   function doStartTag (This : in out UserTag) return Integer is
   begin
        begin
            if (UserTag'Class (This).getCommand) /= (null) then
                if (UserTag'Class (This).getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.NEW_Id)) = (0) then
                    UserTag'Class (This).setName (To_Unbounded_String ("New User View"));
                    UserTag'Class (This).setObjectFile (To_Unbounded_String ("views.admin.user.NewUserView"));
                elsif ((UserTag'Class (This).getCommand.compareTo (This.commonStrings.INSERT)) = (0)) or else ((UserTag'Class (This).getCommand.compareTo (SqlStrings_Package.getInstance.INSERT_INTO)) = (0)) then
                    UserTag'Class (This).setName (To_Unbounded_String ("Add Validation User View"));
                    UserTag'Class (This).setObjectFile (To_Unbounded_String ("views.admin.user.AddValidationUserView"));
                elsif (UserTag'Class (This).getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.VIEW)) = (0) then
                    UserTag'Class (This).setName (To_Unbounded_String ("Validation User View"));
                    UserTag'Class (This).setObjectFile (To_Unbounded_String ("views.admin.user.ViewValidationUserView"));
                elsif (UserTag'Class (This).getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.EDIT)) = (0) then
                    UserTag'Class (This).setName (To_Unbounded_String ("Validation User View"));
                    UserTag'Class (This).setObjectFile (To_Unbounded_String ("views.admin.user.EditValidationUserView"));
                elsif ((UserTag'Class (This).getCommand.compareTo (This.commonStrings.UPDATE)) = (0)) or else ((UserTag'Class (This).getCommand.compareTo (SqlStrings_Package.getInstance.UPDATE)) = (0)) then
                    UserTag'Class (This).setName (To_Unbounded_String ("Update Validation User View"));
                    UserTag'Class (This).setObjectFile (To_Unbounded_String ("views.admin.user.UpdateValidationUserView"));
                elsif (UserTag'Class (This).getCommand.compareTo (This.commonStrings.DELETE)) = (0) then
                    UserTag'Class (This).setName (To_Unbounded_String ("Delete Validation User View"));
                    UserTag'Class (This).setObjectFile (To_Unbounded_String ("views.admin.user.DeleteValidationUserView"));
                elsif (UserTag'Class (This).getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.BACKUP)) = (0) then
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("View not implemented")));
                elsif (UserTag'Class (This).getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.RESTORE)) = (0) then
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("View not implemented")));
                elsif (UserTag'Class (This).getCommand.compareTo (This.commonStrings.DROP)) = (0) then
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("View not implemented")));
                elsif (UserTag'Class (This).getCommand.compareTo (This.commonStrings.CREATE)) = (0) then
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("View not implemented")));
                else
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Such View Command: ") & Java_Image (UserTag'Class (This).getCommand)));
                end if;
                return StoreValidationTransformTag (This).doStartTag;
            end if;
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Command Null")));
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

end tags.admin.UserTag_Package;


