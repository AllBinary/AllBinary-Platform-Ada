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

limited with org.allbinary.game.input.J2MEGameInputMapping_Package;
package org.allbinary.game.input.J2MEGameInputMapping_Package_References is
   type J2MEGameInputMapping_Access is access all org.allbinary.game.input.J2MEGameInputMapping_Package.J2MEGameInputMapping'Class;
   type J2MEGameInputMapping_Access_Array is array (Natural range <>) of J2MEGameInputMapping_Access;
   type J2MEGameInputMapping_Access_Array_Access is access all J2MEGameInputMapping_Access_Array;
   type J2MEGameInputMapping_Access_Array_Access_Array is array (Natural range <>) of J2MEGameInputMapping_Access_Array_Access;
   type J2MEGameInputMapping_Access_Array_Access_Array_Access is access all J2MEGameInputMapping_Access_Array_Access_Array;
end org.allbinary.game.input.J2MEGameInputMapping_Package_References;

with org.allbinary.game.input.J2MEGameInputMapping_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.input.mapping.PersistentInputMapping_Package; use org.allbinary.game.input.mapping.PersistentInputMapping_Package;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
limited with org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.Input_Package_References;

package org.allbinary.game.input.J2MEGameInputMapping_Package is

   package PersistentInputMapping_Package renames Standard.org.allbinary.game.input.mapping.PersistentInputMapping_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package Reference_Types is
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   use type AbeClientInformationInterface_Access;
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   use type AbeClientInformationInterface_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access;
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   use type AbeClientInformationInterface_Access_Array_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access_Array_Access;
   subtype Input_Access is org.allbinary.game.input.Input_Package_References.Input_Access;
   use type Input_Access;
   subtype Input_Access_Array is org.allbinary.game.input.Input_Package_References.Input_Access_Array;
   use type Input_Access_Array;
   subtype Input_Access_Array_Access is org.allbinary.game.input.Input_Package_References.Input_Access_Array_Access;
   use type Input_Access_Array_Access;
   subtype Input_Access_Array_Access_Array is org.allbinary.game.input.Input_Package_References.Input_Access_Array_Access_Array;
   use type Input_Access_Array_Access_Array;
   subtype Input_Access_Array_Access_Array_Access is org.allbinary.game.input.Input_Package_References.Input_Access_Array_Access_Array_Access;
   use type Input_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype J2MEGameInputMapping_Access is org.allbinary.game.input.J2MEGameInputMapping_Package_References.J2MEGameInputMapping_Access;
   function "=" (Left, Right : J2MEGameInputMapping_Access) return Boolean renames org.allbinary.game.input.J2MEGameInputMapping_Package_References."=";
   subtype J2MEGameInputMapping_Access_Array is org.allbinary.game.input.J2MEGameInputMapping_Package_References.J2MEGameInputMapping_Access_Array;
   function "=" (Left, Right : J2MEGameInputMapping_Access_Array) return Boolean renames org.allbinary.game.input.J2MEGameInputMapping_Package_References."=";
   subtype J2MEGameInputMapping_Access_Array_Access is org.allbinary.game.input.J2MEGameInputMapping_Package_References.J2MEGameInputMapping_Access_Array_Access;
   function "=" (Left, Right : J2MEGameInputMapping_Access_Array_Access) return Boolean renames org.allbinary.game.input.J2MEGameInputMapping_Package_References."=";
   subtype J2MEGameInputMapping_Access_Array_Access_Array is org.allbinary.game.input.J2MEGameInputMapping_Package_References.J2MEGameInputMapping_Access_Array_Access_Array;
   function "=" (Left, Right : J2MEGameInputMapping_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.J2MEGameInputMapping_Package_References."=";
   subtype J2MEGameInputMapping_Access_Array_Access_Array_Access is org.allbinary.game.input.J2MEGameInputMapping_Package_References.J2MEGameInputMapping_Access_Array_Access_Array_Access;
   function "=" (Left, Right : J2MEGameInputMapping_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.J2MEGameInputMapping_Package_References."=";

   type J2MEGameInputMapping is new PersistentInputMapping with null record;

   procedure Initialize (This : in out J2MEGameInputMapping'Class);
   function Create return J2MEGameInputMapping_Access;
   procedure init (This : in out J2MEGameInputMapping; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class);
   function isDelete (This : in out J2MEGameInputMapping; input_Param : access Input_Package.Input'Class) return Boolean;
   procedure isDelete (This : in out J2MEGameInputMapping; input_Param : access Input_Package.Input'Class);
   function isSystemInput (This : in out J2MEGameInputMapping; input_Param : access Input_Package.Input'Class) return Boolean;
   procedure isSystemInput (This : in out J2MEGameInputMapping; input_Param : access Input_Package.Input'Class);

end org.allbinary.game.input.J2MEGameInputMapping_Package;


