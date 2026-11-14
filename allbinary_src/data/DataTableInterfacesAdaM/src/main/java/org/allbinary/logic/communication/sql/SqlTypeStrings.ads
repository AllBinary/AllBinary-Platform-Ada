--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.logic.communication.sql.SqlTypeStrings_Package;
package org.allbinary.logic.communication.sql.SqlTypeStrings_Package_References is
   type SqlTypeStrings_Access is access all org.allbinary.logic.communication.sql.SqlTypeStrings_Package.SqlTypeStrings'Class;
   type SqlTypeStrings_Access_Array is array (Natural range <>) of SqlTypeStrings_Access;
   type SqlTypeStrings_Access_Array_Access is access all SqlTypeStrings_Access_Array;
   type SqlTypeStrings_Access_Array_Access_Array is array (Natural range <>) of SqlTypeStrings_Access_Array_Access;
   type SqlTypeStrings_Access_Array_Access_Array_Access is access all SqlTypeStrings_Access_Array_Access_Array;
   type SqlTypeStrings_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SqlTypeStrings_Access_Array_Access;
   end record;
   function Java_Box (Value : SqlTypeStrings_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SqlTypeStrings_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SqlTypeStrings_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SqlTypeStrings_Access_Array_Access is (if Value /= null and then Value.all in SqlTypeStrings_Access_Array_Object'Class then SqlTypeStrings_Access_Array_Object'Class (Value.all).Value else null);
   type SqlTypeStrings_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SqlTypeStrings_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SqlTypeStrings_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SqlTypeStrings_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SqlTypeStrings_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SqlTypeStrings_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SqlTypeStrings_Access_Array_Access_Array_Object'Class then SqlTypeStrings_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.sql.SqlTypeStrings_Package_References;

with org.allbinary.logic.communication.sql.SqlTypeStrings_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.communication.sql.SqlTypeStrings_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype SqlTypeStrings_Access is org.allbinary.logic.communication.sql.SqlTypeStrings_Package_References.SqlTypeStrings_Access;
   function "=" (Left, Right : SqlTypeStrings_Access) return Boolean renames org.allbinary.logic.communication.sql.SqlTypeStrings_Package_References."=";
   subtype SqlTypeStrings_Access_Array is org.allbinary.logic.communication.sql.SqlTypeStrings_Package_References.SqlTypeStrings_Access_Array;
   function "=" (Left, Right : SqlTypeStrings_Access_Array) return Boolean renames org.allbinary.logic.communication.sql.SqlTypeStrings_Package_References."=";
   subtype SqlTypeStrings_Access_Array_Access is org.allbinary.logic.communication.sql.SqlTypeStrings_Package_References.SqlTypeStrings_Access_Array_Access;
   function "=" (Left, Right : SqlTypeStrings_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.sql.SqlTypeStrings_Package_References."=";
   function Java_Box (Value : SqlTypeStrings_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.sql.SqlTypeStrings_Package_References.Java_Box;
   function Java_Unbox_SqlTypeStrings_Access_Array (Value : access Java_Object'Class) return SqlTypeStrings_Access_Array_Access renames org.allbinary.logic.communication.sql.SqlTypeStrings_Package_References.Java_Unbox_SqlTypeStrings_Access_Array;
   subtype SqlTypeStrings_Access_Array_Access_Array is org.allbinary.logic.communication.sql.SqlTypeStrings_Package_References.SqlTypeStrings_Access_Array_Access_Array;
   function "=" (Left, Right : SqlTypeStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.sql.SqlTypeStrings_Package_References."=";
   subtype SqlTypeStrings_Access_Array_Access_Array_Access is org.allbinary.logic.communication.sql.SqlTypeStrings_Package_References.SqlTypeStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SqlTypeStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.sql.SqlTypeStrings_Package_References."=";
   function Java_Box (Value : SqlTypeStrings_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.sql.SqlTypeStrings_Package_References.Java_Box;
   function Java_Unbox_SqlTypeStrings_Access_Array_Access_Array (Value : access Java_Object'Class) return SqlTypeStrings_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.sql.SqlTypeStrings_Package_References.Java_Unbox_SqlTypeStrings_Access_Array_Access_Array;

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


