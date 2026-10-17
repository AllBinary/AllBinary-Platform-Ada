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

package org.allbinary.input.motion.button.TouchScreenTypesFactory_Package is


   type TouchScreenTypesFactory is tagged;
   type TouchScreenTypesFactory_Access is access all TouchScreenTypesFactory'Class;
   type TouchScreenTypesFactory_Access_Array is array (Natural range <>) of TouchScreenTypesFactory_Access;
   type TouchScreenTypesFactory_Access_Array_Access is access all TouchScreenTypesFactory_Access_Array;

   type TouchScreenTypesFactory is new Java_Object with record
      FINGER : TouchScreenType_Access;
      NOTOUCH : TouchScreenType_Access;
      STYLUS : TouchScreenType_Access;
      UNDEFINED : TouchScreenType_Access;
   end record;
   instance : TouchScreenTypesFactory_Access;

   procedure Initialize (This : in out TouchScreenTypesFactory'Class);
   function Create return TouchScreenTypesFactory_Access;
   function getInstance return TouchScreenTypesFactory_Access;
   procedure getInstance;

end org.allbinary.input.motion.button.TouchScreenTypesFactory_Package;


