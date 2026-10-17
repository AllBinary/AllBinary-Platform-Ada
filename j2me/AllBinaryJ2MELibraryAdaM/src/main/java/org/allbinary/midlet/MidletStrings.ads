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

package org.allbinary.midlet.MidletStrings_Package is


   type MidletStrings is tagged;
   type MidletStrings_Access is access all MidletStrings'Class;
   type MidletStrings_Access_Array is array (Natural range <>) of MidletStrings_Access;
   type MidletStrings_Access_Array_Access is access all MidletStrings_Access_Array;

   type MidletStrings is new Java_Object with record
      COMMAND_ACTION : Unbounded_String;
   end record;
   instance : MidletStrings_Access;

   procedure Initialize (This : in out MidletStrings'Class);
   function Create return MidletStrings_Access;
   function getInstance return MidletStrings_Access;
   procedure getInstance;

end org.allbinary.midlet.MidletStrings_Package;


