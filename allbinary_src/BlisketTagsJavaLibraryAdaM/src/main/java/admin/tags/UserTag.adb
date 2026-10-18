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


with admin.taghelpers.UserHelperFactory_Package; use admin.taghelpers.UserHelperFactory_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.user.role.UserRoleData_Package; use org.allbinary.business.user.role.UserRoleData_Package;
with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;

package body admin.tags.UserTag_Package is

   package UserHelperFactory_Package renames Standard.admin.taghelpers.UserHelperFactory_Package;
   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package UserRoleData_Package renames Standard.org.allbinary.business.user.role.UserRoleData_Package;
   package AbResponseHandler_Package renames Standard.org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   procedure Initialize_Fields (This : in out UserTag'Class) is
   begin
      null;
      This.role := Null_Unbounded_String;
      This.enable := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out UserTag'Class) is
   begin
      TableTag_Package.Initialize (This);
      Initialize_Fields (This);
        UserTag'Class (This).setTagHelperFactory (UserHelperFactory_Package.Create);
        UserTag'Class (This).setTagRequestHelperFactory (UserHelperFactory_Package.Create);
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

   procedure setEnable (This : in out UserTag; value : Unbounded_String) is
   begin
        This.enable := value;
        UserTag'Class (This).getPropertiesHashMap.put (EntryData_Package.getInstance.ENABLE, This.enable);
   end setEnable;

   --  throws JspTagException
   function doStartTag (This : in out UserTag) return Integer is
   begin
        begin
            if UserTag'Class (This).isEnabled then
                return TableTag (This).doStartTag;
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

end admin.tags.UserTag_Package;


