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

limited with org.allbinary.game.rts.technology.event.TechEventHandler_Package;
package org.allbinary.game.rts.technology.event.TechEventHandler_Package_References is
   type TechEventHandler_Access is access all org.allbinary.game.rts.technology.event.TechEventHandler_Package.TechEventHandler'Class;
   type TechEventHandler_Access_Array is array (Natural range <>) of TechEventHandler_Access;
   type TechEventHandler_Access_Array_Access is access all TechEventHandler_Access_Array;
   type TechEventHandler_Access_Array_Access_Array is array (Natural range <>) of TechEventHandler_Access_Array_Access;
   type TechEventHandler_Access_Array_Access_Array_Access is access all TechEventHandler_Access_Array_Access_Array;
end org.allbinary.game.rts.technology.event.TechEventHandler_Package_References;

with org.allbinary.game.rts.technology.event.TechEventHandler_Package_References;
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

package org.allbinary.game.rts.technology.event.TechEventHandler_Package is

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


   subtype TechEventHandler_Access is org.allbinary.game.rts.technology.event.TechEventHandler_Package_References.TechEventHandler_Access;
   function "=" (Left, Right : TechEventHandler_Access) return Boolean renames org.allbinary.game.rts.technology.event.TechEventHandler_Package_References."=";
   subtype TechEventHandler_Access_Array is org.allbinary.game.rts.technology.event.TechEventHandler_Package_References.TechEventHandler_Access_Array;
   function "=" (Left, Right : TechEventHandler_Access_Array) return Boolean renames org.allbinary.game.rts.technology.event.TechEventHandler_Package_References."=";
   subtype TechEventHandler_Access_Array_Access is org.allbinary.game.rts.technology.event.TechEventHandler_Package_References.TechEventHandler_Access_Array_Access;
   function "=" (Left, Right : TechEventHandler_Access_Array_Access) return Boolean renames org.allbinary.game.rts.technology.event.TechEventHandler_Package_References."=";
   subtype TechEventHandler_Access_Array_Access_Array is org.allbinary.game.rts.technology.event.TechEventHandler_Package_References.TechEventHandler_Access_Array_Access_Array;
   function "=" (Left, Right : TechEventHandler_Access_Array_Access_Array) return Boolean renames org.allbinary.game.rts.technology.event.TechEventHandler_Package_References."=";
   subtype TechEventHandler_Access_Array_Access_Array_Access is org.allbinary.game.rts.technology.event.TechEventHandler_Package_References.TechEventHandler_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TechEventHandler_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.rts.technology.event.TechEventHandler_Package_References."=";

   type TechEventHandler is new BasicEventHandler with null record;
   eventHandler : TechEventHandler_Access;

   procedure Initialize (This : in out TechEventHandler'Class);
   function Create return TechEventHandler_Access;
   function getInstance return TechEventHandler_Access;
   procedure process (This : in out TechEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);

end org.allbinary.game.rts.technology.event.TechEventHandler_Package;


