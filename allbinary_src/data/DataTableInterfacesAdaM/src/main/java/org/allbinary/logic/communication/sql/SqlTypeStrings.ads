--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.communication.sql.SqlTypeStrings_Package is


   type SqlTypeStrings is tagged;
   type SqlTypeStrings_Access is access all SqlTypeStrings'Class;
   type SqlTypeStrings_Access_Array is array (Natural range <>) of SqlTypeStrings_Access;
   type SqlTypeStrings_Access_Array_Access is access all SqlTypeStrings_Access_Array;
   type SqlTypeStrings_Access_Array_Access_Array is array (Natural range <>) of SqlTypeStrings_Access_Array_Access;
   type SqlTypeStrings_Access_Array_Access_Array_Access is access all SqlTypeStrings_Access_Array_Access_Array;

   type SqlTypeStrings is new Java_Object with record
      CHAR_COLUMN : Unbounded_String;
      INT_COLUMN : Unbounded_String;
      MAX_SIZE : Unbounded_String;
      SIXTY_SIZE : Unbounded_String;
      NOT_NULL : Unbounded_String;
      ONE_SIZE : Unbounded_String;
      TWO_SIZE : Unbounded_String;
      THREE_SIZE : Unbounded_String;
      SIX_SIZE : Unbounded_String;
      ELEVEN_SIZE : Unbounded_String;
      TWELVE_SIZE : Unbounded_String;
      ONE_KB_CHAR_COLUMN : Unbounded_String;
      MAX_CHAR_COLUMN : Unbounded_String;
      MAX_CHAR_COLUMN_NOT_NULL : Unbounded_String;
      SIXTY_CHAR_COLUMN_NOT_NULL : Unbounded_String;
      ONE_CHAR_COLUMN_NOT_NULL : Unbounded_String;
      SIX_CHAR_COLUMN_NOT_NULL : Unbounded_String;
      TWELVE_CHAR_COLUMN_NOT_NULL : Unbounded_String;
      TWO_INT_NOT_NULL : Unbounded_String;
      THREE_INT_NOT_NULL : Unbounded_String;
      FOUR_INT_NOT_NULL : Unbounded_String;
      MAX_INT_NOT_NULL : Unbounded_String;
      MAX_INT_UNSIGNED : Unbounded_String;
      MAX_INT_UNSIGNED_NOT_NULL : Unbounded_String;
      MAX_BIG_INT_NOT_NULL : Unbounded_String;
      MAX_BIG_INT_UNSIGNED : Unbounded_String;
      MAX_BIG_INT_UNSIGNED_NOT_NULL : Unbounded_String;
      MAX_BIG_INT_UNSIGNED_AUTO_INCREMENT_NOT_NULL : Unbounded_String;
      LONG_BLOB : Unbounded_String;
      BLOB : Unbounded_String;
      BLOB_NOT_NULL : Unbounded_String;
   end record;
   instance : SqlTypeStrings_Access;

   procedure Initialize (This : in out SqlTypeStrings'Class);
   function Create return SqlTypeStrings_Access;
   function getInstance return SqlTypeStrings_Access;

end org.allbinary.logic.communication.sql.SqlTypeStrings_Package;


