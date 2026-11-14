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
limited with org.allbinary.game.configuration.persistance.PersistanceStrings_Package;
package org.allbinary.game.configuration.persistance.PersistanceStrings_Package_References is
   type PersistanceStrings_Access is access all org.allbinary.game.configuration.persistance.PersistanceStrings_Package.PersistanceStrings'Class;
   type PersistanceStrings_Access_Array is array (Natural range <>) of PersistanceStrings_Access;
   type PersistanceStrings_Access_Array_Access is access all PersistanceStrings_Access_Array;
   type PersistanceStrings_Access_Array_Access_Array is array (Natural range <>) of PersistanceStrings_Access_Array_Access;
   type PersistanceStrings_Access_Array_Access_Array_Access is access all PersistanceStrings_Access_Array_Access_Array;
   type PersistanceStrings_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PersistanceStrings_Access_Array_Access;
   end record;
   function Java_Box (Value : PersistanceStrings_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PersistanceStrings_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PersistanceStrings_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PersistanceStrings_Access_Array_Access is (if Value /= null and then Value.all in PersistanceStrings_Access_Array_Object'Class then PersistanceStrings_Access_Array_Object'Class (Value.all).Value else null);
   type PersistanceStrings_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PersistanceStrings_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PersistanceStrings_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PersistanceStrings_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PersistanceStrings_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PersistanceStrings_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PersistanceStrings_Access_Array_Access_Array_Object'Class then PersistanceStrings_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.configuration.persistance.PersistanceStrings_Package_References;

with org.allbinary.game.configuration.persistance.PersistanceStrings_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.configuration.persistance.PersistanceStrings_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype PersistanceStrings_Access is org.allbinary.game.configuration.persistance.PersistanceStrings_Package_References.PersistanceStrings_Access;
   function "=" (Left, Right : PersistanceStrings_Access) return Boolean renames org.allbinary.game.configuration.persistance.PersistanceStrings_Package_References."=";
   subtype PersistanceStrings_Access_Array is org.allbinary.game.configuration.persistance.PersistanceStrings_Package_References.PersistanceStrings_Access_Array;
   function "=" (Left, Right : PersistanceStrings_Access_Array) return Boolean renames org.allbinary.game.configuration.persistance.PersistanceStrings_Package_References."=";
   subtype PersistanceStrings_Access_Array_Access is org.allbinary.game.configuration.persistance.PersistanceStrings_Package_References.PersistanceStrings_Access_Array_Access;
   function "=" (Left, Right : PersistanceStrings_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.persistance.PersistanceStrings_Package_References."=";
   function Java_Box (Value : PersistanceStrings_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.persistance.PersistanceStrings_Package_References.Java_Box;
   function Java_Unbox_PersistanceStrings_Access_Array (Value : access Java_Object'Class) return PersistanceStrings_Access_Array_Access renames org.allbinary.game.configuration.persistance.PersistanceStrings_Package_References.Java_Unbox_PersistanceStrings_Access_Array;
   subtype PersistanceStrings_Access_Array_Access_Array is org.allbinary.game.configuration.persistance.PersistanceStrings_Package_References.PersistanceStrings_Access_Array_Access_Array;
   function "=" (Left, Right : PersistanceStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.persistance.PersistanceStrings_Package_References."=";
   subtype PersistanceStrings_Access_Array_Access_Array_Access is org.allbinary.game.configuration.persistance.PersistanceStrings_Package_References.PersistanceStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PersistanceStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.persistance.PersistanceStrings_Package_References."=";
   function Java_Box (Value : PersistanceStrings_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.persistance.PersistanceStrings_Package_References.Java_Box;
   function Java_Unbox_PersistanceStrings_Access_Array_Access_Array (Value : access Java_Object'Class) return PersistanceStrings_Access_Array_Access_Array_Access renames org.allbinary.game.configuration.persistance.PersistanceStrings_Package_References.Java_Unbox_PersistanceStrings_Access_Array_Access_Array;

   type PersistanceStrings is new Java_Object with record
      SAVING : Unbounded_String;
      NUMBER_OF_RECORDS : Unbounded_String;
      LOADING_ID : Unbounded_String;
      LOAD_ALL : Unbounded_String;
      DELETING_WITH_ID : Unbounded_String;
      CLOSING_RECORDSTORE : Unbounded_String;
      NOT_SAVING : Unbounded_String;
      ERROR_LOADING : Unbounded_String;
      ERROR_LOADING_ID : Unbounded_String;
      ID : Unbounded_String;
      GAME_ACTION_INPUT : Unbounded_String;
   end record;
   instance : PersistanceStrings_Access;

   procedure Initialize (This : in out PersistanceStrings'Class);
   function Create return PersistanceStrings_Access;
   function getInstance return PersistanceStrings_Access;

end org.allbinary.game.configuration.persistance.PersistanceStrings_Package;


