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
with tags.StoreValidationTransformTag_Package; use tags.StoreValidationTransformTag_Package;
with org.allbinary.globals.GLOBALS2_Package; use org.allbinary.globals.GLOBALS2_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with tags.ModifyTag_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;
with tags.transform.info.TransformInfoTag_Package;
with tags.TransformTag_Package;
with tags.ValidationTransformTag_Package;

package body tags.generic_Id.user.UserTag_Package is

   package UserRoleData_Package renames Standard.org.allbinary.business.user.role.UserRoleData_Package;
   package AbResponseHandler_Package renames Standard.org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   package GLOBALS2_Package renames Standard.org.allbinary.globals.GLOBALS2_Package;
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
                if (UserTag'Class (This).getCommand.compareTo ((GLOBALS2_Package.EDIT) + (GLOBALS2_Package.EDIT))) = (0) then
                    UserTag'Class (This).setName (To_Unbounded_String ("Edit Session Validation User View - i.e. User Profile Edit"));
                    UserTag'Class (This).setObjectFile (To_Unbounded_String ("views.generic.user.EditValidationView"));
                end if;
                if (UserTag'Class (This).getCommand.compareTo (GLOBALS2_Package.NEW_Id)) = (0) then
                    UserTag'Class (This).setName (To_Unbounded_String ("New User View"));
                    UserTag'Class (This).setObjectFile (To_Unbounded_String ("views.generic.user.NewUserView"));
                elsif (UserTag'Class (This).getCommand.compareTo (This.commonStrings.INSERT)) = (0) then
                    UserTag'Class (This).setName (To_Unbounded_String ("Add Validation User View"));
                    UserTag'Class (This).setObjectFile (To_Unbounded_String ("views.generic.user.AddValidationUserView"));
                elsif (UserTag'Class (This).getCommand.compareTo (GLOBALS2_Package.VIEW)) = (0) then
                    UserTag'Class (This).setName (To_Unbounded_String ("Validation User View"));
                    UserTag'Class (This).setObjectFile (To_Unbounded_String ("views.generic.user.ViewValidationUserView"));
                elsif (UserTag'Class (This).getCommand.compareTo (GLOBALS2_Package.EDIT)) = (0) then
                    UserTag'Class (This).setName (To_Unbounded_String ("Validation User View"));
                    UserTag'Class (This).setObjectFile (To_Unbounded_String ("views.generic.user.EditValidationUserView"));
                elsif (UserTag'Class (This).getCommand.compareTo (This.commonStrings.UPDATE)) = (0) then
                    UserTag'Class (This).setName (To_Unbounded_String ("Update Validation User View"));
                    UserTag'Class (This).setObjectFile (To_Unbounded_String ("views.generic.user.UpdateValidationUserView"));
                elsif (UserTag'Class (This).getCommand.compareTo (This.commonStrings.DELETE)) = (0) then
                    UserTag'Class (This).setName (To_Unbounded_String ("Delete Validation User View"));
                    UserTag'Class (This).setObjectFile (To_Unbounded_String ("views.generic.user.DeleteValidationUserView"));
                elsif (UserTag'Class (This).getCommand.compareTo (GLOBALS2_Package.BACKUP)) = (0) then
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("View not implemented")));
                elsif (UserTag'Class (This).getCommand.compareTo (GLOBALS2_Package.RESTORE)) = (0) then
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("View not implemented")));
                elsif (UserTag'Class (This).getCommand.compareTo (This.commonStrings.DROP)) = (0) then
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("View not implemented")));
                elsif (UserTag'Class (This).getCommand.compareTo (This.commonStrings.CREATE)) = (0) then
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("View not implemented")));
                else
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Such View Command: ") & Java_Image (UserTag'Class (This).getCommand)));
                end if;
                return StoreValidationTransformTag_Package.StoreValidationTransformTag (This).doStartTag;
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

end tags.generic_Id.user.UserTag_Package;


