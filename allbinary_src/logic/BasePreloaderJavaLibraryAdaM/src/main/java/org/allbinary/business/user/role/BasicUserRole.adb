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


with org.allbinary.business.user.role.BasicUserRoles_Package; use org.allbinary.business.user.role.BasicUserRoles_Package;
with org.allbinary.business.user.role.BasicUserRoles_Package;

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

   procedure Initialize (This : in out BasicUserRole'Class; aRole : Unbounded_String; aDisplayValue : Unbounded_String; a_int_RoleId : Integer; aSessionTimeout : Long_Long_Integer; aSessionInactivityTimeout : Long_Long_Integer) is
   begin
      Initialize_Fields (This);
        This.m_int_RoleId := a_int_RoleId;
        This.role := aRole;
        This.displayValue := aDisplayValue;
        This.sessionTimeout := aSessionTimeout;
        This.sessionInactivityTimeout := aSessionInactivityTimeout;
        BasicUserRoles_Package.getInstance.roleVector.add (BasicUserRole_Access'(This'Unchecked_Access));
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

   function equals (This : in out BasicUserRole; basicUserRole_Var_Param : access BasicUserRole_Package.BasicUserRole'Class) return Boolean is
      basicUserRole_Var : constant BasicUserRole_Access := BasicUserRole_Access (basicUserRole_Var_Param);
   begin
        if (BasicUserRole'Class (This).getRoleId) = (basicUserRole_Var.getRoleId) then
            return True;
        end if;
        return False;
   end equals;

   function toString (This : in out BasicUserRole) return Unbounded_String is
   begin
        return BasicUserRole'Class (This).getRole;
   end toString;

   procedure equals (This : in out BasicUserRole; basicUserRole_Var_Param : access BasicUserRole_Package.BasicUserRole'Class) is
      Java_Result : constant Boolean := BasicUserRole'Class (This).equals (basicUserRole_Var_Param => basicUserRole_Var_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end equals;

end org.allbinary.business.user.role.BasicUserRole_Package;


