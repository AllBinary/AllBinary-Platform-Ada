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
limited with org.allbinary.game.input.LocalPlayerInputIdFactory_Package;
package org.allbinary.game.input.LocalPlayerInputIdFactory_Package_References is
   type LocalPlayerInputIdFactory_Access is access all org.allbinary.game.input.LocalPlayerInputIdFactory_Package.LocalPlayerInputIdFactory'Class;
   type LocalPlayerInputIdFactory_Access_Array is array (Natural range <>) of LocalPlayerInputIdFactory_Access;
   type LocalPlayerInputIdFactory_Access_Array_Access is access all LocalPlayerInputIdFactory_Access_Array;
   type LocalPlayerInputIdFactory_Access_Array_Access_Array is array (Natural range <>) of LocalPlayerInputIdFactory_Access_Array_Access;
   type LocalPlayerInputIdFactory_Access_Array_Access_Array_Access is access all LocalPlayerInputIdFactory_Access_Array_Access_Array;
   type LocalPlayerInputIdFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LocalPlayerInputIdFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : LocalPlayerInputIdFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LocalPlayerInputIdFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LocalPlayerInputIdFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LocalPlayerInputIdFactory_Access_Array_Access is (if Value /= null and then Value.all in LocalPlayerInputIdFactory_Access_Array_Object'Class then LocalPlayerInputIdFactory_Access_Array_Object'Class (Value.all).Value else null);
   type LocalPlayerInputIdFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LocalPlayerInputIdFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : LocalPlayerInputIdFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LocalPlayerInputIdFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LocalPlayerInputIdFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LocalPlayerInputIdFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in LocalPlayerInputIdFactory_Access_Array_Access_Array_Object'Class then LocalPlayerInputIdFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.LocalPlayerInputIdFactory_Package_References;

with org.allbinary.game.input.LocalPlayerInputIdFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;

package org.allbinary.game.input.LocalPlayerInputIdFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
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


   subtype LocalPlayerInputIdFactory_Access is org.allbinary.game.input.LocalPlayerInputIdFactory_Package_References.LocalPlayerInputIdFactory_Access;
   function "=" (Left, Right : LocalPlayerInputIdFactory_Access) return Boolean renames org.allbinary.game.input.LocalPlayerInputIdFactory_Package_References."=";
   subtype LocalPlayerInputIdFactory_Access_Array is org.allbinary.game.input.LocalPlayerInputIdFactory_Package_References.LocalPlayerInputIdFactory_Access_Array;
   function "=" (Left, Right : LocalPlayerInputIdFactory_Access_Array) return Boolean renames org.allbinary.game.input.LocalPlayerInputIdFactory_Package_References."=";
   subtype LocalPlayerInputIdFactory_Access_Array_Access is org.allbinary.game.input.LocalPlayerInputIdFactory_Package_References.LocalPlayerInputIdFactory_Access_Array_Access;
   function "=" (Left, Right : LocalPlayerInputIdFactory_Access_Array_Access) return Boolean renames org.allbinary.game.input.LocalPlayerInputIdFactory_Package_References."=";
   function Java_Box (Value : LocalPlayerInputIdFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.LocalPlayerInputIdFactory_Package_References.Java_Box;
   function Java_Unbox_LocalPlayerInputIdFactory_Access_Array (Value : access Java_Object'Class) return LocalPlayerInputIdFactory_Access_Array_Access renames org.allbinary.game.input.LocalPlayerInputIdFactory_Package_References.Java_Unbox_LocalPlayerInputIdFactory_Access_Array;
   subtype LocalPlayerInputIdFactory_Access_Array_Access_Array is org.allbinary.game.input.LocalPlayerInputIdFactory_Package_References.LocalPlayerInputIdFactory_Access_Array_Access_Array;
   function "=" (Left, Right : LocalPlayerInputIdFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.LocalPlayerInputIdFactory_Package_References."=";
   subtype LocalPlayerInputIdFactory_Access_Array_Access_Array_Access is org.allbinary.game.input.LocalPlayerInputIdFactory_Package_References.LocalPlayerInputIdFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LocalPlayerInputIdFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.LocalPlayerInputIdFactory_Package_References."=";
   function Java_Box (Value : LocalPlayerInputIdFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.LocalPlayerInputIdFactory_Package_References.Java_Box;
   function Java_Unbox_LocalPlayerInputIdFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return LocalPlayerInputIdFactory_Access_Array_Access_Array_Access renames org.allbinary.game.input.LocalPlayerInputIdFactory_Package_References.Java_Unbox_LocalPlayerInputIdFactory_Access_Array_Access_Array;

   type LocalPlayerInputIdFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      MAX_NUMBER_OF_PLAYERS : Integer;
      MAX_FAST_DEVICEID : Integer;
      deviceIdToplayerId : Integer_Array_Access;
      playerIdToDeviceId : Integer_Array_Access;
      playersInPlay : Boolean_Array_Access;
      totalDevicesMapped : Integer;
   end record;
   instance : LocalPlayerInputIdFactory_Access;

   procedure Initialize (This : in out LocalPlayerInputIdFactory'Class);
   function Create return LocalPlayerInputIdFactory_Access;
   function getInstance return LocalPlayerInputIdFactory_Access;
   function getDeviceId (This : in out LocalPlayerInputIdFactory; playerInputId : Integer) return Integer;
   procedure getDeviceId (This : in out LocalPlayerInputIdFactory; playerInputId : Integer);
   function getPlayerForDevice (This : in out LocalPlayerInputIdFactory; deviceId : Integer) return Integer;
   procedure getPlayerForDevice (This : in out LocalPlayerInputIdFactory; deviceId : Integer);
   function getTotalDevicesInPlay (This : in out LocalPlayerInputIdFactory) return Integer;
   function isPlayerInPlay (This : in out LocalPlayerInputIdFactory; playerInputId : Integer) return Boolean;
   procedure isPlayerInPlay (This : in out LocalPlayerInputIdFactory; playerInputId : Integer);
   procedure setPlayerInPlay (This : in out LocalPlayerInputIdFactory; playerInputId : Integer);
   procedure setPlayerOutOfPlay (This : in out LocalPlayerInputIdFactory; playerInputId : Integer);
   function getPlayersInPlay (This : in out LocalPlayerInputIdFactory) return Boolean_Array_Access;

end org.allbinary.game.input.LocalPlayerInputIdFactory_Package;


