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

package org.allbinary.logic.util.event.EventStrings_Package is


   type EventStrings is tagged;
   type EventStrings_Access is access all EventStrings'Class;
   type EventStrings_Access_Array is array (Natural range <>) of EventStrings_Access;
   type EventStrings_Access_Array_Access is access all EventStrings_Access_Array;
   type EventStrings_Access_Array_Access_Array is array (Natural range <>) of EventStrings_Access_Array_Access;
   type EventStrings_Access_Array_Access_Array_Access is access all EventStrings_Access_Array_Access_Array;

   type EventStrings is new Java_Object with record
      PERFORMANCE_MESSAGE : Unbounded_String;
      TOTAL_LISTENERS : Unbounded_String;
      LISTENER_LABEL : Unbounded_String;
      FIRE_EVENT : Unbounded_String;
   end record;
   instance : EventStrings_Access;

   procedure Initialize (This : in out EventStrings'Class);
   function Create return EventStrings_Access;
   function getInstance return EventStrings_Access;

end org.allbinary.logic.util.event.EventStrings_Package;


