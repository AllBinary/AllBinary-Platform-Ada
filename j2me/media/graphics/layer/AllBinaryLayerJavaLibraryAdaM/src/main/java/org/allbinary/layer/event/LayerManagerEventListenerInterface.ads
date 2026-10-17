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
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;

package org.allbinary.layer.event.LayerManagerEventListenerInterface_Package is

   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;

   type LayerManagerEventListenerInterface is interface and EventListenerInterface;
   type LayerManagerEventListenerInterface_Access is access all LayerManagerEventListenerInterface'Class;
   type LayerManagerEventListenerInterface_Access_Array is array (Natural range <>) of LayerManagerEventListenerInterface_Access;
   type LayerManagerEventListenerInterface_Access_Array_Access is access all LayerManagerEventListenerInterface_Access_Array;
   procedure onCreateLayerManagerEvent (This : in out LayerManagerEventListenerInterface; layerManagerEvent : LayerManagerEvent_Access) is abstract;
   procedure onDeleteLayerManagerEvent (This : in out LayerManagerEventListenerInterface; layerManagerEvent : LayerManagerEvent_Access) is abstract;

end org.allbinary.layer.event.LayerManagerEventListenerInterface_Package;


