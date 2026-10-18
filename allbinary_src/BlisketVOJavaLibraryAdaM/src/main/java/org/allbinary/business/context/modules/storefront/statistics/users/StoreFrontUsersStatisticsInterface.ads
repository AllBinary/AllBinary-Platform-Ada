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
with org.allbinary.data.tables.TableMappingInterface_Package; use org.allbinary.data.tables.TableMappingInterface_Package;

package org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface_Package is

   package TableMappingInterface_Package renames Standard.org.allbinary.data.tables.TableMappingInterface_Package;

   type StoreFrontUsersStatisticsInterface is interface and TableMappingInterface;
   type StoreFrontUsersStatisticsInterface_Access is access all StoreFrontUsersStatisticsInterface'Class;
   type StoreFrontUsersStatisticsInterface_Access_Array is array (Natural range <>) of StoreFrontUsersStatisticsInterface_Access;
   type StoreFrontUsersStatisticsInterface_Access_Array_Access is access all StoreFrontUsersStatisticsInterface_Access_Array;
   type StoreFrontUsersStatisticsInterface_Access_Array_Access_Array is array (Natural range <>) of StoreFrontUsersStatisticsInterface_Access_Array_Access;
   type StoreFrontUsersStatisticsInterface_Access_Array_Access_Array_Access is access all StoreFrontUsersStatisticsInterface_Access_Array_Access_Array;
   function getNumberOfUsers (This : in out StoreFrontUsersStatisticsInterface) return Long_Long_Integer is abstract;
   function getNumberOfUsersByRole (This : in out StoreFrontUsersStatisticsInterface; role : Unbounded_String) return Long_Long_Integer is abstract;

end org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface_Package;


