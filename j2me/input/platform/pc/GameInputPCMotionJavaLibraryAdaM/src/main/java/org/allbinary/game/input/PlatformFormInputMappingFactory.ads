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

limited with org.allbinary.game.input.PlatformFormInputMappingFactory_Package;
package org.allbinary.game.input.PlatformFormInputMappingFactory_Package_References is
   type PlatformFormInputMappingFactory_Access is access all org.allbinary.game.input.PlatformFormInputMappingFactory_Package.PlatformFormInputMappingFactory'Class;
   type PlatformFormInputMappingFactory_Access_Array is array (Natural range <>) of PlatformFormInputMappingFactory_Access;
   type PlatformFormInputMappingFactory_Access_Array_Access is access all PlatformFormInputMappingFactory_Access_Array;
   type PlatformFormInputMappingFactory_Access_Array_Access_Array is array (Natural range <>) of PlatformFormInputMappingFactory_Access_Array_Access;
   type PlatformFormInputMappingFactory_Access_Array_Access_Array_Access is access all PlatformFormInputMappingFactory_Access_Array_Access_Array;
end org.allbinary.game.input.PlatformFormInputMappingFactory_Package_References;

with org.allbinary.game.input.PlatformFormInputMappingFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;

package org.allbinary.game.input.PlatformFormInputMappingFactory_Package is

   package InputToGameKeyMapping_Package renames Standard.org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype InputToGameKeyMapping_Access is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access;
   use type InputToGameKeyMapping_Access;
   subtype InputToGameKeyMapping_Access_Array is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array;
   use type InputToGameKeyMapping_Access_Array;
   subtype InputToGameKeyMapping_Access_Array_Access is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array_Access;
   use type InputToGameKeyMapping_Access_Array_Access;
   subtype InputToGameKeyMapping_Access_Array_Access_Array is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array_Access_Array;
   use type InputToGameKeyMapping_Access_Array_Access_Array;
   subtype InputToGameKeyMapping_Access_Array_Access_Array_Access is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array_Access_Array_Access;
   use type InputToGameKeyMapping_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PlatformFormInputMappingFactory_Access is org.allbinary.game.input.PlatformFormInputMappingFactory_Package_References.PlatformFormInputMappingFactory_Access;
   function "=" (Left, Right : PlatformFormInputMappingFactory_Access) return Boolean renames org.allbinary.game.input.PlatformFormInputMappingFactory_Package_References."=";
   subtype PlatformFormInputMappingFactory_Access_Array is org.allbinary.game.input.PlatformFormInputMappingFactory_Package_References.PlatformFormInputMappingFactory_Access_Array;
   function "=" (Left, Right : PlatformFormInputMappingFactory_Access_Array) return Boolean renames org.allbinary.game.input.PlatformFormInputMappingFactory_Package_References."=";
   subtype PlatformFormInputMappingFactory_Access_Array_Access is org.allbinary.game.input.PlatformFormInputMappingFactory_Package_References.PlatformFormInputMappingFactory_Access_Array_Access;
   function "=" (Left, Right : PlatformFormInputMappingFactory_Access_Array_Access) return Boolean renames org.allbinary.game.input.PlatformFormInputMappingFactory_Package_References."=";
   subtype PlatformFormInputMappingFactory_Access_Array_Access_Array is org.allbinary.game.input.PlatformFormInputMappingFactory_Package_References.PlatformFormInputMappingFactory_Access_Array_Access_Array;
   function "=" (Left, Right : PlatformFormInputMappingFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.PlatformFormInputMappingFactory_Package_References."=";
   subtype PlatformFormInputMappingFactory_Access_Array_Access_Array_Access is org.allbinary.game.input.PlatformFormInputMappingFactory_Package_References.PlatformFormInputMappingFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PlatformFormInputMappingFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.PlatformFormInputMappingFactory_Package_References."=";

   type PlatformFormInputMappingFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      inputToGameKeyMapping : InputToGameKeyMapping_Access;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out PlatformFormInputMappingFactory'Class);
   function Create return PlatformFormInputMappingFactory_Access;
   function getInstance return PlatformFormInputMappingFactory_Access;
   function getOrCreate (This : in out PlatformFormInputMappingFactory) return InputToGameKeyMapping_Access;

end org.allbinary.game.input.PlatformFormInputMappingFactory_Package;


