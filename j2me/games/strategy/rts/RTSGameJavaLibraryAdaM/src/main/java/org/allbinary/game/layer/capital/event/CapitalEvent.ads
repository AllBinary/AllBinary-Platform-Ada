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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;

package org.allbinary.game.layer.capital.event.CapitalEvent_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;

   type CapitalEvent is tagged;
   type CapitalEvent_Access is access all CapitalEvent'Class;
   type CapitalEvent_Access_Array is array (Natural range <>) of CapitalEvent_Access;
   type CapitalEvent_Access_Array_Access is access all CapitalEvent_Access_Array;
   type CapitalEvent_Access_Array_Access_Array is array (Natural range <>) of CapitalEvent_Access_Array_Access;
   type CapitalEvent_Access_Array_Access_Array_Access is access all CapitalEvent_Access_Array_Access_Array;

   type CapitalEvent is new AllBinaryEventObject with record
      value : Integer;
   end record;

   procedure Initialize (This : in out CapitalEvent'Class; anyType_Param : access Java_Object'Class);
   function Create (anyType_Param : access Java_Object'Class) return CapitalEvent_Access;
   function toString (This : in out CapitalEvent) return Unbounded_String;
   function getValue (This : in out CapitalEvent) return Integer;
   procedure setValue (This : in out CapitalEvent; value : Integer);

end org.allbinary.game.layer.capital.event.CapitalEvent_Package;


