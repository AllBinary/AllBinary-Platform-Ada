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

with AllBinary_Java;
limited with org.allbinary.game.input.event.DownKeyEventHandler_Package;
package org.allbinary.game.input.event.DownKeyEventHandler_Package_References is
   type DownKeyEventHandler_Access is access all org.allbinary.game.input.event.DownKeyEventHandler_Package.DownKeyEventHandler'Class;
   type DownKeyEventHandler_Access_Array is array (Natural range <>) of DownKeyEventHandler_Access;
   type DownKeyEventHandler_Access_Array_Access is access all DownKeyEventHandler_Access_Array;
   type DownKeyEventHandler_Access_Array_Access_Array is array (Natural range <>) of DownKeyEventHandler_Access_Array_Access;
   type DownKeyEventHandler_Access_Array_Access_Array_Access is access all DownKeyEventHandler_Access_Array_Access_Array;
   type DownKeyEventHandler_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DownKeyEventHandler_Access_Array_Access;
   end record;
   function Java_Box (Value : DownKeyEventHandler_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DownKeyEventHandler_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DownKeyEventHandler_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DownKeyEventHandler_Access_Array_Access is (if Value /= null and then Value.all in DownKeyEventHandler_Access_Array_Object'Class then DownKeyEventHandler_Access_Array_Object'Class (Value.all).Value else null);
   type DownKeyEventHandler_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DownKeyEventHandler_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : DownKeyEventHandler_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DownKeyEventHandler_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DownKeyEventHandler_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DownKeyEventHandler_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in DownKeyEventHandler_Access_Array_Access_Array_Object'Class then DownKeyEventHandler_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.event.DownKeyEventHandler_Package_References;

with org.allbinary.game.input.event.DownKeyEventHandler_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.input.LocalPlayerInputIdFactory_Package;
with org.allbinary.game.input.LocalPlayerInputIdFactory_Package_References;
limited with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package_References;
with org.allbinary.game.input.event.DownKeyEventHandlerBase_Package; use org.allbinary.game.input.event.DownKeyEventHandlerBase_Package;

package org.allbinary.game.input.event.DownKeyEventHandler_Package is

   package LocalPlayerInputIdFactory_Package renames Standard.org.allbinary.game.input.LocalPlayerInputIdFactory_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package Reference_Types is
   subtype LocalPlayerInputIdFactory_Access is org.allbinary.game.input.LocalPlayerInputIdFactory_Package_References.LocalPlayerInputIdFactory_Access;
   use type LocalPlayerInputIdFactory_Access;
   subtype LocalPlayerInputIdFactory_Access_Array is org.allbinary.game.input.LocalPlayerInputIdFactory_Package_References.LocalPlayerInputIdFactory_Access_Array;
   use type LocalPlayerInputIdFactory_Access_Array;
   subtype LocalPlayerInputIdFactory_Access_Array_Access is org.allbinary.game.input.LocalPlayerInputIdFactory_Package_References.LocalPlayerInputIdFactory_Access_Array_Access;
   use type LocalPlayerInputIdFactory_Access_Array_Access;
   subtype LocalPlayerInputIdFactory_Access_Array_Access_Array is org.allbinary.game.input.LocalPlayerInputIdFactory_Package_References.LocalPlayerInputIdFactory_Access_Array_Access_Array;
   use type LocalPlayerInputIdFactory_Access_Array_Access_Array;
   subtype LocalPlayerInputIdFactory_Access_Array_Access_Array_Access is org.allbinary.game.input.LocalPlayerInputIdFactory_Package_References.LocalPlayerInputIdFactory_Access_Array_Access_Array_Access;
   use type LocalPlayerInputIdFactory_Access_Array_Access_Array_Access;
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


   subtype DownKeyEventHandler_Access is org.allbinary.game.input.event.DownKeyEventHandler_Package_References.DownKeyEventHandler_Access;
   function "=" (Left, Right : DownKeyEventHandler_Access) return Boolean renames org.allbinary.game.input.event.DownKeyEventHandler_Package_References."=";
   subtype DownKeyEventHandler_Access_Array is org.allbinary.game.input.event.DownKeyEventHandler_Package_References.DownKeyEventHandler_Access_Array;
   function "=" (Left, Right : DownKeyEventHandler_Access_Array) return Boolean renames org.allbinary.game.input.event.DownKeyEventHandler_Package_References."=";
   subtype DownKeyEventHandler_Access_Array_Access is org.allbinary.game.input.event.DownKeyEventHandler_Package_References.DownKeyEventHandler_Access_Array_Access;
   function "=" (Left, Right : DownKeyEventHandler_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.DownKeyEventHandler_Package_References."=";
   function Java_Box (Value : DownKeyEventHandler_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.event.DownKeyEventHandler_Package_References.Java_Box;
   function Java_Unbox_DownKeyEventHandler_Access_Array (Value : access Java_Object'Class) return DownKeyEventHandler_Access_Array_Access renames org.allbinary.game.input.event.DownKeyEventHandler_Package_References.Java_Unbox_DownKeyEventHandler_Access_Array;
   subtype DownKeyEventHandler_Access_Array_Access_Array is org.allbinary.game.input.event.DownKeyEventHandler_Package_References.DownKeyEventHandler_Access_Array_Access_Array;
   function "=" (Left, Right : DownKeyEventHandler_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.event.DownKeyEventHandler_Package_References."=";
   subtype DownKeyEventHandler_Access_Array_Access_Array_Access is org.allbinary.game.input.event.DownKeyEventHandler_Package_References.DownKeyEventHandler_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DownKeyEventHandler_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.DownKeyEventHandler_Package_References."=";
   function Java_Box (Value : DownKeyEventHandler_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.event.DownKeyEventHandler_Package_References.Java_Box;
   function Java_Unbox_DownKeyEventHandler_Access_Array_Access_Array (Value : access Java_Object'Class) return DownKeyEventHandler_Access_Array_Access_Array_Access renames org.allbinary.game.input.event.DownKeyEventHandler_Package_References.Java_Unbox_DownKeyEventHandler_Access_Array_Access_Array;

   type DownKeyEventHandler is new DownKeyEventHandlerBase with record
      playerInputIdFactory : LocalPlayerInputIdFactory_Access;
   end record;
   instance : DownKeyEventHandler_Access;
   instanceArray : DownKeyEventHandlerBase_Access_Array_Access;

   procedure Initialize (This : in out DownKeyEventHandler'Class);
   function Create return DownKeyEventHandler_Access;
   function getInstance return DownKeyEventHandler_Access;
   function getInstanceForDevice (This : in out DownKeyEventHandler; deviceId : Integer) return DownKeyEventHandlerBase_Access;
   procedure getInstanceForDevice (This : in out DownKeyEventHandler; deviceId : Integer);
   function getInstanceForPlayer (This : in out DownKeyEventHandler; playerInputId : Integer) return DownKeyEventHandlerBase_Access;
   procedure getInstanceForPlayer (This : in out DownKeyEventHandler; playerInputId : Integer);
   procedure removeAllListeners (This : in out DownKeyEventHandler);
   procedure removeListenerSingleThreaded (This : in out DownKeyEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);
   procedure removeListener (This : in out DownKeyEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);

end org.allbinary.game.input.event.DownKeyEventHandler_Package;


