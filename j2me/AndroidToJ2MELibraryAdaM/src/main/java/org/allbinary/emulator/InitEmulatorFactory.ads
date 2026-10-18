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

package org.allbinary.emulator.InitEmulatorFactory_Package is


   type InitEmulatorFactory is tagged;
   type InitEmulatorFactory_Access is access all InitEmulatorFactory'Class;
   type InitEmulatorFactory_Access_Array is array (Natural range <>) of InitEmulatorFactory_Access;
   type InitEmulatorFactory_Access_Array_Access is access all InitEmulatorFactory_Access_Array;
   type InitEmulatorFactory_Access_Array_Access_Array is array (Natural range <>) of InitEmulatorFactory_Access_Array_Access;
   type InitEmulatorFactory_Access_Array_Access_Array_Access is access all InitEmulatorFactory_Access_Array_Access_Array;

   type InitEmulatorFactory is new Java_Object with record
      initEmulator : Boolean;
   end record;
   instance : InitEmulatorFactory_Access;

   procedure Initialize (This : in out InitEmulatorFactory'Class);
   function Create return InitEmulatorFactory_Access;
   function getInstance return InitEmulatorFactory_Access;
   procedure setInitEmulator (This : in out InitEmulatorFactory; initEmulator : Boolean);
   function isInitEmulator (This : in out InitEmulatorFactory) return Boolean;

end org.allbinary.emulator.InitEmulatorFactory_Package;


