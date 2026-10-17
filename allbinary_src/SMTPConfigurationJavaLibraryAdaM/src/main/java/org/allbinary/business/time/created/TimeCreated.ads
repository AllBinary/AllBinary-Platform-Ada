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
with org.allbinary.business.time.Time_Package; use org.allbinary.business.time.Time_Package;

package org.allbinary.business.time.created.TimeCreated_Package is

   package Time_Package renames Standard.org.allbinary.business.time.Time_Package;

   type TimeCreated is tagged;
   type TimeCreated_Access is access all TimeCreated'Class;
   type TimeCreated_Access_Array is array (Natural range <>) of TimeCreated_Access;
   type TimeCreated_Access_Array_Access is access all TimeCreated_Access_Array;

   type TimeCreated is new Time with null record;

   procedure Initialize (This : in out TimeCreated'Class; time : Unbounded_String);
   function Create (time : Unbounded_String) return TimeCreated_Access;
   procedure Initialize (This : in out TimeCreated'Class; time : Long_Long_Integer);
   function Create (time : Long_Long_Integer) return TimeCreated_Access;

end org.allbinary.business.time.created.TimeCreated_Package;


