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

limited with org.allbinary.game.combat.canvas.CombatGameCanvas_Package;
package org.allbinary.game.combat.canvas.CombatGameCanvas_Package_References is
   type CombatGameCanvas_Access is access all org.allbinary.game.combat.canvas.CombatGameCanvas_Package.CombatGameCanvas'Class;
   type CombatGameCanvas_Access_Array is array (Natural range <>) of CombatGameCanvas_Access;
   type CombatGameCanvas_Access_Array_Access is access all CombatGameCanvas_Access_Array;
   type CombatGameCanvas_Access_Array_Access_Array is array (Natural range <>) of CombatGameCanvas_Access_Array_Access;
   type CombatGameCanvas_Access_Array_Access_Array_Access is access all CombatGameCanvas_Access_Array_Access_Array;
end org.allbinary.game.combat.canvas.CombatGameCanvas_Package_References;

with org.allbinary.game.combat.canvas.CombatGameCanvas_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.CommandListener_Package;
with javax.microedition.lcdui.CommandListener_Package_References;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
limited with org.allbinary.game.init.BasicBuildGameInitializerFactory_Package;
with org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References;
limited with org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References;
limited with org.allbinary.game.score.HighScoresFactoryInterface_Package;
with org.allbinary.game.score.HighScoresFactoryInterface_Package_References;
limited with org.allbinary.layer.BasicLayerProcessor_Package;
with org.allbinary.layer.BasicLayerProcessor_Package_References;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;

