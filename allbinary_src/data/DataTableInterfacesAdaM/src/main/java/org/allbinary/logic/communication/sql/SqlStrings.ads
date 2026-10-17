--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package org.allbinary.logic.communication.sql.SqlStrings_Package is

   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;

   type SqlStrings is tagged;
   type SqlStrings_Access is access all SqlStrings'Class;
   type SqlStrings_Access_Array is array (Natural range <>) of SqlStrings_Access;
   type SqlStrings_Access_Array_Access is access all SqlStrings_Access_Array;

   type SqlStrings is new Java_Object with record
      CREATE_DATABASE : Unbounded_String;
      DROP_TABLE : Unbounded_String;
      CREATE_TABLE : Unbounded_String;
      START : Unbounded_String;
      SELECT_Id : Unbounded_String;
      FROM : Unbounded_String;
      SELECT_ALL : Unbounded_String;
      WHERE : Unbounded_String;
      AND_Id : Unbounded_String;
      UPDATE : Unbounded_String;
      SET : Unbounded_String;
      SELECT_ALL_FROM : Unbounded_String;
      DELETE : Unbounded_String;
      LIKE_QUOTE : Unbounded_String;
      INSERT_INTO : Unbounded_String;
      VALUES : Unbounded_String;
      ORDER_BY : Unbounded_String;
      COUNT : Unbounded_String;
      ASC : Unbounded_String;
      DESC : Unbounded_String;
      PRIMARY_KEY : Unbounded_String;
      END_Id : Unbounded_String;
      EQUAL_QUOTE : Unbounded_String;
      CLOSE_QUOTE : Unbounded_String;
      EQUAL_QUOTE_NO_SPACE : Unbounded_String;
      ESCAPE : Unbounded_String;
      DOUBLE_ESCAPE : Unbounded_String;
      MORE_THAN_QUOTE : Unbounded_String;
      LESS_THAN_QUOTE : Unbounded_String;
      SINGLE_QUOTE_COMMA_SEP : Unbounded_String;
      ID : Unbounded_String;
      SQL_STATEMENT_LABEL : Unbounded_String;
      COLUMN_VALUE : Unbounded_String;
      CREATE_RETURN : Unbounded_String;
      FIELD_VALUE : Unbounded_String;
   end record;
   instance : SqlStrings_Access;

   procedure Initialize (This : in out SqlStrings'Class);
   function Create return SqlStrings_Access;
   function getInstance return SqlStrings_Access;
   procedure getInstance;

end org.allbinary.logic.communication.sql.SqlStrings_Package;


