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

with AllBinary_Java;
limited with org.allbinary.game.input.event.RawKeyEventHandler_Package;
package org.allbinary.game.input.event.RawKeyEventHandler_Package_References is
   type RawKeyEventHandler_Access is access all org.allbinary.game.input.event.RawKeyEventHandler_Package.RawKeyEventHandler'Class;
   type RawKeyEventHandler_Access_Array is array (Natural range <>) of RawKeyEventHandler_Access;
   type RawKeyEventHandler_Access_Array_Access is access all RawKeyEventHandler_Access_Array;
   type RawKeyEventHandler_Access_Array_Access_Array is array (Natural range <>) of RawKeyEventHandler_Access_Array_Access;
   type RawKeyEventHandler_Access_Array_Access_Array_Access is access all RawKeyEventHandler_Access_Array_Access_Array;
   type RawKeyEventHandler_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RawKeyEventHandler_Access_Array_Access;
   end record;
   function Java_Box (Value : RawKeyEventHandler_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RawKeyEventHandler_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RawKeyEventHandler_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RawKeyEventHandler_Access_Array_Access is (if Value /= null and then Value.all in RawKeyEventHandler_Access_Array_Object'Class then RawKeyEventHandler_Access_Array_Object'Class (Value.all).Value else null);
   type RawKeyEventHandler_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RawKeyEventHandler_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : RawKeyEventHandler_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RawKeyEventHandler_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RawKeyEventHandler_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RawKeyEventHandler_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in RawKeyEventHandler_Access_Array_Access_Array_Object'Class then RawKeyEventHandler_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.event.RawKeyEventHandler_Package_References;

with org.allbinary.game.input.event.RawKeyEventHandler_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.game.input.event.RawKeyEventListener_Package;
with org.allbinary.game.input.event.RawKeyEventListener_Package_References;

package org.allbinary.game.input.event.RawKeyEventHandler_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
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
   subtype RawKeyEventListener_Access is org.allbinary.game.input.event.RawKeyEventListener_Package_References.RawKeyEventListener_Access;
   use type RawKeyEventListener_Access;
   subtype RawKeyEventListener_Access_Array is org.allbinary.game.input.event.RawKeyEventListener_Package_References.RawKeyEventListener_Access_Array;
   use type RawKeyEventListener_Access_Array;
   subtype RawKeyEventListener_Access_Array_Access is org.allbinary.game.input.event.RawKeyEventListener_Package_References.RawKeyEventListener_Access_Array_Access;
   use type RawKeyEventListener_Access_Array_Access;
   subtype RawKeyEventListener_Access_Array_Access_Array is org.allbinary.game.input.event.RawKeyEventListener_Package_References.RawKeyEventListener_Access_Array_Access_Array;
   use type RawKeyEventListener_Access_Array_Access_Array;
   subtype RawKeyEventListener_Access_Array_Access_Array_Access is org.allbinary.game.input.event.RawKeyEventListener_Package_References.RawKeyEventListener_Access_Array_Access_Array_Access;
   use type RawKeyEventListener_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype RawKeyEventHandler_Access is org.allbinary.game.input.event.RawKeyEventHandler_Package_References.RawKeyEventHandler_Access;
   function "=" (Left, Right : RawKeyEventHandler_Access) return Boolean renames org.allbinary.game.input.event.RawKeyEventHandler_Package_References."=";
   subtype RawKeyEventHandler_Access_Array is org.allbinary.game.input.event.RawKeyEventHandler_Package_References.RawKeyEventHandler_Access_Array;
   function "=" (Left, Right : RawKeyEventHandler_Access_Array) return Boolean renames org.allbinary.game.input.event.RawKeyEventHandler_Package_References."=";
   subtype RawKeyEventHandler_Access_Array_Access is org.allbinary.game.input.event.RawKeyEventHandler_Package_References.RawKeyEventHandler_Access_Array_Access;
   function "=" (Left, Right : RawKeyEventHandler_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.RawKeyEventHandler_Package_References."=";
   function Java_Box (Value : RawKeyEventHandler_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.event.RawKeyEventHandler_Package_References.Java_Box;
   function Java_Unbox_RawKeyEventHandler_Access_Array (Value : access Java_Object'Class) return RawKeyEventHandler_Access_Array_Access renames org.allbinary.game.input.event.RawKeyEventHandler_Package_References.Java_Unbox_RawKeyEventHandler_Access_Array;
   subtype RawKeyEventHandler_Access_Array_Access_Array is org.allbinary.game.input.event.RawKeyEventHandler_Package_References.RawKeyEventHandler_Access_Array_Access_Array;
   function "=" (Left, Right : RawKeyEventHandler_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.event.RawKeyEventHandler_Package_References."=";
   subtype RawKeyEventHandler_Access_Array_Access_Array_Access is org.allbinary.game.input.event.RawKeyEventHandler_Package_References.RawKeyEventHandler_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RawKeyEventHandler_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.RawKeyEventHandler_Package_References."=";
   function Java_Box (Value : RawKeyEventHandler_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.event.RawKeyEventHandler_Package_References.Java_Box;
   function Java_Unbox_RawKeyEventHandler_Access_Array_Access_Array (Value : access Java_Object'Class) return RawKeyEventHandler_Access_Array_Access_Array_Access renames org.allbinary.game.input.event.RawKeyEventHandler_Package_References.Java_Unbox_RawKeyEventHandler_Access_Array_Access_Array;

   type RawKeyEventHandler is new Java_Object with record
      logUtil : LogUtil_Access;
      eventListenerInterfaceList : BasicArrayList_Access;
   end record;
   instance : RawKeyEventHandler_Access;
   TOTAL_LISTENERS : Unbounded_String;
   LISTENER_LABEL : Unbounded_String;

   procedure Initialize (This : in out RawKeyEventHandler'Class);
   function Create return RawKeyEventHandler_Access;
   function getInstance return RawKeyEventHandler_Access;
   procedure removeAllListeners (This : in out RawKeyEventHandler);
   procedure addListeners (This : in out RawKeyEventHandler; vector_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure addListenerSingleThreaded (This : in out RawKeyEventHandler; eventListenerInterface_Param : access RawKeyEventListener_Package.RawKeyEventListener'Class);
   procedure addListener (This : in out RawKeyEventHandler; eventListenerInterface_Param : access RawKeyEventListener_Package.RawKeyEventListener'Class);
   procedure removeListenerSingleThreaded (This : in out RawKeyEventHandler; eventListenerInterface_Param : access RawKeyEventListener_Package.RawKeyEventListener'Class);
   procedure removeListener (This : in out RawKeyEventHandler; eventListenerInterface_Param : access RawKeyEventListener_Package.RawKeyEventListener'Class);
   procedure fireEvent (This : in out RawKeyEventHandler; keyCode : Integer; deviceId : Integer; repeated : Boolean);
   procedure process (This : in out RawKeyEventHandler; keyCode : Integer; deviceId : Integer; repeated : Boolean; eventListenerInterface_Param : access RawKeyEventListener_Package.RawKeyEventListener'Class);
   function getEventListenerInterfaceListP (This : in out RawKeyEventHandler) return BasicArrayList_Access;
   function toString (This : in out RawKeyEventHandler) return Unbounded_String;

end org.allbinary.game.input.event.RawKeyEventHandler_Package;


