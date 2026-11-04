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

limited with org.allbinary.media.graphics.geography.map.GeographicMapEventHandler_Package;
package org.allbinary.media.graphics.geography.map.GeographicMapEventHandler_Package_References is
   type GeographicMapEventHandler_Access is access all org.allbinary.media.graphics.geography.map.GeographicMapEventHandler_Package.GeographicMapEventHandler'Class;
   type GeographicMapEventHandler_Access_Array is array (Natural range <>) of GeographicMapEventHandler_Access;
   type GeographicMapEventHandler_Access_Array_Access is access all GeographicMapEventHandler_Access_Array;
   type GeographicMapEventHandler_Access_Array_Access_Array is array (Natural range <>) of GeographicMapEventHandler_Access_Array_Access;
   type GeographicMapEventHandler_Access_Array_Access_Array_Access is access all GeographicMapEventHandler_Access_Array_Access_Array;
end org.allbinary.media.graphics.geography.map.GeographicMapEventHandler_Package_References;

with org.allbinary.media.graphics.geography.map.GeographicMapEventHandler_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.AllBinaryGameLayer_Package;
with org.allbinary.game.layer.AllBinaryGameLayer_Package_References;
limited with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package_References;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.media.graphics.geography.map.GeographicMapEventHandler_Package is

   package AllBinaryGameLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayer_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype AllBinaryGameLayer_Access is org.allbinary.game.layer.AllBinaryGameLayer_Package_References.AllBinaryGameLayer_Access;
   use type AllBinaryGameLayer_Access;
   subtype AllBinaryGameLayer_Access_Array is org.allbinary.game.layer.AllBinaryGameLayer_Package_References.AllBinaryGameLayer_Access_Array;
   use type AllBinaryGameLayer_Access_Array;
   subtype AllBinaryGameLayer_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayer_Package_References.AllBinaryGameLayer_Access_Array_Access;
   use type AllBinaryGameLayer_Access_Array_Access;
   subtype AllBinaryGameLayer_Access_Array_Access_Array is org.allbinary.game.layer.AllBinaryGameLayer_Package_References.AllBinaryGameLayer_Access_Array_Access_Array;
   use type AllBinaryGameLayer_Access_Array_Access_Array;
   subtype AllBinaryGameLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayer_Package_References.AllBinaryGameLayer_Access_Array_Access_Array_Access;
   use type AllBinaryGameLayer_Access_Array_Access_Array_Access;
   subtype EventListenerInterface_Access is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access;
   use type EventListenerInterface_Access;
   subtype EventListenerInterface_Access_Array is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access_Array;
   use type EventListenerInterface_Access_Array;
   subtype EventListenerInterface_Access_Array_Access is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access_Array_Access;
   use type EventListenerInterface_Access_Array_Access;
   subtype EventListenerInterface_Access_Array_Access_Array is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access_Array_Access_Array;
   use type EventListenerInterface_Access_Array_Access_Array;
   subtype EventListenerInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access_Array_Access_Array_Access;
   use type EventListenerInterface_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GeographicMapEventHandler_Access is org.allbinary.media.graphics.geography.map.GeographicMapEventHandler_Package_References.GeographicMapEventHandler_Access;
   function "=" (Left, Right : GeographicMapEventHandler_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapEventHandler_Package_References."=";
   subtype GeographicMapEventHandler_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapEventHandler_Package_References.GeographicMapEventHandler_Access_Array;
   function "=" (Left, Right : GeographicMapEventHandler_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapEventHandler_Package_References."=";
   subtype GeographicMapEventHandler_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapEventHandler_Package_References.GeographicMapEventHandler_Access_Array_Access;
   function "=" (Left, Right : GeographicMapEventHandler_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapEventHandler_Package_References."=";
   subtype GeographicMapEventHandler_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapEventHandler_Package_References.GeographicMapEventHandler_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapEventHandler_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapEventHandler_Package_References."=";
   subtype GeographicMapEventHandler_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapEventHandler_Package_References.GeographicMapEventHandler_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapEventHandler_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapEventHandler_Package_References."=";

   type GeographicMapEventHandler is new BasicEventHandler with record
      list : BasicArrayList_Access;
   end record;
   instance : GeographicMapEventHandler_Access;

   procedure Initialize (This : in out GeographicMapEventHandler'Class);
   function Create return GeographicMapEventHandler_Access;
   function getInstance return GeographicMapEventHandler_Access;
   procedure addListener (This : in out GeographicMapEventHandler; gameLayer_Param : access AllBinaryGameLayer_Package.AllBinaryGameLayer'Class);
   procedure removeAllListeners (This : in out GeographicMapEventHandler);
   procedure removeListener (This : in out GeographicMapEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);
   procedure fireEvent (This : in out GeographicMapEventHandler);

end org.allbinary.media.graphics.geography.map.GeographicMapEventHandler_Package;


