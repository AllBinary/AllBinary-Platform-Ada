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
limited with org.allbinary.media.audio.GameYouLoseSound_Package;
package org.allbinary.media.audio.GameYouLoseSound_Package_References is
   type GameYouLoseSound_Access is access all org.allbinary.media.audio.GameYouLoseSound_Package.GameYouLoseSound'Class;
   type GameYouLoseSound_Access_Array is array (Natural range <>) of GameYouLoseSound_Access;
   type GameYouLoseSound_Access_Array_Access is access all GameYouLoseSound_Access_Array;
   type GameYouLoseSound_Access_Array_Access_Array is array (Natural range <>) of GameYouLoseSound_Access_Array_Access;
   type GameYouLoseSound_Access_Array_Access_Array_Access is access all GameYouLoseSound_Access_Array_Access_Array;
   type GameYouLoseSound_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameYouLoseSound_Access_Array_Access;
   end record;
   function Java_Box (Value : GameYouLoseSound_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameYouLoseSound_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameYouLoseSound_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameYouLoseSound_Access_Array_Access is (if Value /= null and then Value.all in GameYouLoseSound_Access_Array_Object'Class then GameYouLoseSound_Access_Array_Object'Class (Value.all).Value else null);
   type GameYouLoseSound_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameYouLoseSound_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameYouLoseSound_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameYouLoseSound_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameYouLoseSound_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameYouLoseSound_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameYouLoseSound_Access_Array_Access_Array_Object'Class then GameYouLoseSound_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.audio.GameYouLoseSound_Package_References;

with org.allbinary.media.audio.GameYouLoseSound_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.media.audio.CompositeSound_Package; use org.allbinary.media.audio.CompositeSound_Package;
with org.allbinary.media.audio.Sound_Package; use org.allbinary.media.audio.Sound_Package;

package org.allbinary.media.audio.GameYouLoseSound_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype GameYouLoseSound_Access is org.allbinary.media.audio.GameYouLoseSound_Package_References.GameYouLoseSound_Access;
   function "=" (Left, Right : GameYouLoseSound_Access) return Boolean renames org.allbinary.media.audio.GameYouLoseSound_Package_References."=";
   subtype GameYouLoseSound_Access_Array is org.allbinary.media.audio.GameYouLoseSound_Package_References.GameYouLoseSound_Access_Array;
   function "=" (Left, Right : GameYouLoseSound_Access_Array) return Boolean renames org.allbinary.media.audio.GameYouLoseSound_Package_References."=";
   subtype GameYouLoseSound_Access_Array_Access is org.allbinary.media.audio.GameYouLoseSound_Package_References.GameYouLoseSound_Access_Array_Access;
   function "=" (Left, Right : GameYouLoseSound_Access_Array_Access) return Boolean renames org.allbinary.media.audio.GameYouLoseSound_Package_References."=";
   function Java_Box (Value : GameYouLoseSound_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.GameYouLoseSound_Package_References.Java_Box;
   function Java_Unbox_GameYouLoseSound_Access_Array (Value : access Java_Object'Class) return GameYouLoseSound_Access_Array_Access renames org.allbinary.media.audio.GameYouLoseSound_Package_References.Java_Unbox_GameYouLoseSound_Access_Array;
   subtype GameYouLoseSound_Access_Array_Access_Array is org.allbinary.media.audio.GameYouLoseSound_Package_References.GameYouLoseSound_Access_Array_Access_Array;
   function "=" (Left, Right : GameYouLoseSound_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.GameYouLoseSound_Package_References."=";
   subtype GameYouLoseSound_Access_Array_Access_Array_Access is org.allbinary.media.audio.GameYouLoseSound_Package_References.GameYouLoseSound_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameYouLoseSound_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.GameYouLoseSound_Package_References."=";
   function Java_Box (Value : GameYouLoseSound_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.GameYouLoseSound_Package_References.Java_Box;
   function Java_Unbox_GameYouLoseSound_Access_Array_Access_Array (Value : access Java_Object'Class) return GameYouLoseSound_Access_Array_Access_Array_Access renames org.allbinary.media.audio.GameYouLoseSound_Package_References.Java_Unbox_GameYouLoseSound_Access_Array_Access_Array;

   type GameYouLoseSound is new CompositeSound with null record;
   soundInterface : Sound_Access;

   procedure Initialize (This : in out GameYouLoseSound'Class);
   function Create return GameYouLoseSound_Access;
   function getInstance return Sound_Access;

end org.allbinary.media.audio.GameYouLoseSound_Package;