package org.allbinary.game.combat.canvas.CombatGameCanvas_Package is

   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
   package AllBinaryGameCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
   package BasicBuildGameInitializerFactory_Package renames Standard.org.allbinary.game.init.BasicBuildGameInitializerFactory_Package;
   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package HighScoresFactoryInterface_Package renames Standard.org.allbinary.game.score.HighScoresFactoryInterface_Package;
   package BasicLayerProcessor_Package renames Standard.org.allbinary.layer.BasicLayerProcessor_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package Reference_Types is
   subtype CommandListener_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access;
   use type CommandListener_Access;
   subtype CommandListener_Access_Array is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array;
   use type CommandListener_Access_Array;
   subtype CommandListener_Access_Array_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access;
   use type CommandListener_Access_Array_Access;
   subtype CommandListener_Access_Array_Access_Array is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access_Array;
   use type CommandListener_Access_Array_Access_Array;
   subtype CommandListener_Access_Array_Access_Array_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access_Array_Access;
   use type CommandListener_Access_Array_Access_Array_Access;
   subtype BasicBuildGameInitializerFactory_Access is org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References.BasicBuildGameInitializerFactory_Access;
   use type BasicBuildGameInitializerFactory_Access;
   subtype BasicBuildGameInitializerFactory_Access_Array is org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References.BasicBuildGameInitializerFactory_Access_Array;
   use type BasicBuildGameInitializerFactory_Access_Array;
   subtype BasicBuildGameInitializerFactory_Access_Array_Access is org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References.BasicBuildGameInitializerFactory_Access_Array_Access;
   use type BasicBuildGameInitializerFactory_Access_Array_Access;
   subtype BasicBuildGameInitializerFactory_Access_Array_Access_Array is org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References.BasicBuildGameInitializerFactory_Access_Array_Access_Array;
   use type BasicBuildGameInitializerFactory_Access_Array_Access_Array;
   subtype BasicBuildGameInitializerFactory_Access_Array_Access_Array_Access is org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References.BasicBuildGameInitializerFactory_Access_Array_Access_Array_Access;
   use type BasicBuildGameInitializerFactory_Access_Array_Access_Array_Access;
   subtype AllBinaryGameLayerManager_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access;
   use type AllBinaryGameLayerManager_Access;
   subtype AllBinaryGameLayerManager_Access_Array is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array;
   use type AllBinaryGameLayerManager_Access_Array;
   subtype AllBinaryGameLayerManager_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access;
   use type AllBinaryGameLayerManager_Access_Array_Access;
   subtype AllBinaryGameLayerManager_Access_Array_Access_Array is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access_Array;
   use type AllBinaryGameLayerManager_Access_Array_Access_Array;
   subtype AllBinaryGameLayerManager_Access_Array_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access_Array_Access;
   use type AllBinaryGameLayerManager_Access_Array_Access_Array_Access;
   subtype HighScoresFactoryInterface_Access is org.allbinary.game.score.HighScoresFactoryInterface_Package_References.HighScoresFactoryInterface_Access;
   use type HighScoresFactoryInterface_Access;
   subtype HighScoresFactoryInterface_Access_Array is org.allbinary.game.score.HighScoresFactoryInterface_Package_References.HighScoresFactoryInterface_Access_Array;
   use type HighScoresFactoryInterface_Access_Array;
   subtype HighScoresFactoryInterface_Access_Array_Access is org.allbinary.game.score.HighScoresFactoryInterface_Package_References.HighScoresFactoryInterface_Access_Array_Access;
   use type HighScoresFactoryInterface_Access_Array_Access;
   subtype HighScoresFactoryInterface_Access_Array_Access_Array is org.allbinary.game.score.HighScoresFactoryInterface_Package_References.HighScoresFactoryInterface_Access_Array_Access_Array;
   use type HighScoresFactoryInterface_Access_Array_Access_Array;
   subtype HighScoresFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScoresFactoryInterface_Package_References.HighScoresFactoryInterface_Access_Array_Access_Array_Access;
   use type HighScoresFactoryInterface_Access_Array_Access_Array_Access;
   subtype BasicLayerProcessor_Access is org.allbinary.layer.BasicLayerProcessor_Package_References.BasicLayerProcessor_Access;
   use type BasicLayerProcessor_Access;
   subtype BasicLayerProcessor_Access_Array is org.allbinary.layer.BasicLayerProcessor_Package_References.BasicLayerProcessor_Access_Array;
   use type BasicLayerProcessor_Access_Array;
   subtype BasicLayerProcessor_Access_Array_Access is org.allbinary.layer.BasicLayerProcessor_Package_References.BasicLayerProcessor_Access_Array_Access;
   use type BasicLayerProcessor_Access_Array_Access;
   subtype BasicLayerProcessor_Access_Array_Access_Array is org.allbinary.layer.BasicLayerProcessor_Package_References.BasicLayerProcessor_Access_Array_Access_Array;
   use type BasicLayerProcessor_Access_Array_Access_Array;
   subtype BasicLayerProcessor_Access_Array_Access_Array_Access is org.allbinary.layer.BasicLayerProcessor_Package_References.BasicLayerProcessor_Access_Array_Access_Array_Access;
   use type BasicLayerProcessor_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype CombatGameCanvas_Access is org.allbinary.game.combat.canvas.CombatGameCanvas_Package_References.CombatGameCanvas_Access;
   function "=" (Left, Right : CombatGameCanvas_Access) return Boolean renames org.allbinary.game.combat.canvas.CombatGameCanvas_Package_References."=";
   subtype CombatGameCanvas_Access_Array is org.allbinary.game.combat.canvas.CombatGameCanvas_Package_References.CombatGameCanvas_Access_Array;
   function "=" (Left, Right : CombatGameCanvas_Access_Array) return Boolean renames org.allbinary.game.combat.canvas.CombatGameCanvas_Package_References."=";
   subtype CombatGameCanvas_Access_Array_Access is org.allbinary.game.combat.canvas.CombatGameCanvas_Package_References.CombatGameCanvas_Access_Array_Access;
   function "=" (Left, Right : CombatGameCanvas_Access_Array_Access) return Boolean renames org.allbinary.game.combat.canvas.CombatGameCanvas_Package_References."=";
   subtype CombatGameCanvas_Access_Array_Access_Array is org.allbinary.game.combat.canvas.CombatGameCanvas_Package_References.CombatGameCanvas_Access_Array_Access_Array;
   function "=" (Left, Right : CombatGameCanvas_Access_Array_Access_Array) return Boolean renames org.allbinary.game.combat.canvas.CombatGameCanvas_Package_References."=";
   subtype CombatGameCanvas_Access_Array_Access_Array_Access is org.allbinary.game.combat.canvas.CombatGameCanvas_Package_References.CombatGameCanvas_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CombatGameCanvas_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.combat.canvas.CombatGameCanvas_Package_References."=";

   type CombatGameCanvas is new AllBinaryGameCanvas with null record;
   basicLayerProcessor : BasicLayerProcessor_Access_Array_Access;

   procedure Initialize (This : in out CombatGameCanvas'Class; cmdListener_Param : access CommandListener_Package.CommandListener'Class; gameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class; highScoresFactoryInterface_Param : access HighScoresFactoryInterface_Package.HighScoresFactoryInterface'Class; gameInitializationInterfaceFactoryInterface_Param : access BasicBuildGameInitializerFactory_Package.BasicBuildGameInitializerFactory'Class; buffered : Boolean);
   function Create (cmdListener_Param : access CommandListener_Package.CommandListener'Class; gameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class; highScoresFactoryInterface_Param : access HighScoresFactoryInterface_Package.HighScoresFactoryInterface'Class; gameInitializationInterfaceFactoryInterface_Param : access BasicBuildGameInitializerFactory_Package.BasicBuildGameInitializerFactory'Class; buffered : Boolean) return CombatGameCanvas_Access;
   procedure CombatGameCanvas_init (This : in out CombatGameCanvas);
   procedure initApp (This : in out CombatGameCanvas; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class);
   procedure initConfigurablePortion (This : in out CombatGameCanvas; portion : Integer);
   procedure processPlayingGame (This : in out CombatGameCanvas);
   procedure cleanupGame (This : in out CombatGameCanvas);
   procedure cleanupManager (This : in out CombatGameCanvas);

end org.allbinary.game.combat.canvas.CombatGameCanvas_Package;


