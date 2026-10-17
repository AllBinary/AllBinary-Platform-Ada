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
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package; use org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package; use org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;

package org.allbinary.graphics.displayable.event.LastDisplayChangeEventHandler_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;

   type LastDisplayChangeEventHandler is tagged;
   type LastDisplayChangeEventHandler_Access is access all LastDisplayChangeEventHandler'Class;
   type LastDisplayChangeEventHandler_Access_Array is array (Natural range <>) of LastDisplayChangeEventHandler_Access;
   type LastDisplayChangeEventHandler_Access_Array_Access is access all LastDisplayChangeEventHandler_Access_Array;

   type LastDisplayChangeEventHandler is new BasicEventHandler with null record;
   SINGLETON : LastDisplayChangeEventHandler_Access;

   procedure Initialize (This : in out LastDisplayChangeEventHandler'Class);
   function Create return LastDisplayChangeEventHandler_Access;
   function getInstance return LastDisplayChangeEventHandler_Access;
   procedure process (This : in out LastDisplayChangeEventHandler; eventObject_Param : access AllBinaryEventObject'Class; eventListenerInterface_Param : access EventListenerInterface'Class);

end org.allbinary.graphics.displayable.event.LastDisplayChangeEventHandler_Package;


