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

package org.allbinary.business.user.modules.admin.configuration.AdminConfigurationData_Package is


   type AdminConfigurationData is tagged;
   type AdminConfigurationData_Access is access all AdminConfigurationData'Class;
   type AdminConfigurationData_Access_Array is array (Natural range <>) of AdminConfigurationData_Access;
   type AdminConfigurationData_Access_Array_Access is access all AdminConfigurationData_Access_Array;
   type AdminConfigurationData_Access_Array_Access_Array is array (Natural range <>) of AdminConfigurationData_Access_Array_Access;
   type AdminConfigurationData_Access_Array_Access_Array_Access is access all AdminConfigurationData_Access_Array_Access_Array;

   type AdminConfigurationData is new Java_Object with null record;
   CONTEXTNAME : Unbounded_String;

   procedure Initialize (This : in out AdminConfigurationData'Class);
   function Create return AdminConfigurationData_Access;

end org.allbinary.business.user.modules.admin.configuration.AdminConfigurationData_Package;


