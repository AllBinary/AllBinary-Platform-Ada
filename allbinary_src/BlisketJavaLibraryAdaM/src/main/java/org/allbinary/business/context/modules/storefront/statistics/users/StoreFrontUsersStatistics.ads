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
limited with org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatistics_Package;
package org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatistics_Package_References is
   type StoreFrontUsersStatistics_Access is access all org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatistics_Package.StoreFrontUsersStatistics'Class;
   type StoreFrontUsersStatistics_Access_Array is array (Natural range <>) of StoreFrontUsersStatistics_Access;
   type StoreFrontUsersStatistics_Access_Array_Access is access all StoreFrontUsersStatistics_Access_Array;
   type StoreFrontUsersStatistics_Access_Array_Access_Array is array (Natural range <>) of StoreFrontUsersStatistics_Access_Array_Access;
   type StoreFrontUsersStatistics_Access_Array_Access_Array_Access is access all StoreFrontUsersStatistics_Access_Array_Access_Array;
   type StoreFrontUsersStatistics_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StoreFrontUsersStatistics_Access_Array_Access;
   end record;
   function Java_Box (Value : StoreFrontUsersStatistics_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StoreFrontUsersStatistics_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StoreFrontUsersStatistics_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StoreFrontUsersStatistics_Access_Array_Access is (if Value /= null and then Value.all in StoreFrontUsersStatistics_Access_Array_Object'Class then StoreFrontUsersStatistics_Access_Array_Object'Class (Value.all).Value else null);
   type StoreFrontUsersStatistics_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StoreFrontUsersStatistics_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : StoreFrontUsersStatistics_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StoreFrontUsersStatistics_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StoreFrontUsersStatistics_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StoreFrontUsersStatistics_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in StoreFrontUsersStatistics_Access_Array_Access_Array_Object'Class then StoreFrontUsersStatistics_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatistics_Package_References;

with org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatistics_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References;
limited with org.allbinary.business.user.role.UserRole_Package;
with org.allbinary.business.user.role.UserRole_Package_References;
with org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface_Package; use org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface_Package;

package org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatistics_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package UserRole_Package renames Standard.org.allbinary.business.user.role.UserRole_Package;
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
   subtype StoreFrontInterface_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access;
   use type StoreFrontInterface_Access;
   subtype StoreFrontInterface_Access_Array is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array;
   use type StoreFrontInterface_Access_Array;
   subtype StoreFrontInterface_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access;
   use type StoreFrontInterface_Access_Array_Access;
   subtype StoreFrontInterface_Access_Array_Access_Array is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access_Array;
   use type StoreFrontInterface_Access_Array_Access_Array;
   subtype StoreFrontInterface_Access_Array_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access_Array_Access;
   use type StoreFrontInterface_Access_Array_Access_Array_Access;
   subtype UserRole_Access is org.allbinary.business.user.role.UserRole_Package_References.UserRole_Access;
   use type UserRole_Access;
   subtype UserRole_Access_Array is org.allbinary.business.user.role.UserRole_Package_References.UserRole_Access_Array;
   use type UserRole_Access_Array;
   subtype UserRole_Access_Array_Access is org.allbinary.business.user.role.UserRole_Package_References.UserRole_Access_Array_Access;
   use type UserRole_Access_Array_Access;
   subtype UserRole_Access_Array_Access_Array is org.allbinary.business.user.role.UserRole_Package_References.UserRole_Access_Array_Access_Array;
   use type UserRole_Access_Array_Access_Array;
   subtype UserRole_Access_Array_Access_Array_Access is org.allbinary.business.user.role.UserRole_Package_References.UserRole_Access_Array_Access_Array_Access;
   use type UserRole_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype StoreFrontUsersStatistics_Access is org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatistics_Package_References.StoreFrontUsersStatistics_Access;
   function "=" (Left, Right : StoreFrontUsersStatistics_Access) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatistics_Package_References."=";
   subtype StoreFrontUsersStatistics_Access_Array is org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatistics_Package_References.StoreFrontUsersStatistics_Access_Array;
   function "=" (Left, Right : StoreFrontUsersStatistics_Access_Array) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatistics_Package_References."=";
   subtype StoreFrontUsersStatistics_Access_Array_Access is org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatistics_Package_References.StoreFrontUsersStatistics_Access_Array_Access;
   function "=" (Left, Right : StoreFrontUsersStatistics_Access_Array_Access) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatistics_Package_References."=";
   function Java_Box (Value : StoreFrontUsersStatistics_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatistics_Package_References.Java_Box;
   function Java_Unbox_StoreFrontUsersStatistics_Access_Array (Value : access Java_Object'Class) return StoreFrontUsersStatistics_Access_Array_Access renames org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatistics_Package_References.Java_Unbox_StoreFrontUsersStatistics_Access_Array;
   subtype StoreFrontUsersStatistics_Access_Array_Access_Array is org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatistics_Package_References.StoreFrontUsersStatistics_Access_Array_Access_Array;
   function "=" (Left, Right : StoreFrontUsersStatistics_Access_Array_Access_Array) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatistics_Package_References."=";
   subtype StoreFrontUsersStatistics_Access_Array_Access_Array_Access is org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatistics_Package_References.StoreFrontUsersStatistics_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StoreFrontUsersStatistics_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatistics_Package_References."=";
   function Java_Box (Value : StoreFrontUsersStatistics_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatistics_Package_References.Java_Box;
   function Java_Unbox_StoreFrontUsersStatistics_Access_Array_Access_Array (Value : access Java_Object'Class) return StoreFrontUsersStatistics_Access_Array_Access_Array_Access renames org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatistics_Package_References.Java_Unbox_StoreFrontUsersStatistics_Access_Array_Access_Array;

   type StoreFrontUsersStatistics is new Java_Object and StoreFrontUsersStatisticsInterface with record
      totalNumberOfUsers : Long_Long_Integer;
      totalUsersByRoleHashMap : HashMap_Access;
   end record;

   procedure Initialize (This : in out StoreFrontUsersStatistics'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class);
   function Create (storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) return StoreFrontUsersStatistics_Access;
   function getNewTotal (This : in out StoreFrontUsersStatistics; userRole_Param : access UserRole_Package.UserRole'Class) return Long_Long_Integer;
   procedure getNewTotal (This : in out StoreFrontUsersStatistics; userRole_Param : access UserRole_Package.UserRole'Class);
   function getNumberOfUsers (This : in out StoreFrontUsersStatistics) return Long_Long_Integer;
   function getNumberOfUsersByRole (This : in out StoreFrontUsersStatistics; role : Unbounded_String) return Long_Long_Integer;
   procedure getNumberOfUsersByRole (This : in out StoreFrontUsersStatistics; role : Unbounded_String);
   function toHashMap (This : in out StoreFrontUsersStatistics) return HashMap_Access;
   function toVector (This : in out StoreFrontUsersStatistics) return BasicArrayList_Access;
   function getKey (This : in out StoreFrontUsersStatistics) return Java_Object_Access;

end org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatistics_Package;


