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


package body org.allbinary.business.user.role.UserRole_Package is

   procedure Initialize_Fields (This : in out UserRole'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out UserRole'Class; aBasicUserRole : BasicUserRole_Access; aUserFactoryInterface : UserFactoryInterface_Access) is
   begin
      Initialize_Fields (This);
        This.basicUserRole := aBasicUserRole;
        This.userFactoryInterface := aUserFactoryInterface;
   end Initialize;

   function Create (aBasicUserRole : BasicUserRole_Access; aUserFactoryInterface : UserFactoryInterface_Access) return UserRole_Access is
      This : constant UserRole_Access := new UserRole;
   begin
      Initialize (This.all, aBasicUserRole, aUserFactoryInterface);
      return This;
   end Create;

   function toString (This : in out UserRole) return Unbounded_String is
   begin
        return This.basicUserRole.toString;
   end toString;

   function getBasicUserRole (This : in out UserRole) return BasicUserRole_Access is
   begin
        return This.basicUserRole;
   end getBasicUserRole;

   --  throws Exception
   function getUserFactory (This : in out UserRole) return UserFactoryInterface_Access is
   begin
        return This.userFactoryInterface;
   end getUserFactory;

   function getSessionTimeout (This : in out UserRole) return Long_Long_Integer is
   begin
        return This.basicUserRole.getSessionTimeout;
   end getSessionTimeout;

   function getSessionInactivityTimeout (This : in out UserRole) return Long_Long_Integer is
   begin
        return This.basicUserRole.getSessionInactivityTimeout;
   end getSessionInactivityTimeout;

   procedure toString (This : in out UserRole) is
      Java_Result : constant Unbounded_String := UserRole'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

   procedure getBasicUserRole (This : in out UserRole) is
      Java_Result : constant BasicUserRole_Access := UserRole'Class (This).getBasicUserRole;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getBasicUserRole;

   procedure getUserFactory (This : in out UserRole) is
      Java_Result : constant UserFactoryInterface_Access := UserRole'Class (This).getUserFactory;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getUserFactory;

   procedure getSessionTimeout (This : in out UserRole) is
      Java_Result : constant Long_Long_Integer := UserRole'Class (This).getSessionTimeout;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSessionTimeout;

   procedure getSessionInactivityTimeout (This : in out UserRole) is
      Java_Result : constant Long_Long_Integer := UserRole'Class (This).getSessionInactivityTimeout;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSessionInactivityTimeout;

end org.allbinary.business.user.role.UserRole_Package;


