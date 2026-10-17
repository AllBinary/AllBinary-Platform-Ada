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
with org.allbinary.game.configuration.event.GameInitializedEvent_Package; use org.allbinary.game.configuration.event.GameInitializedEvent_Package;
with org.allbinary.game.configuration.event.GameInitializedEventHandler_Package; use org.allbinary.game.configuration.event.GameInitializedEventHandler_Package;
with org.allbinary.game.configuration.event.GameInitializedListenerInterface_Package; use org.allbinary.game.configuration.event.GameInitializedListenerInterface_Package;
with org.allbinary.game.resource.FeatureResourceInitializationUtil_Package; use org.allbinary.game.resource.FeatureResourceInitializationUtil_Package;
with org.allbinary.graphics.threed.SWTJOGLProcessor_Package; use org.allbinary.graphics.threed.SWTJOGLProcessor_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.game.init.DefaultGameInitializationListener_Package is

   package GameInitializedEvent_Package renames Standard.org.allbinary.game.configuration.event.GameInitializedEvent_Package;
   package GameInitializedEventHandler_Package renames Standard.org.allbinary.game.configuration.event.GameInitializedEventHandler_Package;
   package GameInitializedListenerInterface_Package renames Standard.org.allbinary.game.configuration.event.GameInitializedListenerInterface_Package;
   package FeatureResourceInitializationUtil_Package renames Standard.org.allbinary.game.resource.FeatureResourceInitializationUtil_Package;
   package SWTJOGLProcessor_Package renames Standard.org.allbinary.graphics.threed.SWTJOGLProcessor_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type DefaultGameInitializationListener is tagged;
   type DefaultGameInitializationListener_Access is access all DefaultGameInitializationListener'Class;
   type DefaultGameInitializationListener_Access_Array is array (Natural range <>) of DefaultGameInitializationListener_Access;
   type DefaultGameInitializationListener_Access_Array_Access is access all DefaultGameInitializationListener_Access_Array;

   type DefaultGameInitializationListener is new GameInitializedListenerInterface with record
      logUtil : LogUtil_Access;
      swtJOGLProcessor : SWTJOGLProcessor_Access;
      firstTime : Boolean;
   end record;

   procedure Initialize (This : in out DefaultGameInitializationListener'Class);
   function Create return DefaultGameInitializationListener_Access;
   procedure onEvent (This : in out DefaultGameInitializationListener; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure onGameInitialized (This : in out DefaultGameInitializationListener; gameInitializedEvent_Param : access GameInitializedEvent_Package.GameInitializedEvent'Class);

end org.allbinary.game.init.DefaultGameInitializationListener_Package;


