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
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.game.configuration.event.GameFeatureListenerInterface_Package; use org.allbinary.game.configuration.event.GameFeatureListenerInterface_Package;
with org.allbinary.game.configuration.event.GameFeatureEvent_Package; use org.allbinary.game.configuration.event.GameFeatureEvent_Package;

package org.allbinary.game.configuration.event.GameFeatureEventHandler_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;

   type GameFeatureEventHandler is tagged;
   type GameFeatureEventHandler_Access is access all GameFeatureEventHandler'Class;
   type GameFeatureEventHandler_Access_Array is array (Natural range <>) of GameFeatureEventHandler_Access;
   type GameFeatureEventHandler_Access_Array_Access is access all GameFeatureEventHandler_Access_Array;

   type GameFeatureEventHandler is new BasicEventHandler with null record;
   gameKeyEventHandler : GameFeatureEventHandler_Access;

   procedure Initialize (This : in out GameFeatureEventHandler'Class);
   function Create return GameFeatureEventHandler_Access;
   function getInstance return GameFeatureEventHandler_Access;
   procedure process (This : in out GameFeatureEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);

end org.allbinary.game.configuration.event.GameFeatureEventHandler_Package;


