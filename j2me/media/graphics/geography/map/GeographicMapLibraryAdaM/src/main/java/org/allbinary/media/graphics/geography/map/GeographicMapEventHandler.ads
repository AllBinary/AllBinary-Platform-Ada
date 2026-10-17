-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
with org.allbinary.game.layer.AllBinaryGameLayer_Package; use org.allbinary.game.layer.AllBinaryGameLayer_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package org.allbinary.media.graphics.geography.map.GeographicMapEventHandler_Package is

   package AllBinaryGameLayer_Package renames org.allbinary.game.layer.AllBinaryGameLayer_Package;
   package EventListenerInterface_Package renames org.allbinary.logic.util.event.EventListenerInterface_Package;
   package BasicEventHandler_Package renames org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
   package EventStrings_Package renames org.allbinary.logic.util.event.EventStrings_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;

   type GeographicMapEventHandler is tagged;
   type GeographicMapEventHandler_Access is access all GeographicMapEventHandler'Class;
   type GeographicMapEventHandler_Access_Array is array (Natural range <>) of GeographicMapEventHandler_Access;
   type GeographicMapEventHandler_Access_Array_Access is access all GeographicMapEventHandler_Access_Array;

   type GeographicMapEventHandler is new BasicEventHandler with record
      list : BasicArrayList_Access;
   end record;
   instance : GeographicMapEventHandler_Access;

   procedure Initialize (This : in out GeographicMapEventHandler'Class);
   function Create return GeographicMapEventHandler_Access;
   function getInstance return GeographicMapEventHandler_Access;
   procedure getInstance;
   procedure addListener (This : in out GeographicMapEventHandler; gameLayer : AllBinaryGameLayer_Access);
   procedure removeAllListeners (This : in out GeographicMapEventHandler);
   procedure removeListener (This : in out GeographicMapEventHandler; eventListenerInterface : EventListenerInterface_Access);
   procedure fireEvent (This : in out GeographicMapEventHandler);

end org.allbinary.media.graphics.geography.map.GeographicMapEventHandler_Package;


