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


with org.allbinary.game.input.analog.AnalogLocationInputFactory_Package; use org.allbinary.game.input.analog.AnalogLocationInputFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;

package body org.allbinary.game.input.LocalPlayerInputIdFactory_Package is

   package AnalogLocationInputFactory_Package renames Standard.org.allbinary.game.input.analog.AnalogLocationInputFactory_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   procedure Initialize_Fields (This : in out LocalPlayerInputIdFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.MAX_NUMBER_OF_PLAYERS := 6;
      This.MAX_FAST_DEVICEID := 65;
      This.deviceIdToplayerId := new Integer_Array'(0 .. (This.MAX_FAST_DEVICEID) - 1 => 0);
      This.playerIdToDeviceId := new Integer_Array'(0 .. (This.MAX_NUMBER_OF_PLAYERS) - 1 => 0);
      This.playersInPlay := new Boolean_Array'(0 .. (This.MAX_NUMBER_OF_PLAYERS) - 1 => False);
      This.totalDevicesMapped := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out LocalPlayerInputIdFactory'Class) is
      index : Integer;
   begin
      Initialize_Fields (This);
        for index in reverse 0 .. (This.deviceIdToplayerId'Length) - (1) loop
            This.deviceIdToplayerId (index) := -(1);
        end loop;
   end Initialize;

   function Create return LocalPlayerInputIdFactory_Access is
      This : constant LocalPlayerInputIdFactory_Access := new LocalPlayerInputIdFactory;
   begin
      LocalPlayerInputIdFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return LocalPlayerInputIdFactory_Access is
   begin
        return LocalPlayerInputIdFactory_Package.instance;
   end getInstance;

   function getDeviceId (This : in out LocalPlayerInputIdFactory; playerInputId : Integer) return Integer is
   begin
        return This.playerIdToDeviceId (playerInputId);
   end getDeviceId;

   function getPlayerForDevice (This : in out LocalPlayerInputIdFactory; deviceId : Integer) return Integer is
      index : Integer;
      playerInputId : Integer;
   begin
        index := 0;
        if (deviceId) < (This.MAX_FAST_DEVICEID) then
            playerInputId := This.deviceIdToplayerId (deviceId);
            if (playerInputId) /= (-(1)) then
                return playerInputId;
            end if;
        else
            for index in reverse 0 .. (This.totalDevicesMapped) - (1) loop
                if (This.playerIdToDeviceId (index)) = (deviceId) then
                    return index;
                end if;
            end loop;
        end if;
        index := This.totalDevicesMapped;
        if (deviceId) < (This.MAX_FAST_DEVICEID) then
            This.deviceIdToplayerId (deviceId) := index;
        else
            This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Added DeviceId: ")).appendint (deviceId).append (To_Unbounded_String (" beyond fast Id list")).toString, LocalPlayerInputIdFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("getPlayerForDevice"));
        end if;
        This.playerIdToDeviceId (index) := deviceId;
        AnalogLocationInputFactory_Package.getInstance.addPlayer (This.totalDevicesMapped);
        This.totalDevicesMapped := This.totalDevicesMapped + 1;
        This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Added DeviceId: ")).appendint (deviceId).append (To_Unbounded_String (" at: ")).appendint (index).append (To_Unbounded_String (" Total: ")).appendint (This.totalDevicesMapped).toString, LocalPlayerInputIdFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("getPlayerForDevice"));
        return index;
   end getPlayerForDevice;

   function getTotalDevicesInPlay (This : in out LocalPlayerInputIdFactory) return Integer is
      total : Integer;
      index : Integer;
   begin
        total := 0;
        for index in reverse 0 .. (This.totalDevicesMapped) - (1) loop
            if (This.playersInPlay (index)) = (True) then
                total := total + 1;
            end if;
        end loop;
        return total;
   end getTotalDevicesInPlay;

   function isPlayerInPlay (This : in out LocalPlayerInputIdFactory; playerInputId : Integer) return Boolean is
   begin
        return This.playersInPlay (playerInputId);
   end isPlayerInPlay;

   procedure setPlayerInPlay (This : in out LocalPlayerInputIdFactory; playerInputId : Integer) is
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Setting PlayerInPlay with playerInputId: ")).appendint (playerInputId).toString, LocalPlayerInputIdFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("setPlayerInPlay"));
        This.playersInPlay (playerInputId) := True;
   end setPlayerInPlay;

   procedure setPlayerOutOfPlay (This : in out LocalPlayerInputIdFactory; playerInputId : Integer) is
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Setting PlayerOutOfPlay with playerInputId: ")).appendint (playerInputId).toString, LocalPlayerInputIdFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("setPlayerOutOfPlay"));
        This.playersInPlay (playerInputId) := False;
   end setPlayerOutOfPlay;

   function getPlayersInPlay (This : in out LocalPlayerInputIdFactory) return Boolean_Array_Access is
   begin
        return This.playersInPlay;
   end getPlayersInPlay;

   procedure getDeviceId (This : in out LocalPlayerInputIdFactory; playerInputId : Integer) is
      Java_Result : constant Integer := LocalPlayerInputIdFactory'Class (This).getDeviceId (playerInputId => playerInputId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDeviceId;

   procedure getPlayerForDevice (This : in out LocalPlayerInputIdFactory; deviceId : Integer) is
      Java_Result : constant Integer := LocalPlayerInputIdFactory'Class (This).getPlayerForDevice (deviceId => deviceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPlayerForDevice;

   procedure isPlayerInPlay (This : in out LocalPlayerInputIdFactory; playerInputId : Integer) is
      Java_Result : constant Boolean := LocalPlayerInputIdFactory'Class (This).isPlayerInPlay (playerInputId => playerInputId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isPlayerInPlay;

begin
   null;
   instance := LocalPlayerInputIdFactory_Package.Create;

end org.allbinary.game.input.LocalPlayerInputIdFactory_Package;


