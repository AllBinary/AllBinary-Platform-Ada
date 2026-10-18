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
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;

package org.allbinary.game.midlet.DemoGameMidletEventHandler_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;

   type DemoGameMidletEventHandler is tagged;
   type DemoGameMidletEventHandler_Access is access all DemoGameMidletEventHandler'Class;
   type DemoGameMidletEventHandler_Access_Array is array (Natural range <>) of DemoGameMidletEventHandler_Access;
   type DemoGameMidletEventHandler_Access_Array_Access is access all DemoGameMidletEventHandler_Access_Array;
   type DemoGameMidletEventHandler_Access_Array_Access_Array is array (Natural range <>) of DemoGameMidletEventHandler_Access_Array_Access;
   type DemoGameMidletEventHandler_Access_Array_Access_Array_Access is access all DemoGameMidletEventHandler_Access_Array_Access_Array;

   type DemoGameMidletEventHandler is new BasicEventHandler with null record;
   gameKeyEventHandler : DemoGameMidletEventHandler_Access;

   procedure Initialize (This : in out DemoGameMidletEventHandler'Class);
   function Create return DemoGameMidletEventHandler_Access;
   function getInstance return DemoGameMidletEventHandler_Access;
   procedure process (This : in out DemoGameMidletEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);

end org.allbinary.game.midlet.DemoGameMidletEventHandler_Package;


