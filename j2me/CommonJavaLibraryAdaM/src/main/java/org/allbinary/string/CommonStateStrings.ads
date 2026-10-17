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

package org.allbinary.string_Id.CommonStateStrings_Package is


   type CommonStateStrings is tagged;
   type CommonStateStrings_Access is access all CommonStateStrings'Class;
   type CommonStateStrings_Access_Array is array (Natural range <>) of CommonStateStrings_Access;
   type CommonStateStrings_Access_Array_Access is access all CommonStateStrings_Access_Array;

   type CommonStateStrings is new Java_Object with record
      CONTEXT : Unbounded_String;
      FINISH : Unbounded_String;
      CREATE : Unbounded_String;
      START : Unbounded_String;
      RESTART : Unbounded_String;
      RESUME : Unbounded_String;
      PAUSE : Unbounded_String;
      STOP : Unbounded_String;
      DESTROY : Unbounded_String;
      BIND : Unbounded_String;
      ON_SAVE_INSTANCE_STATE : Unbounded_String;
      ON_START_COMMAND : Unbounded_String;
   end record;
   instance : CommonStateStrings_Access;

   procedure Initialize (This : in out CommonStateStrings'Class);
   function Create return CommonStateStrings_Access;
   function getInstance return CommonStateStrings_Access;

end org.allbinary.string_Id.CommonStateStrings_Package;


