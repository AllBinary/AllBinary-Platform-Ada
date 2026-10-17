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
with org.allbinary.game.input.mapping.PersistentInputMapping_Package; use org.allbinary.game.input.mapping.PersistentInputMapping_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.input.NormalJ2MEGameInputMapping_Package; use org.allbinary.game.input.NormalJ2MEGameInputMapping_Package;

package org.allbinary.game.input.PlatformInputMappingFactory_Package is

   package PersistentInputMapping_Package renames Standard.org.allbinary.game.input.mapping.PersistentInputMapping_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type PlatformInputMappingFactory is tagged;
   type PlatformInputMappingFactory_Access is access all PlatformInputMappingFactory'Class;
   type PlatformInputMappingFactory_Access_Array is array (Natural range <>) of PlatformInputMappingFactory_Access;
   type PlatformInputMappingFactory_Access_Array_Access is access all PlatformInputMappingFactory_Access_Array;

   type PlatformInputMappingFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      inputToGameKeyMapping : PersistentInputMapping_Access;
   end record;
   instance : PlatformInputMappingFactory_Access;

   procedure Initialize (This : in out PlatformInputMappingFactory'Class);
   function Create return PlatformInputMappingFactory_Access;
   function getInstance return PlatformInputMappingFactory_Access;
   function getPersistentInputMappingInstance (This : in out PlatformInputMappingFactory) return PersistentInputMapping_Access;

end org.allbinary.game.input.PlatformInputMappingFactory_Package;


