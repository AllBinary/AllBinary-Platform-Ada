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
limited with org.allbinary.media.audio.SoundStrings_Package;
package org.allbinary.media.audio.SoundStrings_Package_References is
   type SoundStrings_Access is access all org.allbinary.media.audio.SoundStrings_Package.SoundStrings'Class;
   type SoundStrings_Access_Array is array (Natural range <>) of SoundStrings_Access;
   type SoundStrings_Access_Array_Access is access all SoundStrings_Access_Array;
   type SoundStrings_Access_Array_Access_Array is array (Natural range <>) of SoundStrings_Access_Array_Access;
   type SoundStrings_Access_Array_Access_Array_Access is access all SoundStrings_Access_Array_Access_Array;
   type SoundStrings_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SoundStrings_Access_Array_Access;
   end record;
   function Java_Box (Value : SoundStrings_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SoundStrings_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SoundStrings_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SoundStrings_Access_Array_Access is (if Value /= null and then Value.all in SoundStrings_Access_Array_Object'Class then SoundStrings_Access_Array_Object'Class (Value.all).Value else null);
   type SoundStrings_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SoundStrings_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SoundStrings_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SoundStrings_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SoundStrings_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SoundStrings_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SoundStrings_Access_Array_Access_Array_Object'Class then SoundStrings_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.audio.SoundStrings_Package_References;

with org.allbinary.media.audio.SoundStrings_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.media.audio.SoundStrings_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype SoundStrings_Access is org.allbinary.media.audio.SoundStrings_Package_References.SoundStrings_Access;
   function "=" (Left, Right : SoundStrings_Access) return Boolean renames org.allbinary.media.audio.SoundStrings_Package_References."=";
   subtype SoundStrings_Access_Array is org.allbinary.media.audio.SoundStrings_Package_References.SoundStrings_Access_Array;
   function "=" (Left, Right : SoundStrings_Access_Array) return Boolean renames org.allbinary.media.audio.SoundStrings_Package_References."=";
   subtype SoundStrings_Access_Array_Access is org.allbinary.media.audio.SoundStrings_Package_References.SoundStrings_Access_Array_Access;
   function "=" (Left, Right : SoundStrings_Access_Array_Access) return Boolean renames org.allbinary.media.audio.SoundStrings_Package_References."=";
   function Java_Box (Value : SoundStrings_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.SoundStrings_Package_References.Java_Box;
   function Java_Unbox_SoundStrings_Access_Array (Value : access Java_Object'Class) return SoundStrings_Access_Array_Access renames org.allbinary.media.audio.SoundStrings_Package_References.Java_Unbox_SoundStrings_Access_Array;
   subtype SoundStrings_Access_Array_Access_Array is org.allbinary.media.audio.SoundStrings_Package_References.SoundStrings_Access_Array_Access_Array;
   function "=" (Left, Right : SoundStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.SoundStrings_Package_References."=";
   subtype SoundStrings_Access_Array_Access_Array_Access is org.allbinary.media.audio.SoundStrings_Package_References.SoundStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SoundStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.SoundStrings_Package_References."=";
   function Java_Box (Value : SoundStrings_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.SoundStrings_Package_References.Java_Box;
   function Java_Unbox_SoundStrings_Access_Array_Access_Array (Value : access Java_Object'Class) return SoundStrings_Access_Array_Access_Array_Access renames org.allbinary.media.audio.SoundStrings_Package_References.Java_Unbox_SoundStrings_Access_Array_Access_Array;

   type SoundStrings is new Java_Object with record
      STOP_ALL : Unbounded_String;
      CLOSE_ALL : Unbounded_String;
      SOUND : Unbounded_String;
      INIT_SOUND : Unbounded_String;
      STOPPING_SOUND : Unbounded_String;
      CLOSING_SOUND : Unbounded_String;
   end record;
   instance : SoundStrings_Access;

   procedure Initialize (This : in out SoundStrings'Class);
   function Create return SoundStrings_Access;
   function getInstance return SoundStrings_Access;

end org.allbinary.media.audio.SoundStrings_Package;


