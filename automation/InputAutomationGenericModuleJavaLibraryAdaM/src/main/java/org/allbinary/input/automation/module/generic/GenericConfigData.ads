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

package org.allbinary.input.automation.module.generic_Id.GenericConfigData_Package is


   type GenericConfigData is tagged;
   type GenericConfigData_Access is access all GenericConfigData'Class;
   type GenericConfigData_Access_Array is array (Natural range <>) of GenericConfigData_Access;
   type GenericConfigData_Access_Array_Access is access all GenericConfigData_Access_Array;
   type GenericConfigData_Access_Array_Access_Array is array (Natural range <>) of GenericConfigData_Access_Array_Access;
   type GenericConfigData_Access_Array_Access_Array_Access is access all GenericConfigData_Access_Array_Access_Array;

   type GenericConfigData is new Java_Object with null record;
   RELATIVE_PATH : Unbounded_String;
   CONFIG_PATH : Unbounded_String;
   MODULE_RELATIVE_PATH : Unbounded_String;
   GAME_MODULE_RELATIVE_PATH : Unbounded_String;
   MMO_GAME_MODULE_RELATIVE_PATH : Unbounded_String;
   FREE_MMO_GAME_MODULE_RELATIVE_PATH : Unbounded_String;

   procedure Initialize (This : in out GenericConfigData'Class);
   function Create return GenericConfigData_Access;

end org.allbinary.input.automation.module.generic_Id.GenericConfigData_Package;


