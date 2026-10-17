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
with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package; use org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.game.input.PlatformFormInputMappingFactory_Package is

   package InputToGameKeyMapping_Package renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
   package NullUtil_Package renames org.allbinary.logic.NullUtil_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type PlatformFormInputMappingFactory is tagged;
   type PlatformFormInputMappingFactory_Access is access all PlatformFormInputMappingFactory'Class;
   type PlatformFormInputMappingFactory_Access_Array is array (Natural range <>) of PlatformFormInputMappingFactory_Access;
   type PlatformFormInputMappingFactory_Access_Array_Access is access all PlatformFormInputMappingFactory_Access_Array;

   type PlatformFormInputMappingFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      inputToGameKeyMapping : InputToGameKeyMapping_Access;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out PlatformFormInputMappingFactory'Class);
   function Create return PlatformFormInputMappingFactory_Access;
   function getInstance return PlatformFormInputMappingFactory_Access;
   procedure getInstance;
   function getOrCreate (This : in out PlatformFormInputMappingFactory) return InputToGameKeyMapping_Access;
   procedure getOrCreate (This : in out PlatformFormInputMappingFactory);

end org.allbinary.game.input.PlatformFormInputMappingFactory_Package;


