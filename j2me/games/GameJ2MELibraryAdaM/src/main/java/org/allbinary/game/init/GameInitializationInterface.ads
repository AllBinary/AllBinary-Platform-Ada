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
--  with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;

package org.allbinary.game.init.GameInitializationInterface_Package is

   package AbeClientInformationInterface_Package renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;

   type GameInitializationInterface is interface;
   type GameInitializationInterface_Access is access all GameInitializationInterface'Class;
   type GameInitializationInterface_Access_Array is array (Natural range <>) of GameInitializationInterface_Access;
   type GameInitializationInterface_Access_Array_Access is access all GameInitializationInterface_Access_Array;
   procedure init (This : in out GameInitializationInterface; abeClientInformation : AbeClientInformationInterface_Access; commandListener : CommandListener_Access; level : Integer) is abstract;

end org.allbinary.game.init.GameInitializationInterface_Package;


