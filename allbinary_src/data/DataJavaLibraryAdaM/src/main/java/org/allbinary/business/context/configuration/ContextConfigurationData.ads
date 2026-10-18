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

package org.allbinary.business.context.configuration.ContextConfigurationData_Package is


   type ContextConfigurationData is tagged;
   type ContextConfigurationData_Access is access all ContextConfigurationData'Class;
   type ContextConfigurationData_Access_Array is array (Natural range <>) of ContextConfigurationData_Access;
   type ContextConfigurationData_Access_Array_Access is access all ContextConfigurationData_Access_Array;
   type ContextConfigurationData_Access_Array_Access_Array is array (Natural range <>) of ContextConfigurationData_Access_Array_Access;
   type ContextConfigurationData_Access_Array_Access_Array_Access is access all ContextConfigurationData_Access_Array_Access_Array;

   type ContextConfigurationData is new Java_Object with record
      NAME : Unbounded_String;
      UNCRYPTED_EXTENSION : Unbounded_String;
      ENCRYPTED_EXTENSION : Unbounded_String;
   end record;
   instance : ContextConfigurationData_Access;

   procedure Initialize (This : in out ContextConfigurationData'Class);
   function Create return ContextConfigurationData_Access;
   function getInstance return ContextConfigurationData_Access;

end org.allbinary.business.context.configuration.ContextConfigurationData_Package;


