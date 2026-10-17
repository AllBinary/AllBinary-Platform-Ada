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

package org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionData_Package is


   type GenericProfileActionData is tagged;
   type GenericProfileActionData_Access is access all GenericProfileActionData'Class;
   type GenericProfileActionData_Access_Array is array (Natural range <>) of GenericProfileActionData_Access;
   type GenericProfileActionData_Access_Array_Access is access all GenericProfileActionData_Access_Array;

   type GenericProfileActionData is new Java_Object with null record;
   NAME : Unbounded_String;
   SCRIPT : Unbounded_String;

   procedure Initialize (This : in out GenericProfileActionData'Class);
   function Create return GenericProfileActionData_Access;

end org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionData_Package;


