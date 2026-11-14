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
limited with org.allbinary.game.input.event.UpKeyEventHandler_Package;
package org.allbinary.game.input.event.UpKeyEventHandler_Package_References is
   type UpKeyEventHandler_Access is access all org.allbinary.game.input.event.UpKeyEventHandler_Package.UpKeyEventHandler'Class;
   type UpKeyEventHandler_Access_Array is array (Natural range <>) of UpKeyEventHandler_Access;
   type UpKeyEventHandler_Access_Array_Access is access all UpKeyEventHandler_Access_Array;
   type UpKeyEventHandler_Access_Array_Access_Array is array (Natural range <>) of UpKeyEventHandler_Access_Array_Access;
   type UpKeyEventHandler_Access_Array_Access_Array_Access is access all UpKeyEventHandler_Access_Array_Access_Array;
   type UpKeyEventHandler_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UpKeyEventHandler_Access_Array_Access;
   end record;
   function Java_Box (Value : UpKeyEventHandler_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UpKeyEventHandler_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UpKeyEventHandler_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UpKeyEventHandler_Access_Array_Access is (if Value /= null and then Value.all in UpKeyEventHandler_Access_Array_Object'Class then UpKeyEventHandler_Access_Array_Object'Class (Value.all).Value else null);
   type UpKeyEventHandler_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UpKeyEventHandler_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : UpKeyEventHandler_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UpKeyEventHandler_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UpKeyEventHandler_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UpKeyEventHandler_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in UpKeyEventHandler_Access_Array_Access_Array_Object'Class then UpKeyEventHandler_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.event.UpKeyEventHandler_Package_References;

with org.allbinary.game.input.event.UpKeyEventHandler_Package_References;
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
with org.allbinary.game.input.event.UpKeyEventHandlerBase_Package; use org.allbinary.game.input.event.UpKeyEventHandlerBase_Package;

package org.allbinary.game.input.event.UpKeyEventHandler_Package is

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


   subtype UpKeyEventHandler_Access is org.allbinary.game.input.event.UpKeyEventHandler_Package_References.UpKeyEventHandler_Access;
   function "=" (Left, Right : UpKeyEventHandler_Access) return Boolean renames org.allbinary.game.input.event.UpKeyEventHandler_Package_References."=";
   subtype UpKeyEventHandler_Access_Array is org.allbinary.game.input.event.UpKeyEventHandler_Package_References.UpKeyEventHandler_Access_Array;
   function "=" (Left, Right : UpKeyEventHandler_Access_Array) return Boolean renames org.allbinary.game.input.event.UpKeyEventHandler_Package_References."=";
   subtype UpKeyEventHandler_Access_Array_Access is org.allbinary.game.input.event.UpKeyEventHandler_Package_References.UpKeyEventHandler_Access_Array_Access;
   function "=" (Left, Right : UpKeyEventHandler_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.UpKeyEventHandler_Package_References."=";
   function Java_Box (Value : UpKeyEventHandler_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.event.UpKeyEventHandler_Package_References.Java_Box;
   function Java_Unbox_UpKeyEventHandler_Access_Array (Value : access Java_Object'Class) return UpKeyEventHandler_Access_Array_Access renames org.allbinary.game.input.event.UpKeyEventHandler_Package_References.Java_Unbox_UpKeyEventHandler_Access_Array;
   subtype UpKeyEventHandler_Access_Array_Access_Array is org.allbinary.game.input.event.UpKeyEventHandler_Package_References.UpKeyEventHandler_Access_Array_Access_Array;
   function "=" (Left, Right : UpKeyEventHandler_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.event.UpKeyEventHandler_Package_References."=";
   subtype UpKeyEventHandler_Access_Array_Access_Array_Access is org.allbinary.game.input.event.UpKeyEventHandler_Package_References.UpKeyEventHandler_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UpKeyEventHandler_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.UpKeyEventHandler_Package_References."=";
   function Java_Box (Value : UpKeyEventHandler_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.event.UpKeyEventHandler_Package_References.Java_Box;
   function Java_Unbox_UpKeyEventHandler_Access_Array_Access_Array (Value : access Java_Object'Class) return UpKeyEventHandler_Access_Array_Access_Array_Access renames org.allbinary.game.input.event.UpKeyEventHandler_Package_References.Java_Unbox_UpKeyEventHandler_Access_Array_Access_Array;

   type UpKeyEventHandler is new UpKeyEventHandlerBase with record
      playerInputIdFactory : LocalPlayerInputIdFactory_Access;
   end record;
   instance : UpKeyEventHandler_Access;
   instanceArray : UpKeyEventHandlerBase_Access_Array_Access;

   procedure Initialize (This : in out UpKeyEventHandler'Class);
   function Create return UpKeyEventHandler_Access;
   function getInstance return UpKeyEventHandler_Access;
   function getInstanceForDevice (This : in out UpKeyEventHandler; deviceId : Integer) return UpKeyEventHandlerBase_Access;
   procedure getInstanceForDevice (This : in out UpKeyEventHandler; deviceId : Integer);
   function getInstanceForPlayer (This : in out UpKeyEventHandler; playerInputId : Integer) return UpKeyEventHandlerBase_Access;
   procedure getInstanceForPlayer (This : in out UpKeyEventHandler; playerInputId : Integer);
   procedure removeAllListeners (This : in out UpKeyEventHandler);
   procedure removeListenerSingleThreaded (This : in out UpKeyEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);
   procedure removeListener (This : in out UpKeyEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);

end org.allbinary.game.input.event.UpKeyEventHandler_Package;


