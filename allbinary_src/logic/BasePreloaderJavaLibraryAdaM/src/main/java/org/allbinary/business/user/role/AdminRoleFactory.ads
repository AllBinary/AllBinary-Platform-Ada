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

limited with org.allbinary.business.user.role.AdminRoleFactory_Package;
package org.allbinary.business.user.role.AdminRoleFactory_Package_References is
   type AdminRoleFactory_Access is access all org.allbinary.business.user.role.AdminRoleFactory_Package.AdminRoleFactory'Class;
   type AdminRoleFactory_Access_Array is array (Natural range <>) of AdminRoleFactory_Access;
   type AdminRoleFactory_Access_Array_Access is access all AdminRoleFactory_Access_Array;
   type AdminRoleFactory_Access_Array_Access_Array is array (Natural range <>) of AdminRoleFactory_Access_Array_Access;
   type AdminRoleFactory_Access_Array_Access_Array_Access is access all AdminRoleFactory_Access_Array_Access_Array;
end org.allbinary.business.user.role.AdminRoleFactory_Package_References;

with org.allbinary.business.user.role.AdminRoleFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.business.user.role.AdminRoleFactory_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AdminRoleFactory_Access is org.allbinary.business.user.role.AdminRoleFactory_Package_References.AdminRoleFactory_Access;
   function "=" (Left, Right : AdminRoleFactory_Access) return Boolean renames org.allbinary.business.user.role.AdminRoleFactory_Package_References."=";
   subtype AdminRoleFactory_Access_Array is org.allbinary.business.user.role.AdminRoleFactory_Package_References.AdminRoleFactory_Access_Array;
   function "=" (Left, Right : AdminRoleFactory_Access_Array) return Boolean renames org.allbinary.business.user.role.AdminRoleFactory_Package_References."=";
   subtype AdminRoleFactory_Access_Array_Access is org.allbinary.business.user.role.AdminRoleFactory_Package_References.AdminRoleFactory_Access_Array_Access;
   function "=" (Left, Right : AdminRoleFactory_Access_Array_Access) return Boolean renames org.allbinary.business.user.role.AdminRoleFactory_Package_References."=";
   subtype AdminRoleFactory_Access_Array_Access_Array is org.allbinary.business.user.role.AdminRoleFactory_Package_References.AdminRoleFactory_Access_Array_Access_Array;
   function "=" (Left, Right : AdminRoleFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.role.AdminRoleFactory_Package_References."=";
   subtype AdminRoleFactory_Access_Array_Access_Array_Access is org.allbinary.business.user.role.AdminRoleFactory_Package_References.AdminRoleFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdminRoleFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.role.AdminRoleFactory_Package_References."=";

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


