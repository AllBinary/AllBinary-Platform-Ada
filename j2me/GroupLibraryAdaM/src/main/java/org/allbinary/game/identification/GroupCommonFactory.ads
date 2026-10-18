-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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

package org.allbinary.game.identification.GroupCommonFactory_Package is


   type GroupCommonFactory is tagged;
   type GroupCommonFactory_Access is access all GroupCommonFactory'Class;
   type GroupCommonFactory_Access_Array is array (Natural range <>) of GroupCommonFactory_Access;
   type GroupCommonFactory_Access_Array_Access is access all GroupCommonFactory_Access_Array;
   type GroupCommonFactory_Access_Array_Access_Array is array (Natural range <>) of GroupCommonFactory_Access_Array_Access;
   type GroupCommonFactory_Access_Array_Access_Array_Access is access all GroupCommonFactory_Access_Array_Access_Array;

   type GroupCommonFactory is new Java_Object with record
      ID : Integer;
      GROUP_NAME_LABEL : Unbounded_String;
      ID_LABEL : Unbounded_String;
      ADDING_LABEL : Unbounded_String;
      TO_LABEL : Unbounded_String;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out GroupCommonFactory'Class);
   function Create return GroupCommonFactory_Access;
   function getInstance return GroupCommonFactory_Access;

end org.allbinary.game.identification.GroupCommonFactory_Package;


