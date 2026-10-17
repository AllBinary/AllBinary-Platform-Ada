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


package body org.allbinary.business.user.role.BasicUserRole_Package is

   procedure Initialize_Fields (This : in out BasicUserRole'Class) is
   begin
      null;
      
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out BasicUserRole'Class; aRole : Unbounded_String; a_int_RoleId : Integer; aSessionTimeout : Long_Long_Integer; aSessionInactivityTimeout : Long_Long_Integer) is
   begin
        Initialize (This, aRole, aRole, a_int_RoleId, aSessionTimeout, aSessionInactivityTimeout);
   end Initialize;

   function Create (aRole : Unbounded_String; a_int_RoleId : Integer; aSessionTimeout : Long_Long_Integer; aSessionInactivityTimeout : Long_Long_Integer) return BasicUserRole_Access is
      This : constant BasicUserRole_Access := new BasicUserRole;
   begin
      BasicUserRole_Package.Initialize (This.all, aRole, a_int_RoleId, aSessionTimeout, aSessionInactivityTimeout);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out BasicUserRole'Class; aRole : Unbounded_String; aDisplayValue : Unbounded_String; a_int_RoleId : Integer; aSessionTimeout : Long_Long_Integer; aSessionInactivityTimeout : Long_Long_Integer) is
   begin
      Initialize_Fields (This);
        This.m_int_RoleId := a_int_RoleId;
        This.role := aRole;
        This.displayValue := aDisplayValue;
        This.sessionTimeout := aSessionTimeout;
        This.sessionInactivityTimeout := aSessionInactivityTimeout;
        BasicUserRole_Package.roleVector.add (This'Unchecked_Access);
   end Initialize;

   function Create (aRole : Unbounded_String; aDisplayValue : Unbounded_String; a_int_RoleId : Integer; aSessionTimeout : Long_Long_Integer; aSessionInactivityTimeout : Long_Long_Integer) return BasicUserRole_Access is
      This : constant BasicUserRole_Access := new BasicUserRole;
   begin
      BasicUserRole_Package.Initialize (This.all, aRole, aDisplayValue, a_int_RoleId, aSessionTimeout, aSessionInactivityTimeout);
      return This;
   end Create;

   function getRoleId (This : in out BasicUserRole) return Integer is
   begin
        return This.m_int_RoleId;
   end getRoleId;

   function getRole (This : in out BasicUserRole) return Unbounded_String is
   begin
        return This.role;
   end getRole;

   function getSessionTimeout (This : in out BasicUserRole) return Long_Long_Integer is
   begin
        return This.sessionTimeout;
   end getSessionTimeout;

   function getSessionInactivityTimeout (This : in out BasicUserRole) return Long_Long_Integer is
   begin
        return This.sessionInactivityTimeout;
   end getSessionInactivityTimeout;

   function equals (This : in out BasicUserRole; basicUserRole : BasicUserRole_Access) return Boolean is
   begin
        if (This.getRoleId) = (basicUserRole.getRoleId) then
            return True;
        end if;
        return False;
   end equals;

   function toString (This : in out BasicUserRole) return Unbounded_String is
   begin
        return This.getRole;
   end toString;

   --  throws Exception
   function getRole (role : Unbounded_String) return BasicUserRole_Access is
      roleVector : BasicArrayList_Access;
      size : Integer;
      userRole : BasicUserRole_Access;
      index : Integer;
   begin
        roleVector := BasicUserRole_Package.getAll;
        size := roleVector.size;
        for index in 0 .. (size) - 1 loop
            userRole := BasicUserRole_Access (roleVector.get (index));
            if (role.compareTo (userRole.toString)) = (0) then
                return userRole;
            end if;
        end loop;
        Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Unable to get role - Unknown Role")));
   end getRole;

   function getAll return BasicArrayList_Access is
   begin
        return BasicUserRole_Package.roleVector;
   end getAll;

   procedure equals (This : in out BasicUserRole; basicUserRole : BasicUserRole_Access) is
      Java_Result : constant Boolean := BasicUserRole'Class (This).equals (basicUserRole);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end equals;

   procedure getRole (role : Unbounded_String) is
      Java_Result : constant BasicUserRole_Access := getRole (role);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRole;

begin
   null;
   roleVector := BasicArrayListD_Package.Create;

end org.allbinary.business.user.role.BasicUserRole_Package;


