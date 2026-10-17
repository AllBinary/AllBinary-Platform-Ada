--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.GameAdState_Package; use org.allbinary.game.GameAdState_Package;
with org.allbinary.logic.system.SoftwareInformation_Package; use org.allbinary.logic.system.SoftwareInformation_Package;
with org.allbinary.business.advertisement.GameAdStateFactoryInterface_Package; use org.allbinary.business.advertisement.GameAdStateFactoryInterface_Package;
with org.allbinary.business.advertisement.AppNameLicensingAdConfiguration_Package; use org.allbinary.business.advertisement.AppNameLicensingAdConfiguration_Package;
with org.allbinary.business.advertisement.GameAdStateBase_Package; use org.allbinary.business.advertisement.GameAdStateBase_Package;

package org.allbinary.business.advertisement.GameAdStateFactory_Package is

   package GameAdState_Package renames Standard.org.allbinary.game.GameAdState_Package;
   package SoftwareInformation_Package renames Standard.org.allbinary.logic.system.SoftwareInformation_Package;

   type GameAdStateFactory is tagged;
   type GameAdStateFactory_Access is access all GameAdStateFactory'Class;
   type GameAdStateFactory_Access_Array is array (Natural range <>) of GameAdStateFactory_Access;
   type GameAdStateFactory_Access_Array_Access is access all GameAdStateFactory_Access_Array;

   type GameAdStateFactory is new GameAdStateFactoryInterface with record
      gameAdStateArray : GameAdState_Access_Array_Access;
      gameAdState : GameAdState_Access;
   end record;
   instance : GameAdStateFactory_Access;

   procedure Initialize (This : in out GameAdStateFactory'Class);
   function Create return GameAdStateFactory_Access;
   function getInstance return GameAdStateFactory_Access;
   function getCurrentInstance (This : in out GameAdStateFactory) return GameAdState_Access;
   function getInstanceForApp (This : in out GameAdStateFactory; softwareInformation_Param : access SoftwareInformation_Package.SoftwareInformation'Class) return GameAdStateBase_Access;
   procedure getInstanceForApp (This : in out GameAdStateFactory; softwareInformation_Param : access SoftwareInformation_Package.SoftwareInformation'Class);
   function isEnabled (This : in out GameAdStateFactory) return Boolean;

end org.allbinary.business.advertisement.GameAdStateFactory_Package;


