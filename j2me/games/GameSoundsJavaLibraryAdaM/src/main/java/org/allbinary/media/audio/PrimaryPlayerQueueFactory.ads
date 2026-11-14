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
limited with org.allbinary.media.audio.PrimaryPlayerQueueFactory_Package;
package org.allbinary.media.audio.PrimaryPlayerQueueFactory_Package_References is
   type PrimaryPlayerQueueFactory_Access is access all org.allbinary.media.audio.PrimaryPlayerQueueFactory_Package.PrimaryPlayerQueueFactory'Class;
   type PrimaryPlayerQueueFactory_Access_Array is array (Natural range <>) of PrimaryPlayerQueueFactory_Access;
   type PrimaryPlayerQueueFactory_Access_Array_Access is access all PrimaryPlayerQueueFactory_Access_Array;
   type PrimaryPlayerQueueFactory_Access_Array_Access_Array is array (Natural range <>) of PrimaryPlayerQueueFactory_Access_Array_Access;
   type PrimaryPlayerQueueFactory_Access_Array_Access_Array_Access is access all PrimaryPlayerQueueFactory_Access_Array_Access_Array;
   type PrimaryPlayerQueueFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PrimaryPlayerQueueFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : PrimaryPlayerQueueFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PrimaryPlayerQueueFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PrimaryPlayerQueueFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PrimaryPlayerQueueFactory_Access_Array_Access is (if Value /= null and then Value.all in PrimaryPlayerQueueFactory_Access_Array_Object'Class then PrimaryPlayerQueueFactory_Access_Array_Object'Class (Value.all).Value else null);
   type PrimaryPlayerQueueFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PrimaryPlayerQueueFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PrimaryPlayerQueueFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PrimaryPlayerQueueFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PrimaryPlayerQueueFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PrimaryPlayerQueueFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PrimaryPlayerQueueFactory_Access_Array_Access_Array_Object'Class then PrimaryPlayerQueueFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.audio.PrimaryPlayerQueueFactory_Package_References;

with org.allbinary.media.audio.PrimaryPlayerQueueFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.media.audio.PlayerQueue_Package;
with org.allbinary.media.audio.PlayerQueue_Package_References;

package org.allbinary.media.audio.PrimaryPlayerQueueFactory_Package is

   package Reference_Types is
   subtype PlayerQueue_Access is org.allbinary.media.audio.PlayerQueue_Package_References.PlayerQueue_Access;
   use type PlayerQueue_Access;
   subtype PlayerQueue_Access_Array is org.allbinary.media.audio.PlayerQueue_Package_References.PlayerQueue_Access_Array;
   use type PlayerQueue_Access_Array;
   subtype PlayerQueue_Access_Array_Access is org.allbinary.media.audio.PlayerQueue_Package_References.PlayerQueue_Access_Array_Access;
   use type PlayerQueue_Access_Array_Access;
   subtype PlayerQueue_Access_Array_Access_Array is org.allbinary.media.audio.PlayerQueue_Package_References.PlayerQueue_Access_Array_Access_Array;
   use type PlayerQueue_Access_Array_Access_Array;
   subtype PlayerQueue_Access_Array_Access_Array_Access is org.allbinary.media.audio.PlayerQueue_Package_References.PlayerQueue_Access_Array_Access_Array_Access;
   use type PlayerQueue_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PrimaryPlayerQueueFactory_Access is org.allbinary.media.audio.PrimaryPlayerQueueFactory_Package_References.PrimaryPlayerQueueFactory_Access;
   function "=" (Left, Right : PrimaryPlayerQueueFactory_Access) return Boolean renames org.allbinary.media.audio.PrimaryPlayerQueueFactory_Package_References."=";
   subtype PrimaryPlayerQueueFactory_Access_Array is org.allbinary.media.audio.PrimaryPlayerQueueFactory_Package_References.PrimaryPlayerQueueFactory_Access_Array;
   function "=" (Left, Right : PrimaryPlayerQueueFactory_Access_Array) return Boolean renames org.allbinary.media.audio.PrimaryPlayerQueueFactory_Package_References."=";
   subtype PrimaryPlayerQueueFactory_Access_Array_Access is org.allbinary.media.audio.PrimaryPlayerQueueFactory_Package_References.PrimaryPlayerQueueFactory_Access_Array_Access;
   function "=" (Left, Right : PrimaryPlayerQueueFactory_Access_Array_Access) return Boolean renames org.allbinary.media.audio.PrimaryPlayerQueueFactory_Package_References."=";
   function Java_Box (Value : PrimaryPlayerQueueFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.PrimaryPlayerQueueFactory_Package_References.Java_Box;
   function Java_Unbox_PrimaryPlayerQueueFactory_Access_Array (Value : access Java_Object'Class) return PrimaryPlayerQueueFactory_Access_Array_Access renames org.allbinary.media.audio.PrimaryPlayerQueueFactory_Package_References.Java_Unbox_PrimaryPlayerQueueFactory_Access_Array;
   subtype PrimaryPlayerQueueFactory_Access_Array_Access_Array is org.allbinary.media.audio.PrimaryPlayerQueueFactory_Package_References.PrimaryPlayerQueueFactory_Access_Array_Access_Array;
   function "=" (Left, Right : PrimaryPlayerQueueFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.PrimaryPlayerQueueFactory_Package_References."=";
   subtype PrimaryPlayerQueueFactory_Access_Array_Access_Array_Access is org.allbinary.media.audio.PrimaryPlayerQueueFactory_Package_References.PrimaryPlayerQueueFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PrimaryPlayerQueueFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.PrimaryPlayerQueueFactory_Package_References."=";
   function Java_Box (Value : PrimaryPlayerQueueFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.PrimaryPlayerQueueFactory_Package_References.Java_Box;
   function Java_Unbox_PrimaryPlayerQueueFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return PrimaryPlayerQueueFactory_Access_Array_Access_Array_Access renames org.allbinary.media.audio.PrimaryPlayerQueueFactory_Package_References.Java_Unbox_PrimaryPlayerQueueFactory_Access_Array_Access_Array;

   type PrimaryPlayerQueueFactory is new Java_Object with null record;
   SINGLETON : PlayerQueue_Access;

   procedure Initialize (This : in out PrimaryPlayerQueueFactory'Class);
   function Create return PrimaryPlayerQueueFactory_Access;
   function getInstance return PlayerQueue_Access;

end org.allbinary.media.audio.PrimaryPlayerQueueFactory_Package;


