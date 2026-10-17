-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;

package org.allbinary.logic.util.event.NullEventListener_Package is


   type NullEventListener is tagged;
   type NullEventListener_Access is access all NullEventListener'Class;
   type NullEventListener_Access_Array is array (Natural range <>) of NullEventListener_Access;
   type NullEventListener_Access_Array_Access is access all NullEventListener_Access_Array;

   type NullEventListener is new EventListenerInterface with null record;
   NULL_EVENT_LISTENER : NullEventListener_Access;

   procedure Initialize (This : in out NullEventListener'Class);
   function Create return NullEventListener_Access;
   procedure onEvent (This : in out NullEventListener; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);

end org.allbinary.logic.util.event.NullEventListener_Package;


