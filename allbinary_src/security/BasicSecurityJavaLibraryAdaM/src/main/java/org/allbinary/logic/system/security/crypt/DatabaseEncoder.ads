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

with AllBinary_Java;
limited with org.allbinary.logic.system.security.crypt.DatabaseEncoder_Package;
package org.allbinary.logic.system.security.crypt.DatabaseEncoder_Package_References is
   type DatabaseEncoder_Access is access all org.allbinary.logic.system.security.crypt.DatabaseEncoder_Package.DatabaseEncoder'Class;
   type DatabaseEncoder_Access_Array is array (Natural range <>) of DatabaseEncoder_Access;
   type DatabaseEncoder_Access_Array_Access is access all DatabaseEncoder_Access_Array;
   type DatabaseEncoder_Access_Array_Access_Array is array (Natural range <>) of DatabaseEncoder_Access_Array_Access;
   type DatabaseEncoder_Access_Array_Access_Array_Access is access all DatabaseEncoder_Access_Array_Access_Array;
   type DatabaseEncoder_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DatabaseEncoder_Access_Array_Access;
   end record;
   function Java_Box (Value : DatabaseEncoder_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DatabaseEncoder_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DatabaseEncoder_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DatabaseEncoder_Access_Array_Access is (if Value /= null and then Value.all in DatabaseEncoder_Access_Array_Object'Class then DatabaseEncoder_Access_Array_Object'Class (Value.all).Value else null);
   type DatabaseEncoder_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DatabaseEncoder_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : DatabaseEncoder_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DatabaseEncoder_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DatabaseEncoder_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DatabaseEncoder_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in DatabaseEncoder_Access_Array_Access_Array_Object'Class then DatabaseEncoder_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.system.security.crypt.DatabaseEncoder_Package_References;

with org.allbinary.logic.system.security.crypt.DatabaseEncoder_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.system.security.crypt.DatabaseEncoder_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype DatabaseEncoder_Access is org.allbinary.logic.system.security.crypt.DatabaseEncoder_Package_References.DatabaseEncoder_Access;
   function "=" (Left, Right : DatabaseEncoder_Access) return Boolean renames org.allbinary.logic.system.security.crypt.DatabaseEncoder_Package_References."=";
   subtype DatabaseEncoder_Access_Array is org.allbinary.logic.system.security.crypt.DatabaseEncoder_Package_References.DatabaseEncoder_Access_Array;
   function "=" (Left, Right : DatabaseEncoder_Access_Array) return Boolean renames org.allbinary.logic.system.security.crypt.DatabaseEncoder_Package_References."=";
   subtype DatabaseEncoder_Access_Array_Access is org.allbinary.logic.system.security.crypt.DatabaseEncoder_Package_References.DatabaseEncoder_Access_Array_Access;
   function "=" (Left, Right : DatabaseEncoder_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.crypt.DatabaseEncoder_Package_References."=";
   function Java_Box (Value : DatabaseEncoder_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.security.crypt.DatabaseEncoder_Package_References.Java_Box;
   function Java_Unbox_DatabaseEncoder_Access_Array (Value : access Java_Object'Class) return DatabaseEncoder_Access_Array_Access renames org.allbinary.logic.system.security.crypt.DatabaseEncoder_Package_References.Java_Unbox_DatabaseEncoder_Access_Array;
   subtype DatabaseEncoder_Access_Array_Access_Array is org.allbinary.logic.system.security.crypt.DatabaseEncoder_Package_References.DatabaseEncoder_Access_Array_Access_Array;
   function "=" (Left, Right : DatabaseEncoder_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.crypt.DatabaseEncoder_Package_References."=";
   subtype DatabaseEncoder_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.crypt.DatabaseEncoder_Package_References.DatabaseEncoder_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DatabaseEncoder_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.crypt.DatabaseEncoder_Package_References."=";
   function Java_Box (Value : DatabaseEncoder_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.security.crypt.DatabaseEncoder_Package_References.Java_Box;
   function Java_Unbox_DatabaseEncoder_Access_Array_Access_Array (Value : access Java_Object'Class) return DatabaseEncoder_Access_Array_Access_Array_Access renames org.allbinary.logic.system.security.crypt.DatabaseEncoder_Package_References.Java_Unbox_DatabaseEncoder_Access_Array_Access_Array;

   type DatabaseEncoder is new Java_Object with null record;

   procedure Initialize (This : in out DatabaseEncoder'Class);
   function Create return DatabaseEncoder_Access;
   function encode (value : Short_Short_Integer_Array_Access) return Unbounded_String;
   procedure encode (value : Short_Short_Integer_Array_Access);
   function decode (value : Unbounded_String) return Short_Short_Integer_Array_Access;
   procedure decode (value : Unbounded_String);

end org.allbinary.logic.system.security.crypt.DatabaseEncoder_Package;


