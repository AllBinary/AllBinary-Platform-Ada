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

with AllBinary_Java;
limited with org.allbinary.business.user.modules.admin.store.order.OrderStoreAdminUserFactory_Package;
package org.allbinary.business.user.modules.admin.store.order.OrderStoreAdminUserFactory_Package_References is
   type OrderStoreAdminUserFactory_Access is access all org.allbinary.business.user.modules.admin.store.order.OrderStoreAdminUserFactory_Package.OrderStoreAdminUserFactory'Class;
   type OrderStoreAdminUserFactory_Access_Array is array (Natural range <>) of OrderStoreAdminUserFactory_Access;
   type OrderStoreAdminUserFactory_Access_Array_Access is access all OrderStoreAdminUserFactory_Access_Array;
   type OrderStoreAdminUserFactory_Access_Array_Access_Array is array (Natural range <>) of OrderStoreAdminUserFactory_Access_Array_Access;
   type OrderStoreAdminUserFactory_Access_Array_Access_Array_Access is access all OrderStoreAdminUserFactory_Access_Array_Access_Array;
   type OrderStoreAdminUserFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OrderStoreAdminUserFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : OrderStoreAdminUserFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OrderStoreAdminUserFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OrderStoreAdminUserFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OrderStoreAdminUserFactory_Access_Array_Access is (if Value /= null and then Value.all in OrderStoreAdminUserFactory_Access_Array_Object'Class then OrderStoreAdminUserFactory_Access_Array_Object'Class (Value.all).Value else null);
   type OrderStoreAdminUserFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OrderStoreAdminUserFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : OrderStoreAdminUserFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OrderStoreAdminUserFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OrderStoreAdminUserFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OrderStoreAdminUserFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in OrderStoreAdminUserFactory_Access_Array_Access_Array_Object'Class then OrderStoreAdminUserFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.modules.admin.store.order.OrderStoreAdminUserFactory_Package_References;

with org.allbinary.business.user.modules.admin.store.order.OrderStoreAdminUserFactory_Package_References;
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

package org.allbinary.business.user.modules.admin.store.order.OrderStoreAdminUserFactory_Package is

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


   subtype OrderStoreAdminUserFactory_Access is org.allbinary.business.user.modules.admin.store.order.OrderStoreAdminUserFactory_Package_References.OrderStoreAdminUserFactory_Access;
   function "=" (Left, Right : OrderStoreAdminUserFactory_Access) return Boolean renames org.allbinary.business.user.modules.admin.store.order.OrderStoreAdminUserFactory_Package_References."=";
   subtype OrderStoreAdminUserFactory_Access_Array is org.allbinary.business.user.modules.admin.store.order.OrderStoreAdminUserFactory_Package_References.OrderStoreAdminUserFactory_Access_Array;
   function "=" (Left, Right : OrderStoreAdminUserFactory_Access_Array) return Boolean renames org.allbinary.business.user.modules.admin.store.order.OrderStoreAdminUserFactory_Package_References."=";
   subtype OrderStoreAdminUserFactory_Access_Array_Access is org.allbinary.business.user.modules.admin.store.order.OrderStoreAdminUserFactory_Package_References.OrderStoreAdminUserFactory_Access_Array_Access;
   function "=" (Left, Right : OrderStoreAdminUserFactory_Access_Array_Access) return Boolean renames org.allbinary.business.user.modules.admin.store.order.OrderStoreAdminUserFactory_Package_References."=";
   function Java_Box (Value : OrderStoreAdminUserFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.modules.admin.store.order.OrderStoreAdminUserFactory_Package_References.Java_Box;
   function Java_Unbox_OrderStoreAdminUserFactory_Access_Array (Value : access Java_Object'Class) return OrderStoreAdminUserFactory_Access_Array_Access renames org.allbinary.business.user.modules.admin.store.order.OrderStoreAdminUserFactory_Package_References.Java_Unbox_OrderStoreAdminUserFactory_Access_Array;
   subtype OrderStoreAdminUserFactory_Access_Array_Access_Array is org.allbinary.business.user.modules.admin.store.order.OrderStoreAdminUserFactory_Package_References.OrderStoreAdminUserFactory_Access_Array_Access_Array;
   function "=" (Left, Right : OrderStoreAdminUserFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.modules.admin.store.order.OrderStoreAdminUserFactory_Package_References."=";
   subtype OrderStoreAdminUserFactory_Access_Array_Access_Array_Access is org.allbinary.business.user.modules.admin.store.order.OrderStoreAdminUserFactory_Package_References.OrderStoreAdminUserFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OrderStoreAdminUserFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.modules.admin.store.order.OrderStoreAdminUserFactory_Package_References."=";
   function Java_Box (Value : OrderStoreAdminUserFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.modules.admin.store.order.OrderStoreAdminUserFactory_Package_References.Java_Box;
   function Java_Unbox_OrderStoreAdminUserFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return OrderStoreAdminUserFactory_Access_Array_Access_Array_Access renames org.allbinary.business.user.modules.admin.store.order.OrderStoreAdminUserFactory_Package_References.Java_Unbox_OrderStoreAdminUserFactory_Access_Array_Access_Array;

   type OrderStoreAdminUserFactory is new Java_Object and UserFactoryInterface with null record;

   procedure Initialize (This : in out OrderStoreAdminUserFactory'Class);
   function Create return OrderStoreAdminUserFactory_Access;
   function getInstance (This : in out OrderStoreAdminUserFactory) return UserInterface_Access;
   function getInstance (This : in out OrderStoreAdminUserFactory; hashMap_Param : access HashMap_Package.HashMap'Class) return UserInterface_Access;
   procedure getInstance (This : in out OrderStoreAdminUserFactory; hashMap_Param : access HashMap_Package.HashMap'Class);

end org.allbinary.business.user.modules.admin.store.order.OrderStoreAdminUserFactory_Package;


