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

package org.allbinary.game.init.GameInitializationInterfaceFactoryInterface_Package is


   type GameInitializationInterfaceFactoryInterface is interface;
   type GameInitializationInterfaceFactoryInterface_Access is access all GameInitializationInterfaceFactoryInterface'Class;
   type GameInitializationInterfaceFactoryInterface_Access_Array is array (Natural range <>) of GameInitializationInterfaceFactoryInterface_Access;
   type GameInitializationInterfaceFactoryInterface_Access_Array_Access is access all GameInitializationInterfaceFactoryInterface_Access_Array;
   function getInstance (This : in out GameInitializationInterfaceFactoryInterface) return GameInitializationInterface_Access is abstract;

end org.allbinary.game.init.GameInitializationInterfaceFactoryInterface_Package;


