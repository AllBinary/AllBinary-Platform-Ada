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

limited with org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsData_Package;
package org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsData_Package_References is
   type StoreFrontUsersStatisticsData_Access is access all org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsData_Package.StoreFrontUsersStatisticsData'Class;
   type StoreFrontUsersStatisticsData_Access_Array is array (Natural range <>) of StoreFrontUsersStatisticsData_Access;
   type StoreFrontUsersStatisticsData_Access_Array_Access is access all StoreFrontUsersStatisticsData_Access_Array;
   type StoreFrontUsersStatisticsData_Access_Array_Access_Array is array (Natural range <>) of StoreFrontUsersStatisticsData_Access_Array_Access;
   type StoreFrontUsersStatisticsData_Access_Array_Access_Array_Access is access all StoreFrontUsersStatisticsData_Access_Array_Access_Array;
end org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsData_Package_References;

with org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype StoreFrontUsersStatisticsData_Access is org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsData_Package_References.StoreFrontUsersStatisticsData_Access;
   function "=" (Left, Right : StoreFrontUsersStatisticsData_Access) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsData_Package_References."=";
   subtype StoreFrontUsersStatisticsData_Access_Array is org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsData_Package_References.StoreFrontUsersStatisticsData_Access_Array;
   function "=" (Left, Right : StoreFrontUsersStatisticsData_Access_Array) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsData_Package_References."=";
   subtype StoreFrontUsersStatisticsData_Access_Array_Access is org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsData_Package_References.StoreFrontUsersStatisticsData_Access_Array_Access;
   function "=" (Left, Right : StoreFrontUsersStatisticsData_Access_Array_Access) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsData_Package_References."=";
   subtype StoreFrontUsersStatisticsData_Access_Array_Access_Array is org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsData_Package_References.StoreFrontUsersStatisticsData_Access_Array_Access_Array;
   function "=" (Left, Right : StoreFrontUsersStatisticsData_Access_Array_Access_Array) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsData_Package_References."=";
   subtype StoreFrontUsersStatisticsData_Access_Array_Access_Array_Access is org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsData_Package_References.StoreFrontUsersStatisticsData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StoreFrontUsersStatisticsData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsData_Package_References."=";

   type StoreFrontUsersStatisticsData is new Java_Object with record
      NAME : Unbounded_String;
      NUMBEROFUSERS : Unbounded_String;
   end record;
   instance : StoreFrontUsersStatisticsData_Access;

   procedure Initialize (This : in out StoreFrontUsersStatisticsData'Class);
   function Create return StoreFrontUsersStatisticsData_Access;
   function getInstance return StoreFrontUsersStatisticsData_Access;

end org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsData_Package;


