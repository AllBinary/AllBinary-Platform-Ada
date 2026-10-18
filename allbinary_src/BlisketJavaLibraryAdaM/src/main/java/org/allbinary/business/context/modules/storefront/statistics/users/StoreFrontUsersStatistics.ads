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
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with java.util.Set_Package; use java.util.Set_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.user.role.UserRole_Package; use org.allbinary.business.user.role.UserRole_Package;
with org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface_Package; use org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface_Package;

package org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatistics_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package UserRole_Package renames Standard.org.allbinary.business.user.role.UserRole_Package;

   type StoreFrontUsersStatistics is tagged;
   type StoreFrontUsersStatistics_Access is access all StoreFrontUsersStatistics'Class;
   type StoreFrontUsersStatistics_Access_Array is array (Natural range <>) of StoreFrontUsersStatistics_Access;
   type StoreFrontUsersStatistics_Access_Array_Access is access all StoreFrontUsersStatistics_Access_Array;
   type StoreFrontUsersStatistics_Access_Array_Access_Array is array (Natural range <>) of StoreFrontUsersStatistics_Access_Array_Access;
   type StoreFrontUsersStatistics_Access_Array_Access_Array_Access is access all StoreFrontUsersStatistics_Access_Array_Access_Array;

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


