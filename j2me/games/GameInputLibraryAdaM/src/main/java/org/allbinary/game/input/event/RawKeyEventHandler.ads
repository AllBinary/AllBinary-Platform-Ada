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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.game.input.event.RawKeyEventListener_Package; use org.allbinary.game.input.event.RawKeyEventListener_Package;

package org.allbinary.game.input.event.RawKeyEventHandler_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type RawKeyEventHandler is tagged;
   type RawKeyEventHandler_Access is access all RawKeyEventHandler'Class;
   type RawKeyEventHandler_Access_Array is array (Natural range <>) of RawKeyEventHandler_Access;
   type RawKeyEventHandler_Access_Array_Access is access all RawKeyEventHandler_Access_Array;

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


