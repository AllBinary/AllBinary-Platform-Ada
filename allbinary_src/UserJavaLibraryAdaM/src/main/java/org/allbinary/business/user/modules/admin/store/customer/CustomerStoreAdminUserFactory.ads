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

limited with org.allbinary.business.user.modules.admin.store.customer.CustomerStoreAdminUserFactory_Package;
package org.allbinary.business.user.modules.admin.store.customer.CustomerStoreAdminUserFactory_Package_References is
   type CustomerStoreAdminUserFactory_Access is access all org.allbinary.business.user.modules.admin.store.customer.CustomerStoreAdminUserFactory_Package.CustomerStoreAdminUserFactory'Class;
   type CustomerStoreAdminUserFactory_Access_Array is array (Natural range <>) of CustomerStoreAdminUserFactory_Access;
   type CustomerStoreAdminUserFactory_Access_Array_Access is access all CustomerStoreAdminUserFactory_Access_Array;
   type CustomerStoreAdminUserFactory_Access_Array_Access_Array is array (Natural range <>) of CustomerStoreAdminUserFactory_Access_Array_Access;
   type CustomerStoreAdminUserFactory_Access_Array_Access_Array_Access is access all CustomerStoreAdminUserFactory_Access_Array_Access_Array;
end org.allbinary.business.user.modules.admin.store.customer.CustomerStoreAdminUserFactory_Package_References;

with org.allbinary.business.user.modules.admin.store.customer.CustomerStoreAdminUserFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.business.user.UserFactoryInterface_Package; use org.allbinary.business.user.UserFactoryInterface_Package;
limited with org.allbinary.business.user.UserInterface_Package;
with org.allbinary.business.user.UserInterface_Package_References;

package org.allbinary.business.user.modules.admin.store.customer.CustomerStoreAdminUserFactory_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package UserFactoryInterface_Package renames Standard.org.allbinary.business.user.UserFactoryInterface_Package;
   package UserInterface_Package renames Standard.org.allbinary.business.user.UserInterface_Package;
   package Reference_Types is
   subtype UserInterface_Access is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access;
   use type UserInterface_Access;
   subtype UserInterface_Access_Array is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access_Array;
   use type UserInterface_Access_Array;
   subtype UserInterface_Access_Array_Access is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access_Array_Access;
   use type UserInterface_Access_Array_Access;
   subtype UserInterface_Access_Array_Access_Array is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access_Array_Access_Array;
   use type UserInterface_Access_Array_Access_Array;
   subtype UserInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access_Array_Access_Array_Access;
   use type UserInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CustomerStoreAdminUserFactory_Access is org.allbinary.business.user.modules.admin.store.customer.CustomerStoreAdminUserFactory_Package_References.CustomerStoreAdminUserFactory_Access;
   function "=" (Left, Right : CustomerStoreAdminUserFactory_Access) return Boolean renames org.allbinary.business.user.modules.admin.store.customer.CustomerStoreAdminUserFactory_Package_References."=";
   subtype CustomerStoreAdminUserFactory_Access_Array is org.allbinary.business.user.modules.admin.store.customer.CustomerStoreAdminUserFactory_Package_References.CustomerStoreAdminUserFactory_Access_Array;
   function "=" (Left, Right : CustomerStoreAdminUserFactory_Access_Array) return Boolean renames org.allbinary.business.user.modules.admin.store.customer.CustomerStoreAdminUserFactory_Package_References."=";
   subtype CustomerStoreAdminUserFactory_Access_Array_Access is org.allbinary.business.user.modules.admin.store.customer.CustomerStoreAdminUserFactory_Package_References.CustomerStoreAdminUserFactory_Access_Array_Access;
   function "=" (Left, Right : CustomerStoreAdminUserFactory_Access_Array_Access) return Boolean renames org.allbinary.business.user.modules.admin.store.customer.CustomerStoreAdminUserFactory_Package_References."=";
   subtype CustomerStoreAdminUserFactory_Access_Array_Access_Array is org.allbinary.business.user.modules.admin.store.customer.CustomerStoreAdminUserFactory_Package_References.CustomerStoreAdminUserFactory_Access_Array_Access_Array;
   function "=" (Left, Right : CustomerStoreAdminUserFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.modules.admin.store.customer.CustomerStoreAdminUserFactory_Package_References."=";
   subtype CustomerStoreAdminUserFactory_Access_Array_Access_Array_Access is org.allbinary.business.user.modules.admin.store.customer.CustomerStoreAdminUserFactory_Package_References.CustomerStoreAdminUserFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CustomerStoreAdminUserFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.modules.admin.store.customer.CustomerStoreAdminUserFactory_Package_References."=";

   type CustomerStoreAdminUserFactory is new Java_Object and UserFactoryInterface with null record;

   procedure Initialize (This : in out CustomerStoreAdminUserFactory'Class);
   function Create return CustomerStoreAdminUserFactory_Access;
   function getInstance (This : in out CustomerStoreAdminUserFactory) return UserInterface_Access;
   function getInstance (This : in out CustomerStoreAdminUserFactory; hashMap_Param : access HashMap_Package.HashMap'Class) return UserInterface_Access;
   procedure getInstance (This : in out CustomerStoreAdminUserFactory; hashMap_Param : access HashMap_Package.HashMap'Class);

end org.allbinary.business.user.modules.admin.store.customer.CustomerStoreAdminUserFactory_Package;


