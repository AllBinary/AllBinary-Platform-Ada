-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
--  
-- By agreeing to this license you and any business entity you represent are 
-- legally bound to the AllBinary Open License Version 1 legal agreement. 
--  
-- You may obtain the AllBinary Open License Version 1 legal agreement from 
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
--  
-- Created By: Travis Berthelot  
--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.layer.RTSLayerEvent_Package; use org.allbinary.game.layer.RTSLayerEvent_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;

package org.allbinary.game.layer.building.event.LocalPlayerBuildingEventHandler_Package is

   package RTSLayerEvent_Package renames org.allbinary.game.layer.RTSLayerEvent_Package;
   package AllBinaryEventObject_Package renames org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventListenerInterface_Package renames org.allbinary.logic.util.event.EventListenerInterface_Package;
   package BasicEventHandler_Package renames org.allbinary.logic.util.event.handler.BasicEventHandler_Package;

   type LocalPlayerBuildingEventHandler is tagged;
   type LocalPlayerBuildingEventHandler_Access is access all LocalPlayerBuildingEventHandler'Class;
   type LocalPlayerBuildingEventHandler_Access_Array is array (Natural range <>) of LocalPlayerBuildingEventHandler_Access;
   type LocalPlayerBuildingEventHandler_Access_Array_Access is access all LocalPlayerBuildingEventHandler_Access_Array;

   type LocalPlayerBuildingEventHandler is new BasicEventHandler with null record;
   eventHandler : LocalPlayerBuildingEventHandler_Access;

   procedure Initialize (This : in out LocalPlayerBuildingEventHandler'Class);
   function Create return LocalPlayerBuildingEventHandler_Access;
   function getInstance return LocalPlayerBuildingEventHandler_Access;
   procedure getInstance;
   procedure process (This : in out LocalPlayerBuildingEventHandler; eventObject : AllBinaryEventObject_Access; eventListenerInterface : EventListenerInterface_Access);

end org.allbinary.game.layer.building.event.LocalPlayerBuildingEventHandler_Package;


