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
with org.allbinary.game.input.analog.AnalogLocationInputFactory_Package; use org.allbinary.game.input.analog.AnalogLocationInputFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;

package org.allbinary.game.input.LocalPlayerInputIdFactory_Package is

   package AnalogLocationInputFactory_Package renames Standard.org.allbinary.game.input.analog.AnalogLocationInputFactory_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;

   type LocalPlayerInputIdFactory is tagged;
   type LocalPlayerInputIdFactory_Access is access all LocalPlayerInputIdFactory'Class;
   type LocalPlayerInputIdFactory_Access_Array is array (Natural range <>) of LocalPlayerInputIdFactory_Access;
   type LocalPlayerInputIdFactory_Access_Array_Access is access all LocalPlayerInputIdFactory_Access_Array;

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


