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

with AllBinary_Java;
limited with org.allbinary.game.input.PlatformInputMappingFactory_Package;
package org.allbinary.game.input.PlatformInputMappingFactory_Package_References is
   type PlatformInputMappingFactory_Access is access all org.allbinary.game.input.PlatformInputMappingFactory_Package.PlatformInputMappingFactory'Class;
   type PlatformInputMappingFactory_Access_Array is array (Natural range <>) of PlatformInputMappingFactory_Access;
   type PlatformInputMappingFactory_Access_Array_Access is access all PlatformInputMappingFactory_Access_Array;
   type PlatformInputMappingFactory_Access_Array_Access_Array is array (Natural range <>) of PlatformInputMappingFactory_Access_Array_Access;
   type PlatformInputMappingFactory_Access_Array_Access_Array_Access is access all PlatformInputMappingFactory_Access_Array_Access_Array;
   type PlatformInputMappingFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PlatformInputMappingFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : PlatformInputMappingFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PlatformInputMappingFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PlatformInputMappingFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PlatformInputMappingFactory_Access_Array_Access is (if Value /= null and then Value.all in PlatformInputMappingFactory_Access_Array_Object'Class then PlatformInputMappingFactory_Access_Array_Object'Class (Value.all).Value else null);
   type PlatformInputMappingFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PlatformInputMappingFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PlatformInputMappingFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PlatformInputMappingFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PlatformInputMappingFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PlatformInputMappingFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PlatformInputMappingFactory_Access_Array_Access_Array_Object'Class then PlatformInputMappingFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.PlatformInputMappingFactory_Package_References;

with org.allbinary.game.input.PlatformInputMappingFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.input.mapping.PersistentInputMapping_Package;
with org.allbinary.game.input.mapping.PersistentInputMapping_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;

package org.allbinary.game.input.PlatformInputMappingFactory_Package is

   package PersistentInputMapping_Package renames Standard.org.allbinary.game.input.mapping.PersistentInputMapping_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype PersistentInputMapping_Access is org.allbinary.game.input.mapping.PersistentInputMapping_Package_References.PersistentInputMapping_Access;
   use type PersistentInputMapping_Access;
   subtype PersistentInputMapping_Access_Array is org.allbinary.game.input.mapping.PersistentInputMapping_Package_References.PersistentInputMapping_Access_Array;
   use type PersistentInputMapping_Access_Array;
   subtype PersistentInputMapping_Access_Array_Access is org.allbinary.game.input.mapping.PersistentInputMapping_Package_References.PersistentInputMapping_Access_Array_Access;
   use type PersistentInputMapping_Access_Array_Access;
   subtype PersistentInputMapping_Access_Array_Access_Array is org.allbinary.game.input.mapping.PersistentInputMapping_Package_References.PersistentInputMapping_Access_Array_Access_Array;
   use type PersistentInputMapping_Access_Array_Access_Array;
   subtype PersistentInputMapping_Access_Array_Access_Array_Access is org.allbinary.game.input.mapping.PersistentInputMapping_Package_References.PersistentInputMapping_Access_Array_Access_Array_Access;
   use type PersistentInputMapping_Access_Array_Access_Array_Access;
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


   subtype PlatformInputMappingFactory_Access is org.allbinary.game.input.PlatformInputMappingFactory_Package_References.PlatformInputMappingFactory_Access;
   function "=" (Left, Right : PlatformInputMappingFactory_Access) return Boolean renames org.allbinary.game.input.PlatformInputMappingFactory_Package_References."=";
   subtype PlatformInputMappingFactory_Access_Array is org.allbinary.game.input.PlatformInputMappingFactory_Package_References.PlatformInputMappingFactory_Access_Array;
   function "=" (Left, Right : PlatformInputMappingFactory_Access_Array) return Boolean renames org.allbinary.game.input.PlatformInputMappingFactory_Package_References."=";
   subtype PlatformInputMappingFactory_Access_Array_Access is org.allbinary.game.input.PlatformInputMappingFactory_Package_References.PlatformInputMappingFactory_Access_Array_Access;
   function "=" (Left, Right : PlatformInputMappingFactory_Access_Array_Access) return Boolean renames org.allbinary.game.input.PlatformInputMappingFactory_Package_References."=";
   function Java_Box (Value : PlatformInputMappingFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.PlatformInputMappingFactory_Package_References.Java_Box;
   function Java_Unbox_PlatformInputMappingFactory_Access_Array (Value : access Java_Object'Class) return PlatformInputMappingFactory_Access_Array_Access renames org.allbinary.game.input.PlatformInputMappingFactory_Package_References.Java_Unbox_PlatformInputMappingFactory_Access_Array;
   subtype PlatformInputMappingFactory_Access_Array_Access_Array is org.allbinary.game.input.PlatformInputMappingFactory_Package_References.PlatformInputMappingFactory_Access_Array_Access_Array;
   function "=" (Left, Right : PlatformInputMappingFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.PlatformInputMappingFactory_Package_References."=";
   subtype PlatformInputMappingFactory_Access_Array_Access_Array_Access is org.allbinary.game.input.PlatformInputMappingFactory_Package_References.PlatformInputMappingFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PlatformInputMappingFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.PlatformInputMappingFactory_Package_References."=";
   function Java_Box (Value : PlatformInputMappingFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.PlatformInputMappingFactory_Package_References.Java_Box;
   function Java_Unbox_PlatformInputMappingFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return PlatformInputMappingFactory_Access_Array_Access_Array_Access renames org.allbinary.game.input.PlatformInputMappingFactory_Package_References.Java_Unbox_PlatformInputMappingFactory_Access_Array_Access_Array;

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


