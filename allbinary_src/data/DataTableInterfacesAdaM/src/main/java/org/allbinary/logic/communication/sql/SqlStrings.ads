--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.logic.communication.sql.SqlStrings_Package;
package org.allbinary.logic.communication.sql.SqlStrings_Package_References is
   type SqlStrings_Access is access all org.allbinary.logic.communication.sql.SqlStrings_Package.SqlStrings'Class;
   type SqlStrings_Access_Array is array (Natural range <>) of SqlStrings_Access;
   type SqlStrings_Access_Array_Access is access all SqlStrings_Access_Array;
   type SqlStrings_Access_Array_Access_Array is array (Natural range <>) of SqlStrings_Access_Array_Access;
   type SqlStrings_Access_Array_Access_Array_Access is access all SqlStrings_Access_Array_Access_Array;
   type SqlStrings_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SqlStrings_Access_Array_Access;
   end record;
   function Java_Box (Value : SqlStrings_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SqlStrings_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SqlStrings_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SqlStrings_Access_Array_Access is (if Value /= null and then Value.all in SqlStrings_Access_Array_Object'Class then SqlStrings_Access_Array_Object'Class (Value.all).Value else null);
   type SqlStrings_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SqlStrings_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SqlStrings_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SqlStrings_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SqlStrings_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SqlStrings_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SqlStrings_Access_Array_Access_Array_Object'Class then SqlStrings_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.sql.SqlStrings_Package_References;

with org.allbinary.logic.communication.sql.SqlStrings_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.communication.sql.SqlStrings_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype SqlStrings_Access is org.allbinary.logic.communication.sql.SqlStrings_Package_References.SqlStrings_Access;
   function "=" (Left, Right : SqlStrings_Access) return Boolean renames org.allbinary.logic.communication.sql.SqlStrings_Package_References."=";
   subtype SqlStrings_Access_Array is org.allbinary.logic.communication.sql.SqlStrings_Package_References.SqlStrings_Access_Array;
   function "=" (Left, Right : SqlStrings_Access_Array) return Boolean renames org.allbinary.logic.communication.sql.SqlStrings_Package_References."=";
   subtype SqlStrings_Access_Array_Access is org.allbinary.logic.communication.sql.SqlStrings_Package_References.SqlStrings_Access_Array_Access;
   function "=" (Left, Right : SqlStrings_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.sql.SqlStrings_Package_References."=";
   function Java_Box (Value : SqlStrings_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.sql.SqlStrings_Package_References.Java_Box;
   function Java_Unbox_SqlStrings_Access_Array (Value : access Java_Object'Class) return SqlStrings_Access_Array_Access renames org.allbinary.logic.communication.sql.SqlStrings_Package_References.Java_Unbox_SqlStrings_Access_Array;
   subtype SqlStrings_Access_Array_Access_Array is org.allbinary.logic.communication.sql.SqlStrings_Package_References.SqlStrings_Access_Array_Access_Array;
   function "=" (Left, Right : SqlStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.sql.SqlStrings_Package_References."=";
   subtype SqlStrings_Access_Array_Access_Array_Access is org.allbinary.logic.communication.sql.SqlStrings_Package_References.SqlStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SqlStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.sql.SqlStrings_Package_References."=";
   function Java_Box (Value : SqlStrings_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.sql.SqlStrings_Package_References.Java_Box;
   function Java_Unbox_SqlStrings_Access_Array_Access_Array (Value : access Java_Object'Class) return SqlStrings_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.sql.SqlStrings_Package_References.Java_Unbox_SqlStrings_Access_Array_Access_Array;

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

end org.allbinary.logic.communication.sql.SqlStrings_Package;


