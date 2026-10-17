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


package body org.allbinary.business.user.role.UserRoleB_Package is

   procedure Initialize_Fields (This : in out UserRoleB'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out UserRoleB'Class; aBasicUserRole : BasicUserRole_Access; aUserFactoryInterface : UserFactoryInterface_Access) is
   begin
        UserRole_Package.Initialize (This, aBasicUserRole, aUserFactoryInterface);
        UserRoleB_Package.roleVector.add (This'Unchecked_Access);
   end Initialize;

   function Create (aBasicUserRole : BasicUserRole_Access; aUserFactoryInterface : UserFactoryInterface_Access) return UserRoleB_Access is
      This : constant UserRoleB_Access := new UserRoleB;
   begin
      UserRoleB_Package.Initialize (This.all, aBasicUserRole, aUserFactoryInterface);
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
                if (role.compareTo (userRole.toString)) = (0) then
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
      Java_Result : constant UserRole_Access := getRole (role);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRole;

begin
   null;
   roleVector := BasicArrayListD_Package.Create;

end org.allbinary.business.user.role.UserRoleB_Package;


