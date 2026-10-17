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


package body org.allbinary.business.user.role.StoreRoleFactory_Package is

   procedure Initialize_Fields (This : in out StoreRoleFactory'Class) is
   begin
      null;
      This.roles := BasicArrayListD_Package.Create;
      This.subscriberRoles := BasicArrayListD_Package.Create;
      This.wholesaleRoles := BasicArrayListD_Package.Create;
   end Initialize_Fields;


   function getInstance return StoreRoleFactory_Access is
   begin
        return StoreRoleFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out StoreRoleFactory'Class) is
      basicUserRoleFactory : BasicUserRoleFactory_Access;
   begin
      Initialize_Fields (This);
        basicUserRoleFactory := BasicUserRoleFactory_Package.getInstance;
        This.roles.add (basicUserRoleFactory.CUSTOMER);
        This.roles.add (basicUserRoleFactory.SUBSCRIBERCUSTOMER);
        This.roles.add (basicUserRoleFactory.WHOLESALECUSTOMER);
        This.subscriberRoles.add (basicUserRoleFactory.SUBSCRIBERCUSTOMER);
        This.wholesaleRoles.add (basicUserRoleFactory.WHOLESALECUSTOMER);
   end Initialize;

   function Create return StoreRoleFactory_Access is
      This : constant StoreRoleFactory_Access := new StoreRoleFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getRoles (This : in out StoreRoleFactory) return BasicArrayList_Access is
   begin
        return This.roles;
   end getRoles;

   function getSubscriberRoles (This : in out StoreRoleFactory) return BasicArrayList_Access is
   begin
        return This.subscriberRoles;
   end getSubscriberRoles;

   function getWholesaleRoles (This : in out StoreRoleFactory) return BasicArrayList_Access is
   begin
        return This.wholesaleRoles;
   end getWholesaleRoles;

   procedure getInstance is
      Java_Result : constant StoreRoleFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getRoles (This : in out StoreRoleFactory) is
      Java_Result : constant BasicArrayList_Access := StoreRoleFactory'Class (This).getRoles;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRoles;

   procedure getSubscriberRoles (This : in out StoreRoleFactory) is
      Java_Result : constant BasicArrayList_Access := StoreRoleFactory'Class (This).getSubscriberRoles;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSubscriberRoles;

   procedure getWholesaleRoles (This : in out StoreRoleFactory) is
      Java_Result : constant BasicArrayList_Access := StoreRoleFactory'Class (This).getWholesaleRoles;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getWholesaleRoles;

begin
   null;
   instance := StoreRoleFactory_Package.Create;

end org.allbinary.business.user.role.StoreRoleFactory_Package;


