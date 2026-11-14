-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
limited with org.allbinary.time.GameTickTimeDelayHelper_Package;
package org.allbinary.time.GameTickTimeDelayHelper_Package_References is
   type GameTickTimeDelayHelper_Access is access all org.allbinary.time.GameTickTimeDelayHelper_Package.GameTickTimeDelayHelper'Class;
   type GameTickTimeDelayHelper_Access_Array is array (Natural range <>) of GameTickTimeDelayHelper_Access;
   type GameTickTimeDelayHelper_Access_Array_Access is access all GameTickTimeDelayHelper_Access_Array;
   type GameTickTimeDelayHelper_Access_Array_Access_Array is array (Natural range <>) of GameTickTimeDelayHelper_Access_Array_Access;
   type GameTickTimeDelayHelper_Access_Array_Access_Array_Access is access all GameTickTimeDelayHelper_Access_Array_Access_Array;
   type GameTickTimeDelayHelper_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameTickTimeDelayHelper_Access_Array_Access;
   end record;
   function Java_Box (Value : GameTickTimeDelayHelper_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameTickTimeDelayHelper_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameTickTimeDelayHelper_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameTickTimeDelayHelper_Access_Array_Access is (if Value /= null and then Value.all in GameTickTimeDelayHelper_Access_Array_Object'Class then GameTickTimeDelayHelper_Access_Array_Object'Class (Value.all).Value else null);
   type GameTickTimeDelayHelper_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameTickTimeDelayHelper_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameTickTimeDelayHelper_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameTickTimeDelayHelper_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameTickTimeDelayHelper_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameTickTimeDelayHelper_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameTickTimeDelayHelper_Access_Array_Access_Array_Object'Class then GameTickTimeDelayHelper_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.time.GameTickTimeDelayHelper_Package_References;

with org.allbinary.time.GameTickTimeDelayHelper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.time.GameTickTimeDelayHelper_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype GameTickTimeDelayHelper_Access is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   subtype GameTickTimeDelayHelper_Access_Array is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access_Array) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   subtype GameTickTimeDelayHelper_Access_Array_Access is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array_Access;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access_Array_Access) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   function Java_Box (Value : GameTickTimeDelayHelper_Access_Array_Access) return Java_Object_Access renames org.allbinary.time.GameTickTimeDelayHelper_Package_References.Java_Box;
   function Java_Unbox_GameTickTimeDelayHelper_Access_Array (Value : access Java_Object'Class) return GameTickTimeDelayHelper_Access_Array_Access renames org.allbinary.time.GameTickTimeDelayHelper_Package_References.Java_Unbox_GameTickTimeDelayHelper_Access_Array;
   subtype GameTickTimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array_Access_Array;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   subtype GameTickTimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   function Java_Box (Value : GameTickTimeDelayHelper_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.time.GameTickTimeDelayHelper_Package_References.Java_Box;
   function Java_Unbox_GameTickTimeDelayHelper_Access_Array_Access_Array (Value : access Java_Object'Class) return GameTickTimeDelayHelper_Access_Array_Access_Array_Access renames org.allbinary.time.GameTickTimeDelayHelper_Package_References.Java_Unbox_GameTickTimeDelayHelper_Access_Array_Access_Array;

   type GameTickTimeDelayHelper is new Java_Object with record
      timeDelta : Long_Long_Integer;
      startTime : Long_Long_Integer;
      lastStartTime : Long_Long_Integer;
   end record;

   procedure Initialize (This : in out GameTickTimeDelayHelper'Class; startTime : Long_Long_Integer);
   function Create (startTime : Long_Long_Integer) return GameTickTimeDelayHelper_Access;
   function setStartTime (This : in out GameTickTimeDelayHelper) return Long_Long_Integer;
   procedure loop_Id (This : in out GameTickTimeDelayHelper);
   function getTimeFromStart (This : in out GameTickTimeDelayHelper) return Long_Long_Integer;

end org.allbinary.time.GameTickTimeDelayHelper_Package;


