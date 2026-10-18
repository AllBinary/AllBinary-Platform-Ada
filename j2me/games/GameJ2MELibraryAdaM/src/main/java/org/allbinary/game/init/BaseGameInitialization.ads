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
with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
with org.allbinary.game.resource.ResourceInitialization_Package; use org.allbinary.game.resource.ResourceInitialization_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.game.init.GameInitializationInterface_Package; use org.allbinary.game.init.GameInitializationInterface_Package;

package org.allbinary.game.init.BaseGameInitialization_Package is

   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
   package ResourceInitialization_Package renames Standard.org.allbinary.game.resource.ResourceInitialization_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;

   type BaseGameInitialization is tagged;
   type BaseGameInitialization_Access is access all BaseGameInitialization'Class;
   type BaseGameInitialization_Access_Array is array (Natural range <>) of BaseGameInitialization_Access;
   type BaseGameInitialization_Access_Array_Access is access all BaseGameInitialization_Access_Array;
   type BaseGameInitialization_Access_Array_Access_Array is array (Natural range <>) of BaseGameInitialization_Access_Array_Access;
   type BaseGameInitialization_Access_Array_Access_Array_Access is access all BaseGameInitialization_Access_Array_Access_Array;

   type BaseGameInitialization is new Java_Object and GameInitializationInterface with record
      resourceInitializationArray : ResourceInitialization_Access_Array_Access;
      portion : Integer;
      initialized : Boolean;
      EARLY_RESOURCES : Integer;
      GAME_RESOURCES : Integer;
      EARLY_CHANGABLE_RESOURCES : Integer;
      GAME_CHANGABLE_RESOURCES : Integer;
      gameInitialized : Boolean;
      allLoaded : Boolean;
   end record;
   NULL_BASE_GAME_INITIALIZATION : BaseGameInitialization_Access;

   procedure Initialize (This : in out BaseGameInitialization'Class; resourceInitializationArray : ResourceInitialization_Access_Array_Access; portion : Integer);
   function Create (resourceInitializationArray : ResourceInitialization_Access_Array_Access; portion : Integer) return BaseGameInitialization_Access;
   procedure initKey (This : in out BaseGameInitialization; portion : Integer);
   procedure initKeyMapping (This : in out BaseGameInitialization; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; portion : Integer);
   procedure init (This : in out BaseGameInitialization; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; commandListener_Param : access CommandListener_Package.CommandListener'Class; level : Integer);
   procedure resourceInitialization (This : in out BaseGameInitialization; level : Integer);
   function resourceAnimationChange (This : in out BaseGameInitialization) return Boolean;
   procedure clearResources (This : in out BaseGameInitialization);
   procedure setGameInitialized (This : in out BaseGameInitialization; gameInitialized : Boolean);
   function isGameInitialized (This : in out BaseGameInitialization) return Boolean;
   function getPortion (This : in out BaseGameInitialization) return Integer;
   procedure setInitialized (This : in out BaseGameInitialization; initialized : Boolean);
   function isInitialized (This : in out BaseGameInitialization) return Boolean;

end org.allbinary.game.init.BaseGameInitialization_Package;


