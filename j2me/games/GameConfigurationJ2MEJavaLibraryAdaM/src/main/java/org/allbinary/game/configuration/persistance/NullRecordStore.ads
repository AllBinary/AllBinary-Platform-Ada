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
limited with org.allbinary.game.configuration.persistance.NullRecordStore_Package;
package org.allbinary.game.configuration.persistance.NullRecordStore_Package_References is
   type NullRecordStore_Access is access all org.allbinary.game.configuration.persistance.NullRecordStore_Package.NullRecordStore'Class;
   type NullRecordStore_Access_Array is array (Natural range <>) of NullRecordStore_Access;
   type NullRecordStore_Access_Array_Access is access all NullRecordStore_Access_Array;
   type NullRecordStore_Access_Array_Access_Array is array (Natural range <>) of NullRecordStore_Access_Array_Access;
   type NullRecordStore_Access_Array_Access_Array_Access is access all NullRecordStore_Access_Array_Access_Array;
   type NullRecordStore_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullRecordStore_Access_Array_Access;
   end record;
   function Java_Box (Value : NullRecordStore_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullRecordStore_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullRecordStore_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullRecordStore_Access_Array_Access is (if Value /= null and then Value.all in NullRecordStore_Access_Array_Object'Class then NullRecordStore_Access_Array_Object'Class (Value.all).Value else null);
   type NullRecordStore_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullRecordStore_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NullRecordStore_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullRecordStore_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullRecordStore_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullRecordStore_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NullRecordStore_Access_Array_Access_Array_Object'Class then NullRecordStore_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.configuration.persistance.NullRecordStore_Package_References;

with org.allbinary.game.configuration.persistance.NullRecordStore_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with javax.microedition.rms.RecordStore_Package; use javax.microedition.rms.RecordStore_Package;

package org.allbinary.game.configuration.persistance.NullRecordStore_Package is

   package RecordStore_Package renames Standard.javax.microedition.rms.RecordStore_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype NullRecordStore_Access is org.allbinary.game.configuration.persistance.NullRecordStore_Package_References.NullRecordStore_Access;
   function "=" (Left, Right : NullRecordStore_Access) return Boolean renames org.allbinary.game.configuration.persistance.NullRecordStore_Package_References."=";
   subtype NullRecordStore_Access_Array is org.allbinary.game.configuration.persistance.NullRecordStore_Package_References.NullRecordStore_Access_Array;
   function "=" (Left, Right : NullRecordStore_Access_Array) return Boolean renames org.allbinary.game.configuration.persistance.NullRecordStore_Package_References."=";
   subtype NullRecordStore_Access_Array_Access is org.allbinary.game.configuration.persistance.NullRecordStore_Package_References.NullRecordStore_Access_Array_Access;
   function "=" (Left, Right : NullRecordStore_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.persistance.NullRecordStore_Package_References."=";
   function Java_Box (Value : NullRecordStore_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.persistance.NullRecordStore_Package_References.Java_Box;
   function Java_Unbox_NullRecordStore_Access_Array (Value : access Java_Object'Class) return NullRecordStore_Access_Array_Access renames org.allbinary.game.configuration.persistance.NullRecordStore_Package_References.Java_Unbox_NullRecordStore_Access_Array;
   subtype NullRecordStore_Access_Array_Access_Array is org.allbinary.game.configuration.persistance.NullRecordStore_Package_References.NullRecordStore_Access_Array_Access_Array;
   function "=" (Left, Right : NullRecordStore_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.persistance.NullRecordStore_Package_References."=";
   subtype NullRecordStore_Access_Array_Access_Array_Access is org.allbinary.game.configuration.persistance.NullRecordStore_Package_References.NullRecordStore_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullRecordStore_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.persistance.NullRecordStore_Package_References."=";
   function Java_Box (Value : NullRecordStore_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.persistance.NullRecordStore_Package_References.Java_Box;
   function Java_Unbox_NullRecordStore_Access_Array_Access_Array (Value : access Java_Object'Class) return NullRecordStore_Access_Array_Access_Array_Access renames org.allbinary.game.configuration.persistance.NullRecordStore_Package_References.Java_Unbox_NullRecordStore_Access_Array_Access_Array;

   type NullRecordStore is new RecordStore with null record;
   NULL_RECORD_STORE : NullRecordStore_Access;

   procedure Initialize (This : in out NullRecordStore'Class);
   function Create return NullRecordStore_Access;

end org.allbinary.game.configuration.persistance.NullRecordStore_Package;


