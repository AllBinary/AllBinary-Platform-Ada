-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
limited with org.allbinary.game.configuration.persistance.NullRecordComparator_Package;
package org.allbinary.game.configuration.persistance.NullRecordComparator_Package_References is
   type NullRecordComparator_Access is access all org.allbinary.game.configuration.persistance.NullRecordComparator_Package.NullRecordComparator'Class;
   type NullRecordComparator_Access_Array is array (Natural range <>) of NullRecordComparator_Access;
   type NullRecordComparator_Access_Array_Access is access all NullRecordComparator_Access_Array;
   type NullRecordComparator_Access_Array_Access_Array is array (Natural range <>) of NullRecordComparator_Access_Array_Access;
   type NullRecordComparator_Access_Array_Access_Array_Access is access all NullRecordComparator_Access_Array_Access_Array;
   type NullRecordComparator_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullRecordComparator_Access_Array_Access;
   end record;
   function Java_Box (Value : NullRecordComparator_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullRecordComparator_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullRecordComparator_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullRecordComparator_Access_Array_Access is (if Value /= null and then Value.all in NullRecordComparator_Access_Array_Object'Class then NullRecordComparator_Access_Array_Object'Class (Value.all).Value else null);
   type NullRecordComparator_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullRecordComparator_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NullRecordComparator_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullRecordComparator_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullRecordComparator_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullRecordComparator_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NullRecordComparator_Access_Array_Access_Array_Object'Class then NullRecordComparator_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.configuration.persistance.NullRecordComparator_Package_References;

with org.allbinary.game.configuration.persistance.NullRecordComparator_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with javax.microedition.rms.RecordComparator_Package; use javax.microedition.rms.RecordComparator_Package;

package org.allbinary.game.configuration.persistance.NullRecordComparator_Package is

   package RecordComparator_Package renames Standard.javax.microedition.rms.RecordComparator_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype NullRecordComparator_Access is org.allbinary.game.configuration.persistance.NullRecordComparator_Package_References.NullRecordComparator_Access;
   function "=" (Left, Right : NullRecordComparator_Access) return Boolean renames org.allbinary.game.configuration.persistance.NullRecordComparator_Package_References."=";
   subtype NullRecordComparator_Access_Array is org.allbinary.game.configuration.persistance.NullRecordComparator_Package_References.NullRecordComparator_Access_Array;
   function "=" (Left, Right : NullRecordComparator_Access_Array) return Boolean renames org.allbinary.game.configuration.persistance.NullRecordComparator_Package_References."=";
   subtype NullRecordComparator_Access_Array_Access is org.allbinary.game.configuration.persistance.NullRecordComparator_Package_References.NullRecordComparator_Access_Array_Access;
   function "=" (Left, Right : NullRecordComparator_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.persistance.NullRecordComparator_Package_References."=";
   function Java_Box (Value : NullRecordComparator_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.persistance.NullRecordComparator_Package_References.Java_Box;
   function Java_Unbox_NullRecordComparator_Access_Array (Value : access Java_Object'Class) return NullRecordComparator_Access_Array_Access renames org.allbinary.game.configuration.persistance.NullRecordComparator_Package_References.Java_Unbox_NullRecordComparator_Access_Array;
   subtype NullRecordComparator_Access_Array_Access_Array is org.allbinary.game.configuration.persistance.NullRecordComparator_Package_References.NullRecordComparator_Access_Array_Access_Array;
   function "=" (Left, Right : NullRecordComparator_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.persistance.NullRecordComparator_Package_References."=";
   subtype NullRecordComparator_Access_Array_Access_Array_Access is org.allbinary.game.configuration.persistance.NullRecordComparator_Package_References.NullRecordComparator_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullRecordComparator_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.persistance.NullRecordComparator_Package_References."=";
   function Java_Box (Value : NullRecordComparator_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.persistance.NullRecordComparator_Package_References.Java_Box;
   function Java_Unbox_NullRecordComparator_Access_Array_Access_Array (Value : access Java_Object'Class) return NullRecordComparator_Access_Array_Access_Array_Access renames org.allbinary.game.configuration.persistance.NullRecordComparator_Package_References.Java_Unbox_NullRecordComparator_Access_Array_Access_Array;

   type NullRecordComparator is new Java_Object and RecordComparator with null record;
   NULL_RECORD_COMPARATOR : NullRecordComparator_Access;

   procedure Initialize (This : in out NullRecordComparator'Class);
   function Create return NullRecordComparator_Access;
   function compare (This : in out NullRecordComparator; rec1 : Short_Short_Integer_Array_Access; rec2 : Short_Short_Integer_Array_Access) return Integer;
   procedure compare (This : in out NullRecordComparator; rec1 : Short_Short_Integer_Array_Access; rec2 : Short_Short_Integer_Array_Access);

end org.allbinary.game.configuration.persistance.NullRecordComparator_Package;


