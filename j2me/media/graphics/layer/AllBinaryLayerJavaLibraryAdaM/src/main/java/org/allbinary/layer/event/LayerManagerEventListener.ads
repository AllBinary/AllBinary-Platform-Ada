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
with org.allbinary.layer.event.LayerManagerEventListenerInterface_Package; use org.allbinary.layer.event.LayerManagerEventListenerInterface_Package;
with org.allbinary.layer.event.LayerManagerEvent_Package; use org.allbinary.layer.event.LayerManagerEvent_Package;

package org.allbinary.layer.event.LayerManagerEventListener_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;

   type LayerManagerEventListener is tagged;
   type LayerManagerEventListener_Access is access all LayerManagerEventListener'Class;
   type LayerManagerEventListener_Access_Array is array (Natural range <>) of LayerManagerEventListener_Access;
   type LayerManagerEventListener_Access_Array_Access is access all LayerManagerEventListener_Access_Array;

   type LayerManagerEventListener is new LayerManagerEventListenerInterface with null record;

   procedure Initialize (This : in out LayerManagerEventListener'Class);
   function Create return LayerManagerEventListener_Access;
   procedure onEvent (This : in out LayerManagerEventListener; eventObject_Param : access AllBinaryEventObject'Class);
   procedure onCreateLayerManagerEvent (This : in out LayerManagerEventListener; layerManagerEvent_Param : access LayerManagerEvent'Class);
   procedure onDeleteLayerManagerEvent (This : in out LayerManagerEventListener; layerManagerEvent_Param : access LayerManagerEvent'Class);

end org.allbinary.layer.event.LayerManagerEventListener_Package;


