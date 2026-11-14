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
limited with org.allbinary.media.audio.NullAudioFormat_Package;
package org.allbinary.media.audio.NullAudioFormat_Package_References is
   type NullAudioFormat_Access is access all org.allbinary.media.audio.NullAudioFormat_Package.NullAudioFormat'Class;
   type NullAudioFormat_Access_Array is array (Natural range <>) of NullAudioFormat_Access;
   type NullAudioFormat_Access_Array_Access is access all NullAudioFormat_Access_Array;
   type NullAudioFormat_Access_Array_Access_Array is array (Natural range <>) of NullAudioFormat_Access_Array_Access;
   type NullAudioFormat_Access_Array_Access_Array_Access is access all NullAudioFormat_Access_Array_Access_Array;
   type NullAudioFormat_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullAudioFormat_Access_Array_Access;
   end record;
   function Java_Box (Value : NullAudioFormat_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullAudioFormat_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullAudioFormat_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullAudioFormat_Access_Array_Access is (if Value /= null and then Value.all in NullAudioFormat_Access_Array_Object'Class then NullAudioFormat_Access_Array_Object'Class (Value.all).Value else null);
   type NullAudioFormat_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullAudioFormat_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NullAudioFormat_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullAudioFormat_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullAudioFormat_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullAudioFormat_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NullAudioFormat_Access_Array_Access_Array_Object'Class then NullAudioFormat_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.audio.NullAudioFormat_Package_References;

with org.allbinary.media.audio.NullAudioFormat_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.sound.sampled.AudioFormat_Package; use javax.sound.sampled.AudioFormat_Package;

package org.allbinary.media.audio.NullAudioFormat_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype NullAudioFormat_Access is org.allbinary.media.audio.NullAudioFormat_Package_References.NullAudioFormat_Access;
   function "=" (Left, Right : NullAudioFormat_Access) return Boolean renames org.allbinary.media.audio.NullAudioFormat_Package_References."=";
   subtype NullAudioFormat_Access_Array is org.allbinary.media.audio.NullAudioFormat_Package_References.NullAudioFormat_Access_Array;
   function "=" (Left, Right : NullAudioFormat_Access_Array) return Boolean renames org.allbinary.media.audio.NullAudioFormat_Package_References."=";
   subtype NullAudioFormat_Access_Array_Access is org.allbinary.media.audio.NullAudioFormat_Package_References.NullAudioFormat_Access_Array_Access;
   function "=" (Left, Right : NullAudioFormat_Access_Array_Access) return Boolean renames org.allbinary.media.audio.NullAudioFormat_Package_References."=";
   function Java_Box (Value : NullAudioFormat_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.NullAudioFormat_Package_References.Java_Box;
   function Java_Unbox_NullAudioFormat_Access_Array (Value : access Java_Object'Class) return NullAudioFormat_Access_Array_Access renames org.allbinary.media.audio.NullAudioFormat_Package_References.Java_Unbox_NullAudioFormat_Access_Array;
   subtype NullAudioFormat_Access_Array_Access_Array is org.allbinary.media.audio.NullAudioFormat_Package_References.NullAudioFormat_Access_Array_Access_Array;
   function "=" (Left, Right : NullAudioFormat_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.NullAudioFormat_Package_References."=";
   subtype NullAudioFormat_Access_Array_Access_Array_Access is org.allbinary.media.audio.NullAudioFormat_Package_References.NullAudioFormat_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullAudioFormat_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.NullAudioFormat_Package_References."=";
   function Java_Box (Value : NullAudioFormat_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.NullAudioFormat_Package_References.Java_Box;
   function Java_Unbox_NullAudioFormat_Access_Array_Access_Array (Value : access Java_Object'Class) return NullAudioFormat_Access_Array_Access_Array_Access renames org.allbinary.media.audio.NullAudioFormat_Package_References.Java_Unbox_NullAudioFormat_Access_Array_Access_Array;

   type NullAudioFormat is new Java_Object with null record;
   NULL_AUDIO_FORMAT : AudioFormat_Access;

   procedure Initialize (This : in out NullAudioFormat'Class);
   function Create return NullAudioFormat_Access;

end org.allbinary.media.audio.NullAudioFormat_Package;


