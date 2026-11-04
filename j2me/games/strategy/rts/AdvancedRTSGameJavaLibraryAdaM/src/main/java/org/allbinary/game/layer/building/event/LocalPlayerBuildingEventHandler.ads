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

limited with org.allbinary.game.layer.building.event.LocalPlayerBuildingEventHandler_Package;
package org.allbinary.game.layer.building.event.LocalPlayerBuildingEventHandler_Package_References is
   type LocalPlayerBuildingEventHandler_Access is access all org.allbinary.game.layer.building.event.LocalPlayerBuildingEventHandler_Package.LocalPlayerBuildingEventHandler'Class;
   type LocalPlayerBuildingEventHandler_Access_Array is array (Natural range <>) of LocalPlayerBuildingEventHandler_Access;
   type LocalPlayerBuildingEventHandler_Access_Array_Access is access all LocalPlayerBuildingEventHandler_Access_Array;
   type LocalPlayerBuildingEventHandler_Access_Array_Access_Array is array (Natural range <>) of LocalPlayerBuildingEventHandler_Access_Array_Access;
   type LocalPlayerBuildingEventHandler_Access_Array_Access_Array_Access is access all LocalPlayerBuildingEventHandler_Access_Array_Access_Array;
end org.allbinary.game.layer.building.event.LocalPlayerBuildingEventHandler_Package_References;

with org.allbinary.game.layer.building.event.LocalPlayerBuildingEventHandler_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
limited with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package_References;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;

package org.allbinary.game.layer.building.event.LocalPlayerBuildingEventHandler_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
   package Reference_Types is
   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   use type AllBinaryEventObject_Access;
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   use type AllBinaryEventObject_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access;
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   use type AllBinaryEventObject_Access_Array_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype LocalPlayerBuildingEventHandler_Access is org.allbinary.game.layer.building.event.LocalPlayerBuildingEventHandler_Package_References.LocalPlayerBuildingEventHandler_Access;
   function "=" (Left, Right : LocalPlayerBuildingEventHandler_Access) return Boolean renames org.allbinary.game.layer.building.event.LocalPlayerBuildingEventHandler_Package_References."=";
   subtype LocalPlayerBuildingEventHandler_Access_Array is org.allbinary.game.layer.building.event.LocalPlayerBuildingEventHandler_Package_References.LocalPlayerBuildingEventHandler_Access_Array;
   function "=" (Left, Right : LocalPlayerBuildingEventHandler_Access_Array) return Boolean renames org.allbinary.game.layer.building.event.LocalPlayerBuildingEventHandler_Package_References."=";
   subtype LocalPlayerBuildingEventHandler_Access_Array_Access is org.allbinary.game.layer.building.event.LocalPlayerBuildingEventHandler_Package_References.LocalPlayerBuildingEventHandler_Access_Array_Access;
   function "=" (Left, Right : LocalPlayerBuildingEventHandler_Access_Array_Access) return Boolean renames org.allbinary.game.layer.building.event.LocalPlayerBuildingEventHandler_Package_References."=";
   subtype LocalPlayerBuildingEventHandler_Access_Array_Access_Array is org.allbinary.game.layer.building.event.LocalPlayerBuildingEventHandler_Package_References.LocalPlayerBuildingEventHandler_Access_Array_Access_Array;
   function "=" (Left, Right : LocalPlayerBuildingEventHandler_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.building.event.LocalPlayerBuildingEventHandler_Package_References."=";
   subtype LocalPlayerBuildingEventHandler_Access_Array_Access_Array_Access is org.allbinary.game.layer.building.event.LocalPlayerBuildingEventHandler_Package_References.LocalPlayerBuildingEventHandler_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LocalPlayerBuildingEventHandler_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.building.event.LocalPlayerBuildingEventHandler_Package_References."=";

   type LocalPlayerBuildingEventHandler is new BasicEventHandler with null record;
   eventHandler : LocalPlayerBuildingEventHandler_Access;

   procedure Initialize (This : in out LocalPlayerBuildingEventHandler'Class);
   function Create return LocalPlayerBuildingEventHandler_Access;
   function getInstance return LocalPlayerBuildingEventHandler_Access;
   procedure process (This : in out LocalPlayerBuildingEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);

end org.allbinary.game.layer.building.event.LocalPlayerBuildingEventHandler_Package;


