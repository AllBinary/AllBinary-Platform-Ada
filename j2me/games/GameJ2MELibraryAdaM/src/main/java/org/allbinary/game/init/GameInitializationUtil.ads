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
with org.allbinary.game.configuration.event_Case.ChangedGameFeatureListener_Package; use org.allbinary.game.configuration.event_Case.ChangedGameFeatureListener_Package;
with org.allbinary.game.configuration.event_Case.GameInitializedEvent_Package; use org.allbinary.game.configuration.event_Case.GameInitializedEvent_Package;
with org.allbinary.game.configuration.event_Case.GameInitializedEventHandler_Package; use org.allbinary.game.configuration.event_Case.GameInitializedEventHandler_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.MainFeatureFactory_Package; use org.allbinary.game.configuration.feature.MainFeatureFactory_Package;
with org.allbinary.game.resource.ResourceLoadingLevelFactory_Package; use org.allbinary.game.resource.ResourceLoadingLevelFactory_Package;
with org.allbinary.graphics.displayable.MyCanvas_Package; use org.allbinary.graphics.displayable.MyCanvas_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;

package org.allbinary.game.init.GameInitializationUtil_Package is

   package ChangedGameFeatureListener_Package renames Standard.org.allbinary.game.configuration.event_Case.ChangedGameFeatureListener_Package;
   package GameInitializedEvent_Package renames Standard.org.allbinary.game.configuration.event_Case.GameInitializedEvent_Package;
   package GameInitializedEventHandler_Package renames Standard.org.allbinary.game.configuration.event_Case.GameInitializedEventHandler_Package;
   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package MainFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.MainFeatureFactory_Package;
   package ResourceLoadingLevelFactory_Package renames Standard.org.allbinary.game.resource.ResourceLoadingLevelFactory_Package;
   package MyCanvas_Package renames Standard.org.allbinary.graphics.displayable.MyCanvas_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;

   type GameInitializationUtil is tagged;
   type GameInitializationUtil_Access is access all GameInitializationUtil'Class;
   type GameInitializationUtil_Access_Array is array (Natural range <>) of GameInitializationUtil_Access;
   type GameInitializationUtil_Access_Array_Access is access all GameInitializationUtil_Access_Array;

   type GameInitializationUtil is new Java_Object with record
      EVENT : GameInitializedEvent_Access;
   end record;
   instance : GameInitializationUtil_Access;

   procedure Initialize (This : in out GameInitializationUtil'Class);
   function Create return GameInitializationUtil_Access;
   procedure initDemo (This : in out GameInitializationUtil; abeClientInformation : AbeClientInformationInterface_Access; canvas : MyCanvas_Access; gameInitializationInterfaceFactoryInterface : BasicBuildGameInitializerFactory_Access);
   procedure initGame (This : in out GameInitializationUtil; abeClientInformation : AbeClientInformationInterface_Access; canvas : MyCanvas_Access; gameInitializationInterfaceFactoryInterface : BasicBuildGameInitializerFactory_Access);
   function getInstance return GameInitializationUtil_Access;
   procedure getInstance;

end org.allbinary.game.init.GameInitializationUtil_Package;


