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

package org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsData_Package is


   type StoreFrontUsersStatisticsData is tagged;
   type StoreFrontUsersStatisticsData_Access is access all StoreFrontUsersStatisticsData'Class;
   type StoreFrontUsersStatisticsData_Access_Array is array (Natural range <>) of StoreFrontUsersStatisticsData_Access;
   type StoreFrontUsersStatisticsData_Access_Array_Access is access all StoreFrontUsersStatisticsData_Access_Array;

   type StoreFrontUsersStatisticsData is new Java_Object with record
      NAME : Unbounded_String;
      NUMBEROFUSERS : Unbounded_String;
   end record;
   instance : StoreFrontUsersStatisticsData_Access;

   procedure Initialize (This : in out StoreFrontUsersStatisticsData'Class);
   function Create return StoreFrontUsersStatisticsData_Access;
   function getInstance return StoreFrontUsersStatisticsData_Access;
   procedure getInstance;

end org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsData_Package;


