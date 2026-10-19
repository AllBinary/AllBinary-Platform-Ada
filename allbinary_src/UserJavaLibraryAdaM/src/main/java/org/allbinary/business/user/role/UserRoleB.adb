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


with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.business.user.role.UserRoleFactory_Package; use org.allbinary.business.user.role.UserRoleFactory_Package;

package body org.allbinary.business.user.role.UserRoleB_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   procedure Initialize_Fields (This : in out UserRoleB'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out UserRoleB'Class; aBasicUserRole_Param : access BasicUserRole_Package.BasicUserRole'Class; aUserFactoryInterface_Param : access UserFactoryInterface_Package.UserFactoryInterface'Class) is
      aBasicUserRole : constant BasicUserRole_Access := BasicUserRole_Access (aBasicUserRole_Param);
      aUserFactoryInterface : constant UserFactoryInterface_Access := UserFactoryInterface_Access (aUserFactoryInterface_Param);
   begin
        UserRole_Package.Initialize (This, aBasicUserRole, aUserFactoryInterface);
        UserRoleB_Package.roleVector.add (UserRoleB_Access'(This'Unchecked_Access));
   end Initialize;

   function Create (aBasicUserRole_Param : access BasicUserRole_Package.BasicUserRole'Class; aUserFactoryInterface_Param : access UserFactoryInterface_Package.UserFactoryInterface'Class) return UserRoleB_Access is
      This : constant UserRoleB_Access := new UserRoleB;
   begin
      UserRoleB_Package.Initialize (This.all, aBasicUserRole_Param, aUserFactoryInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function getRole (role : Unbounded_String) return UserRole_Access is
      roleVector : BasicArrayList_Access;
      size : Integer;
      userRole : UserRole_Access;
      index : Integer;
   begin
        UserRoleFactory_Package.getInstance;
        if not (StringValidationUtil_Package.getInstance.isEmpty (role)) then
            roleVector := UserRoleB_Package.getAll;
            size := roleVector.size;
            for index in 0 .. (size) - 1 loop
                userRole := UserRole_Access (roleVector.get (index));
                if (Java_Compare_To (role, userRole.toString)) = (0) then
                    return userRole;
                end if;
            end loop;
        end if;
        Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Unable to get role - Unknown Role = ") & role));
   end getRole;

   function getAll return BasicArrayList_Access is
   begin
        UserRoleFactory_Package.getInstance;
        return UserRoleB_Package.roleVector;
   end getAll;

   procedure getRole (role : Unbounded_String) is
      Java_Result : constant UserRole_Access := getRole (role => role);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRole;

begin
   null;
   roleVector := BasicArrayList_Access (BasicArrayListD_Package.Create);

end org.allbinary.business.user.role.UserRoleB_Package;


