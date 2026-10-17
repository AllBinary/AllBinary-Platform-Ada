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


package body tags.admin.UsersTag_Package is

   procedure Initialize_Fields (This : in out UsersTag'Class) is
   begin
      null;
      This.role := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out UsersTag'Class) is
   begin
      StoreValidationTransformTag_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return UsersTag_Access is
      This : constant UsersTag_Access := new UsersTag;
   begin
      UsersTag_Package.Initialize (This.all);
      return This;
   end Create;

   procedure setRole (This : in out UsersTag; value : Unbounded_String) is
   begin
        This.role := value;
   end setRole;

   --  throws JspTagException
   function doStartTag (This : in out UsersTag) return Integer is
   begin
        begin
            This.setName (To_Unbounded_String ("Admin Users View"));
            This.setObjectFile (To_Unbounded_String ("views.admin.user.UsersValidationView"));
            if (This.getCommand) /= (null) then
                This.getPropertiesHashMap.put (UserRoleData_Package.NAME, This.role);
                if (This.getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.VIEW)) = (0) then
                    null;
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
            AbResponseHandler_Package.sendJspTagRedirect (This.pageContext, e);
            return SKIP_BODY;
                end;
        end;
   end doStartTag;

end tags.admin.UsersTag_Package;


