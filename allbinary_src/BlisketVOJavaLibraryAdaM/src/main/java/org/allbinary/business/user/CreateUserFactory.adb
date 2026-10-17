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


package body org.allbinary.business.user.CreateUserFactory_Package is

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
   function getInstance (hashMap : HashMap_Access) return UserInterface_Access is
      roleString : Unbounded_String;
      role : UserRole_Access;
   begin
        if (hashMap) /= (null) then
            roleString := Unbounded_String (hashMap.get (UserRoleData_Package.NAME.toString));
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

   procedure getInstance (hashMap : HashMap_Access) is
      Java_Result : constant UserInterface_Access := getInstance (hashMap);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.business.user.CreateUserFactory_Package;


