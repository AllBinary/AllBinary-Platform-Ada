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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.user.role.BasicUserRoleFactory_Package; use org.allbinary.business.user.role.BasicUserRoleFactory_Package;

package org.allbinary.business.user.role.AdminRoleFactory_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type AdminRoleFactory is tagged;
   type AdminRoleFactory_Access is access all AdminRoleFactory'Class;
   type AdminRoleFactory_Access_Array is array (Natural range <>) of AdminRoleFactory_Access;
   type AdminRoleFactory_Access_Array_Access is access all AdminRoleFactory_Access_Array;

   type AdminRoleFactory is new Java_Object with record
      adminRoles : BasicArrayList_Access;
      storeAdminRoles : BasicArrayList_Access;
      storeManagementRoles : BasicArrayList_Access;
      productManagementRoles : BasicArrayList_Access;
      reviewManagementRoles : BasicArrayList_Access;
      customerManagementRoles : BasicArrayList_Access;
      workflowManagementRoles : BasicArrayList_Access;
      orderManagementRoles : BasicArrayList_Access;
      adjusterManagementRoles : BasicArrayList_Access;
      shippingManagementRoles : BasicArrayList_Access;
      webManagementRoles : BasicArrayList_Access;
   end record;
   instance : AdminRoleFactory_Access;

   procedure Initialize (This : in out AdminRoleFactory'Class);
   function Create return AdminRoleFactory_Access;
   function getInstance return AdminRoleFactory_Access;
   function getProductManagementRoles (This : in out AdminRoleFactory) return BasicArrayList_Access;
   function getAdminRoles (This : in out AdminRoleFactory) return BasicArrayList_Access;
   function getStoreAdminRoles (This : in out AdminRoleFactory) return BasicArrayList_Access;
   function getStoreManagementRoles (This : in out AdminRoleFactory) return BasicArrayList_Access;
   function getReviewManagementRoles (This : in out AdminRoleFactory) return BasicArrayList_Access;
   function getCustomerManagementRoles (This : in out AdminRoleFactory) return BasicArrayList_Access;
   function getWorkflowManagementRoles (This : in out AdminRoleFactory) return BasicArrayList_Access;
   function getWebManagementRoles (This : in out AdminRoleFactory) return BasicArrayList_Access;
   function getShippingManagementRoles (This : in out AdminRoleFactory) return BasicArrayList_Access;
   function getAdjusterManagementRoles (This : in out AdminRoleFactory) return BasicArrayList_Access;
   function getOrderManagementRoles (This : in out AdminRoleFactory) return BasicArrayList_Access;

end org.allbinary.business.user.role.AdminRoleFactory_Package;


