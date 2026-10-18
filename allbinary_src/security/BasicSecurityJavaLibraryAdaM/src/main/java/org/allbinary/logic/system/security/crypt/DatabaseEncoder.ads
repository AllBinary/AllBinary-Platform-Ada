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

package org.allbinary.logic.system.security.crypt.DatabaseEncoder_Package is


   type DatabaseEncoder is tagged;
   type DatabaseEncoder_Access is access all DatabaseEncoder'Class;
   type DatabaseEncoder_Access_Array is array (Natural range <>) of DatabaseEncoder_Access;
   type DatabaseEncoder_Access_Array_Access is access all DatabaseEncoder_Access_Array;
   type DatabaseEncoder_Access_Array_Access_Array is array (Natural range <>) of DatabaseEncoder_Access_Array_Access;
   type DatabaseEncoder_Access_Array_Access_Array_Access is access all DatabaseEncoder_Access_Array_Access_Array;

   type DatabaseEncoder is new Java_Object with null record;

   procedure Initialize (This : in out DatabaseEncoder'Class);
   function Create return DatabaseEncoder_Access;
   function encode (value : Short_Short_Integer_Array_Access) return Unbounded_String;
   procedure encode (value : Short_Short_Integer_Array_Access);
   function decode (value : Unbounded_String) return Short_Short_Integer_Array_Access;
   procedure decode (value : Unbounded_String);

end org.allbinary.logic.system.security.crypt.DatabaseEncoder_Package;


