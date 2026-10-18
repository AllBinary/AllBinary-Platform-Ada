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

package org.allbinary.business.entry_Id.EntryData_Package is


   type EntryData is tagged;
   type EntryData_Access is access all EntryData'Class;
   type EntryData_Access_Array is array (Natural range <>) of EntryData_Access;
   type EntryData_Access_Array_Access is access all EntryData_Access_Array;
   type EntryData_Access_Array_Access_Array is array (Natural range <>) of EntryData_Access_Array_Access;
   type EntryData_Access_Array_Access_Array_Access is access all EntryData_Access_Array_Access_Array;

   type EntryData is new Java_Object with record
      ID : Unbounded_String;
      ENCRYPTION : Unbounded_String;
      TIMECREATED : Unbounded_String;
      LASTMODIFIED : Unbounded_String;
      DEFAULT : Unbounded_String;
      SPECIAL : Unbounded_String;
      ENABLE : Unbounded_String;
      YES : Unbounded_String;
      NO : Unbounded_String;
   end record;
   instance : EntryData_Access;

   procedure Initialize (This : in out EntryData'Class);
   function Create return EntryData_Access;
   function getInstance return EntryData_Access;

end org.allbinary.business.entry_Id.EntryData_Package;


