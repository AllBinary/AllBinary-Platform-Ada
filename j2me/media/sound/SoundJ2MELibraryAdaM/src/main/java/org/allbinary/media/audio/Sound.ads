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
limited with org.allbinary.media.audio.Sound_Package;
package org.allbinary.media.audio.Sound_Package_References is
   type Sound_Access is access all org.allbinary.media.audio.Sound_Package.Sound'Class;
   type Sound_Access_Array is array (Natural range <>) of Sound_Access;
   type Sound_Access_Array_Access is access all Sound_Access_Array;
   type Sound_Access_Array_Access_Array is array (Natural range <>) of Sound_Access_Array_Access;
   type Sound_Access_Array_Access_Array_Access is access all Sound_Access_Array_Access_Array;
   type Sound_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Sound_Access_Array_Access;
   end record;
   function Java_Box (Value : Sound_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Sound_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Sound_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Sound_Access_Array_Access is (if Value /= null and then Value.all in Sound_Access_Array_Object'Class then Sound_Access_Array_Object'Class (Value.all).Value else null);
   type Sound_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Sound_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : Sound_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Sound_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Sound_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Sound_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in Sound_Access_Array_Access_Array_Object'Class then Sound_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.audio.Sound_Package_References;

with org.allbinary.media.audio.Sound_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.media.Player_Package;
with javax.microedition.media.Player_Package_References;
with org.allbinary.media.audio.SoundInterface_Package; use org.allbinary.media.audio.SoundInterface_Package;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;

package org.allbinary.media.audio.Sound_Package is

   package Player_Package renames Standard.javax.microedition.media.Player_Package;
   package Runnable_Package renames Standard.java.lang.Runnable_Package;
   package Reference_Types is
   subtype Player_Access is javax.microedition.media.Player_Package_References.Player_Access;
   use type Player_Access;
   subtype Player_Access_Array is javax.microedition.media.Player_Package_References.Player_Access_Array;
   use type Player_Access_Array;
   subtype Player_Access_Array_Access is javax.microedition.media.Player_Package_References.Player_Access_Array_Access;
   use type Player_Access_Array_Access;
   subtype Player_Access_Array_Access_Array is javax.microedition.media.Player_Package_References.Player_Access_Array_Access_Array;
   use type Player_Access_Array_Access_Array;
   subtype Player_Access_Array_Access_Array_Access is javax.microedition.media.Player_Package_References.Player_Access_Array_Access_Array_Access;
   use type Player_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype Sound_Access is org.allbinary.media.audio.Sound_Package_References.Sound_Access;
   function "=" (Left, Right : Sound_Access) return Boolean renames org.allbinary.media.audio.Sound_Package_References."=";
   subtype Sound_Access_Array is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array;
   function "=" (Left, Right : Sound_Access_Array) return Boolean renames org.allbinary.media.audio.Sound_Package_References."=";
   subtype Sound_Access_Array_Access is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array_Access;
   function "=" (Left, Right : Sound_Access_Array_Access) return Boolean renames org.allbinary.media.audio.Sound_Package_References."=";
   function Java_Box (Value : Sound_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.Sound_Package_References.Java_Box;
   function Java_Unbox_Sound_Access_Array (Value : access Java_Object'Class) return Sound_Access_Array_Access renames org.allbinary.media.audio.Sound_Package_References.Java_Unbox_Sound_Access_Array;
   subtype Sound_Access_Array_Access_Array is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array_Access_Array;
   function "=" (Left, Right : Sound_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.Sound_Package_References."=";
   subtype Sound_Access_Array_Access_Array_Access is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Sound_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.Sound_Package_References."=";
   function Java_Box (Value : Sound_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.Sound_Package_References.Java_Box;
   function Java_Unbox_Sound_Access_Array_Access_Array (Value : access Java_Object'Class) return Sound_Access_Array_Access_Array_Access renames org.allbinary.media.audio.Sound_Package_References.Java_Unbox_Sound_Access_Array_Access_Array;

   type Sound is new Java_Object and SoundInterface and Runnable with record
      resource : Unbounded_String;
      player : Player_Access;
   end record;

   procedure Initialize (This : in out Sound'Class; resource : Unbounded_String);
   function Create (resource : Unbounded_String) return Sound_Access;
   function getResource (This : in out Sound) return Unbounded_String;
   function getPlayerP (This : in out Sound) return Player_Access;
   procedure setPlayerP (This : in out Sound; player_Param : access Player_Package.Player'Class);
   procedure init (This : in out Sound);
   function getDuration (This : in out Sound) return Integer;
   procedure run (This : in out Sound);

end org.allbinary.media.audio.Sound_Package;


