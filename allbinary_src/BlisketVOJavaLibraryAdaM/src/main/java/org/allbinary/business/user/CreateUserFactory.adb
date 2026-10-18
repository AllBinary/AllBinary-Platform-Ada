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


with org.allbinary.business.user.role.UserRole_Package; use org.allbinary.business.user.role.UserRole_Package;
with org.allbinary.business.user.role.UserRoleB_Package; use org.allbinary.business.user.role.UserRoleB_Package;
with org.allbinary.business.user.role.UserRoleData_Package; use org.allbinary.business.user.role.UserRoleData_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;

package body org.allbinary.business.user.CreateUserFactory_Package is

   package UserRole_Package renames Standard.org.allbinary.business.user.role.UserRole_Package;
   package UserRoleB_Package renames Standard.org.allbinary.business.user.role.UserRoleB_Package;
   package UserRoleData_Package renames Standard.org.allbinary.business.user.role.UserRoleData_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   procedure Initialize_Fields (This : in out CreateUserFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out CreateUserFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return CreateUserFactory_Access is
      This : constant CreateUserFactory_Access := new CreateUserFactory;
   begin
      CreateUserFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (hashMap_Param : access HashMap_Package.HashMap'Class) return UserInterface_Access is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      roleString : Unbounded_String;
      role : UserRole_Access;
   begin
        if (hashMap) /= (null) then
            roleString := Java_Unbox (hashMap.get (Java_Box (UserRoleData_Package.NAME.toString)));
            if not (StringValidationUtil_Package.getInstance.isEmpty (roleString)) then
                role := UserRoleB_Package.getRole (roleString);
                return role.getUserFactory.getInstance (hashMap);
            else
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Role Specified")));
            end if;
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Null HashMap")));
        end if;
   end getInstance;

   procedure getInstance (hashMap_Param : access HashMap_Package.HashMap'Class) is
      Java_Result : constant UserInterface_Access := getInstance (hashMap_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.business.user.CreateUserFactory_Package;


