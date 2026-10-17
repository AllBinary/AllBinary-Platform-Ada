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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with java.util.Set_Package; use java.util.Set_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.user.UserInterface_Package; use org.allbinary.business.user.UserInterface_Package;
with org.allbinary.business.user.role.UserRole_Package; use org.allbinary.business.user.role.UserRole_Package;
with org.allbinary.data.tables.user.UserEntityFactory_Package; use org.allbinary.data.tables.user.UserEntityFactory_Package;
with org.allbinary.data.tables.user.UserEntityInterface_Package; use org.allbinary.data.tables.user.UserEntityInterface_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface_Package; use org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface_Package;

package org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatistics_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package StoreFrontInterface_Package renames org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package UserInterface_Package renames org.allbinary.business.user.UserInterface_Package;
   package UserRole_Package renames org.allbinary.business.user.role.UserRole_Package;
   package UserEntityFactory_Package renames org.allbinary.data.tables.user.UserEntityFactory_Package;
   package UserEntityInterface_Package renames org.allbinary.data.tables.user.UserEntityInterface_Package;
   package StdUtil_Package renames org.allbinary.logic.StdUtil_Package;

   type StoreFrontUsersStatistics is tagged;
   type StoreFrontUsersStatistics_Access is access all StoreFrontUsersStatistics'Class;
   type StoreFrontUsersStatistics_Access_Array is array (Natural range <>) of StoreFrontUsersStatistics_Access;
   type StoreFrontUsersStatistics_Access_Array_Access is access all StoreFrontUsersStatistics_Access_Array;

   type StoreFrontUsersStatistics is new StoreFrontUsersStatisticsInterface with record
      totalNumberOfUsers : Long_Long_Integer;
      totalUsersByRoleHashMap : HashMap_Access;
   end record;

   procedure Initialize (This : in out StoreFrontUsersStatistics'Class; storeFrontInterface : StoreFrontInterface_Access);
   function Create (storeFrontInterface : StoreFrontInterface_Access) return StoreFrontUsersStatistics_Access;
   function getNewTotal (This : in out StoreFrontUsersStatistics; userRole : UserRole_Access) return Long_Long_Integer;
   procedure getNewTotal (This : in out StoreFrontUsersStatistics; userRole : UserRole_Access);
   function getNumberOfUsers (This : in out StoreFrontUsersStatistics) return Long_Long_Integer;
   procedure getNumberOfUsers (This : in out StoreFrontUsersStatistics);
   function getNumberOfUsersByRole (This : in out StoreFrontUsersStatistics; role : Unbounded_String) return Long_Long_Integer;
   procedure getNumberOfUsersByRole (This : in out StoreFrontUsersStatistics; role : Unbounded_String);
   function toHashMap (This : in out StoreFrontUsersStatistics) return HashMap_Access;
   procedure toHashMap (This : in out StoreFrontUsersStatistics);
   function toVector (This : in out StoreFrontUsersStatistics) return BasicArrayList_Access;
   procedure toVector (This : in out StoreFrontUsersStatistics);
   function getKey (This : in out StoreFrontUsersStatistics) return Java_Object_Access;
   procedure getKey (This : in out StoreFrontUsersStatistics);

end org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatistics_Package;


