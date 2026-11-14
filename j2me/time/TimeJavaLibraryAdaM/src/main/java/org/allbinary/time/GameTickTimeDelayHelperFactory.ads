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
limited with org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
package org.allbinary.time.GameTickTimeDelayHelperFactory_Package_References is
   type GameTickTimeDelayHelperFactory_Access is access all org.allbinary.time.GameTickTimeDelayHelperFactory_Package.GameTickTimeDelayHelperFactory'Class;
   type GameTickTimeDelayHelperFactory_Access_Array is array (Natural range <>) of GameTickTimeDelayHelperFactory_Access;
   type GameTickTimeDelayHelperFactory_Access_Array_Access is access all GameTickTimeDelayHelperFactory_Access_Array;
   type GameTickTimeDelayHelperFactory_Access_Array_Access_Array is array (Natural range <>) of GameTickTimeDelayHelperFactory_Access_Array_Access;
   type GameTickTimeDelayHelperFactory_Access_Array_Access_Array_Access is access all GameTickTimeDelayHelperFactory_Access_Array_Access_Array;
   type GameTickTimeDelayHelperFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameTickTimeDelayHelperFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : GameTickTimeDelayHelperFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameTickTimeDelayHelperFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameTickTimeDelayHelperFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameTickTimeDelayHelperFactory_Access_Array_Access is (if Value /= null and then Value.all in GameTickTimeDelayHelperFactory_Access_Array_Object'Class then GameTickTimeDelayHelperFactory_Access_Array_Object'Class (Value.all).Value else null);
   type GameTickTimeDelayHelperFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameTickTimeDelayHelperFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameTickTimeDelayHelperFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameTickTimeDelayHelperFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameTickTimeDelayHelperFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameTickTimeDelayHelperFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameTickTimeDelayHelperFactory_Access_Array_Access_Array_Object'Class then GameTickTimeDelayHelperFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.time.GameTickTimeDelayHelperFactory_Package_References;

with org.allbinary.time.GameTickTimeDelayHelperFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.time.GameTickTimeDelayHelper_Package;
with org.allbinary.time.GameTickTimeDelayHelper_Package_References;

package org.allbinary.time.GameTickTimeDelayHelperFactory_Package is

   package Reference_Types is
   subtype GameTickTimeDelayHelper_Access is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access;
   use type GameTickTimeDelayHelper_Access;
   subtype GameTickTimeDelayHelper_Access_Array is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array;
   use type GameTickTimeDelayHelper_Access_Array;
   subtype GameTickTimeDelayHelper_Access_Array_Access is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array_Access;
   use type GameTickTimeDelayHelper_Access_Array_Access;
   subtype GameTickTimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array_Access_Array;
   use type GameTickTimeDelayHelper_Access_Array_Access_Array;
   subtype GameTickTimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array_Access_Array_Access;
   use type GameTickTimeDelayHelper_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GameTickTimeDelayHelperFactory_Access is org.allbinary.time.GameTickTimeDelayHelperFactory_Package_References.GameTickTimeDelayHelperFactory_Access;
   function "=" (Left, Right : GameTickTimeDelayHelperFactory_Access) return Boolean renames org.allbinary.time.GameTickTimeDelayHelperFactory_Package_References."=";
   subtype GameTickTimeDelayHelperFactory_Access_Array is org.allbinary.time.GameTickTimeDelayHelperFactory_Package_References.GameTickTimeDelayHelperFactory_Access_Array;
   function "=" (Left, Right : GameTickTimeDelayHelperFactory_Access_Array) return Boolean renames org.allbinary.time.GameTickTimeDelayHelperFactory_Package_References."=";
   subtype GameTickTimeDelayHelperFactory_Access_Array_Access is org.allbinary.time.GameTickTimeDelayHelperFactory_Package_References.GameTickTimeDelayHelperFactory_Access_Array_Access;
   function "=" (Left, Right : GameTickTimeDelayHelperFactory_Access_Array_Access) return Boolean renames org.allbinary.time.GameTickTimeDelayHelperFactory_Package_References."=";
   function Java_Box (Value : GameTickTimeDelayHelperFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.time.GameTickTimeDelayHelperFactory_Package_References.Java_Box;
   function Java_Unbox_GameTickTimeDelayHelperFactory_Access_Array (Value : access Java_Object'Class) return GameTickTimeDelayHelperFactory_Access_Array_Access renames org.allbinary.time.GameTickTimeDelayHelperFactory_Package_References.Java_Unbox_GameTickTimeDelayHelperFactory_Access_Array;
   subtype GameTickTimeDelayHelperFactory_Access_Array_Access_Array is org.allbinary.time.GameTickTimeDelayHelperFactory_Package_References.GameTickTimeDelayHelperFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GameTickTimeDelayHelperFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.time.GameTickTimeDelayHelperFactory_Package_References."=";
   subtype GameTickTimeDelayHelperFactory_Access_Array_Access_Array_Access is org.allbinary.time.GameTickTimeDelayHelperFactory_Package_References.GameTickTimeDelayHelperFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameTickTimeDelayHelperFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.time.GameTickTimeDelayHelperFactory_Package_References."=";
   function Java_Box (Value : GameTickTimeDelayHelperFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.time.GameTickTimeDelayHelperFactory_Package_References.Java_Box;
   function Java_Unbox_GameTickTimeDelayHelperFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return GameTickTimeDelayHelperFactory_Access_Array_Access_Array_Access renames org.allbinary.time.GameTickTimeDelayHelperFactory_Package_References.Java_Unbox_GameTickTimeDelayHelperFactory_Access_Array_Access_Array;

   type GameTickTimeDelayHelperFactory is new Java_Object with null record;
   instance : GameTickTimeDelayHelper_Access;

   procedure Initialize (This : in out GameTickTimeDelayHelperFactory'Class);
   function Create return GameTickTimeDelayHelperFactory_Access;
   function getInstance return GameTickTimeDelayHelper_Access;

end org.allbinary.time.GameTickTimeDelayHelperFactory_Package;


