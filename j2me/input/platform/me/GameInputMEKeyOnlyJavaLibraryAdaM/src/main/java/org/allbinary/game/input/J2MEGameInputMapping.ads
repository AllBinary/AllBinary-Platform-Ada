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
with org.allbinary.game.configuration.persistance.GamePersistanceStrings_Package; use org.allbinary.game.configuration.persistance.GamePersistanceStrings_Package;
with org.allbinary.game.input.mapping.PersistentInputMapping_Package; use org.allbinary.game.input.mapping.PersistentInputMapping_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;

package org.allbinary.game.input.J2MEGameInputMapping_Package is

   package GamePersistanceStrings_Package renames Standard.org.allbinary.game.configuration.persistance.GamePersistanceStrings_Package;
   package PersistentInputMapping_Package renames Standard.org.allbinary.game.input.mapping.PersistentInputMapping_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;

   type J2MEGameInputMapping is tagged;
   type J2MEGameInputMapping_Access is access all J2MEGameInputMapping'Class;
   type J2MEGameInputMapping_Access_Array is array (Natural range <>) of J2MEGameInputMapping_Access;
   type J2MEGameInputMapping_Access_Array_Access is access all J2MEGameInputMapping_Access_Array;

   type J2MEGameInputMapping is new PersistentInputMapping with null record;

   procedure Initialize (This : in out J2MEGameInputMapping'Class);
   function Create return J2MEGameInputMapping_Access;
   procedure init (This : in out J2MEGameInputMapping; abeClientInformation : AbeClientInformationInterface_Access);
   function isDelete (This : in out J2MEGameInputMapping; input : Input_Access) return Boolean;
   procedure isDelete (This : in out J2MEGameInputMapping; input : Input_Access);
   function isSystemInput (This : in out J2MEGameInputMapping; input : Input_Access) return Boolean;
   procedure isSystemInput (This : in out J2MEGameInputMapping; input : Input_Access);

end org.allbinary.game.input.J2MEGameInputMapping_Package;


