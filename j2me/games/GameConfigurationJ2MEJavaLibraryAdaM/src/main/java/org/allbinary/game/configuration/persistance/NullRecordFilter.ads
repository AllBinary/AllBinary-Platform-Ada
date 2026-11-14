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
limited with org.allbinary.game.configuration.persistance.NullRecordFilter_Package;
package org.allbinary.game.configuration.persistance.NullRecordFilter_Package_References is
   type NullRecordFilter_Access is access all org.allbinary.game.configuration.persistance.NullRecordFilter_Package.NullRecordFilter'Class;
   type NullRecordFilter_Access_Array is array (Natural range <>) of NullRecordFilter_Access;
   type NullRecordFilter_Access_Array_Access is access all NullRecordFilter_Access_Array;
   type NullRecordFilter_Access_Array_Access_Array is array (Natural range <>) of NullRecordFilter_Access_Array_Access;
   type NullRecordFilter_Access_Array_Access_Array_Access is access all NullRecordFilter_Access_Array_Access_Array;
   type NullRecordFilter_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullRecordFilter_Access_Array_Access;
   end record;
   function Java_Box (Value : NullRecordFilter_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullRecordFilter_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullRecordFilter_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullRecordFilter_Access_Array_Access is (if Value /= null and then Value.all in NullRecordFilter_Access_Array_Object'Class then NullRecordFilter_Access_Array_Object'Class (Value.all).Value else null);
   type NullRecordFilter_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullRecordFilter_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NullRecordFilter_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullRecordFilter_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullRecordFilter_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullRecordFilter_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NullRecordFilter_Access_Array_Access_Array_Object'Class then NullRecordFilter_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.configuration.persistance.NullRecordFilter_Package_References;

with org.allbinary.game.configuration.persistance.NullRecordFilter_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with javax.microedition.rms.RecordFilter_Package; use javax.microedition.rms.RecordFilter_Package;

package org.allbinary.game.configuration.persistance.NullRecordFilter_Package is

   package RecordFilter_Package renames Standard.javax.microedition.rms.RecordFilter_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype NullRecordFilter_Access is org.allbinary.game.configuration.persistance.NullRecordFilter_Package_References.NullRecordFilter_Access;
   function "=" (Left, Right : NullRecordFilter_Access) return Boolean renames org.allbinary.game.configuration.persistance.NullRecordFilter_Package_References."=";
   subtype NullRecordFilter_Access_Array is org.allbinary.game.configuration.persistance.NullRecordFilter_Package_References.NullRecordFilter_Access_Array;
   function "=" (Left, Right : NullRecordFilter_Access_Array) return Boolean renames org.allbinary.game.configuration.persistance.NullRecordFilter_Package_References."=";
   subtype NullRecordFilter_Access_Array_Access is org.allbinary.game.configuration.persistance.NullRecordFilter_Package_References.NullRecordFilter_Access_Array_Access;
   function "=" (Left, Right : NullRecordFilter_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.persistance.NullRecordFilter_Package_References."=";
   function Java_Box (Value : NullRecordFilter_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.persistance.NullRecordFilter_Package_References.Java_Box;
   function Java_Unbox_NullRecordFilter_Access_Array (Value : access Java_Object'Class) return NullRecordFilter_Access_Array_Access renames org.allbinary.game.configuration.persistance.NullRecordFilter_Package_References.Java_Unbox_NullRecordFilter_Access_Array;
   subtype NullRecordFilter_Access_Array_Access_Array is org.allbinary.game.configuration.persistance.NullRecordFilter_Package_References.NullRecordFilter_Access_Array_Access_Array;
   function "=" (Left, Right : NullRecordFilter_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.persistance.NullRecordFilter_Package_References."=";
   subtype NullRecordFilter_Access_Array_Access_Array_Access is org.allbinary.game.configuration.persistance.NullRecordFilter_Package_References.NullRecordFilter_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullRecordFilter_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.persistance.NullRecordFilter_Package_References."=";
   function Java_Box (Value : NullRecordFilter_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.persistance.NullRecordFilter_Package_References.Java_Box;
   function Java_Unbox_NullRecordFilter_Access_Array_Access_Array (Value : access Java_Object'Class) return NullRecordFilter_Access_Array_Access_Array_Access renames org.allbinary.game.configuration.persistance.NullRecordFilter_Package_References.Java_Unbox_NullRecordFilter_Access_Array_Access_Array;

   type NullRecordFilter is new Java_Object and RecordFilter with null record;
   NULL_RECORD_FILTER : NullRecordFilter_Access;

   procedure Initialize (This : in out NullRecordFilter'Class);
   function Create return NullRecordFilter_Access;
   function matches (This : in out NullRecordFilter; candidate : Short_Short_Integer_Array_Access) return Boolean;
   procedure matches (This : in out NullRecordFilter; candidate : Short_Short_Integer_Array_Access);

end org.allbinary.game.configuration.persistance.NullRecordFilter_Package;


