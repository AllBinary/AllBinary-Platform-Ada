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
limited with org.allbinary.game.input.event.UpGameKeyEventHandler_Package;
package org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References is
   type UpGameKeyEventHandler_Access is access all org.allbinary.game.input.event.UpGameKeyEventHandler_Package.UpGameKeyEventHandler'Class;
   type UpGameKeyEventHandler_Access_Array is array (Natural range <>) of UpGameKeyEventHandler_Access;
   type UpGameKeyEventHandler_Access_Array_Access is access all UpGameKeyEventHandler_Access_Array;
   type UpGameKeyEventHandler_Access_Array_Access_Array is array (Natural range <>) of UpGameKeyEventHandler_Access_Array_Access;
   type UpGameKeyEventHandler_Access_Array_Access_Array_Access is access all UpGameKeyEventHandler_Access_Array_Access_Array;
   type UpGameKeyEventHandler_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UpGameKeyEventHandler_Access_Array_Access;
   end record;
   function Java_Box (Value : UpGameKeyEventHandler_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UpGameKeyEventHandler_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UpGameKeyEventHandler_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UpGameKeyEventHandler_Access_Array_Access is (if Value /= null and then Value.all in UpGameKeyEventHandler_Access_Array_Object'Class then UpGameKeyEventHandler_Access_Array_Object'Class (Value.all).Value else null);
   type UpGameKeyEventHandler_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UpGameKeyEventHandler_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : UpGameKeyEventHandler_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UpGameKeyEventHandler_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UpGameKeyEventHandler_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UpGameKeyEventHandler_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in UpGameKeyEventHandler_Access_Array_Access_Array_Object'Class then UpGameKeyEventHandler_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References;

with org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References;
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
with org.allbinary.game.input.event.UpGameKeyEventHandlerBase_Package; use org.allbinary.game.input.event.UpGameKeyEventHandlerBase_Package;

package org.allbinary.game.input.event.UpGameKeyEventHandler_Package is

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


   subtype UpGameKeyEventHandler_Access is org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References.UpGameKeyEventHandler_Access;
   function "=" (Left, Right : UpGameKeyEventHandler_Access) return Boolean renames org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References."=";
   subtype UpGameKeyEventHandler_Access_Array is org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References.UpGameKeyEventHandler_Access_Array;
   function "=" (Left, Right : UpGameKeyEventHandler_Access_Array) return Boolean renames org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References."=";
   subtype UpGameKeyEventHandler_Access_Array_Access is org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References.UpGameKeyEventHandler_Access_Array_Access;
   function "=" (Left, Right : UpGameKeyEventHandler_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References."=";
   function Java_Box (Value : UpGameKeyEventHandler_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References.Java_Box;
   function Java_Unbox_UpGameKeyEventHandler_Access_Array (Value : access Java_Object'Class) return UpGameKeyEventHandler_Access_Array_Access renames org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References.Java_Unbox_UpGameKeyEventHandler_Access_Array;
   subtype UpGameKeyEventHandler_Access_Array_Access_Array is org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References.UpGameKeyEventHandler_Access_Array_Access_Array;
   function "=" (Left, Right : UpGameKeyEventHandler_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References."=";
   subtype UpGameKeyEventHandler_Access_Array_Access_Array_Access is org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References.UpGameKeyEventHandler_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UpGameKeyEventHandler_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References."=";
   function Java_Box (Value : UpGameKeyEventHandler_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References.Java_Box;
   function Java_Unbox_UpGameKeyEventHandler_Access_Array_Access_Array (Value : access Java_Object'Class) return UpGameKeyEventHandler_Access_Array_Access_Array_Access renames org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References.Java_Unbox_UpGameKeyEventHandler_Access_Array_Access_Array;

   type UpGameKeyEventHandler is new UpGameKeyEventHandlerBase with record
      playerInputIdFactory : LocalPlayerInputIdFactory_Access;
   end record;
   instance : UpGameKeyEventHandler_Access;
   instanceArray : UpGameKeyEventHandlerBase_Access_Array_Access;

   procedure Initialize (This : in out UpGameKeyEventHandler'Class);
   function Create return UpGameKeyEventHandler_Access;
   function getInstance return UpGameKeyEventHandler_Access;
   function getInstanceForDevice (This : in out UpGameKeyEventHandler; deviceId : Integer) return UpGameKeyEventHandlerBase_Access;
   procedure getInstanceForDevice (This : in out UpGameKeyEventHandler; deviceId : Integer);
   function getInstanceForPlayer (This : in out UpGameKeyEventHandler; playerInputId : Integer) return UpGameKeyEventHandlerBase_Access;
   procedure getInstanceForPlayer (This : in out UpGameKeyEventHandler; playerInputId : Integer);
   procedure removeAllListeners (This : in out UpGameKeyEventHandler);
   procedure removeListenerSingleThreaded (This : in out UpGameKeyEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);
   procedure removeListener (This : in out UpGameKeyEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);

end org.allbinary.game.input.event.UpGameKeyEventHandler_Package;


