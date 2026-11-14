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
limited with org.allbinary.audio.AudioContentTypeDataFactory_Package;
package org.allbinary.audio.AudioContentTypeDataFactory_Package_References is
   type AudioContentTypeDataFactory_Access is access all org.allbinary.audio.AudioContentTypeDataFactory_Package.AudioContentTypeDataFactory'Class;
   type AudioContentTypeDataFactory_Access_Array is array (Natural range <>) of AudioContentTypeDataFactory_Access;
   type AudioContentTypeDataFactory_Access_Array_Access is access all AudioContentTypeDataFactory_Access_Array;
   type AudioContentTypeDataFactory_Access_Array_Access_Array is array (Natural range <>) of AudioContentTypeDataFactory_Access_Array_Access;
   type AudioContentTypeDataFactory_Access_Array_Access_Array_Access is access all AudioContentTypeDataFactory_Access_Array_Access_Array;
   type AudioContentTypeDataFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AudioContentTypeDataFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : AudioContentTypeDataFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AudioContentTypeDataFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AudioContentTypeDataFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AudioContentTypeDataFactory_Access_Array_Access is (if Value /= null and then Value.all in AudioContentTypeDataFactory_Access_Array_Object'Class then AudioContentTypeDataFactory_Access_Array_Object'Class (Value.all).Value else null);
   type AudioContentTypeDataFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AudioContentTypeDataFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AudioContentTypeDataFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AudioContentTypeDataFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AudioContentTypeDataFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AudioContentTypeDataFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AudioContentTypeDataFactory_Access_Array_Access_Array_Object'Class then AudioContentTypeDataFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.audio.AudioContentTypeDataFactory_Package_References;

with org.allbinary.audio.AudioContentTypeDataFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.audio.AudioContentTypeData_Package;
with org.allbinary.audio.AudioContentTypeData_Package_References;

package org.allbinary.audio.AudioContentTypeDataFactory_Package is

   package Reference_Types is
   subtype AudioContentTypeData_Access is org.allbinary.audio.AudioContentTypeData_Package_References.AudioContentTypeData_Access;
   use type AudioContentTypeData_Access;
   subtype AudioContentTypeData_Access_Array is org.allbinary.audio.AudioContentTypeData_Package_References.AudioContentTypeData_Access_Array;
   use type AudioContentTypeData_Access_Array;
   subtype AudioContentTypeData_Access_Array_Access is org.allbinary.audio.AudioContentTypeData_Package_References.AudioContentTypeData_Access_Array_Access;
   use type AudioContentTypeData_Access_Array_Access;
   subtype AudioContentTypeData_Access_Array_Access_Array is org.allbinary.audio.AudioContentTypeData_Package_References.AudioContentTypeData_Access_Array_Access_Array;
   use type AudioContentTypeData_Access_Array_Access_Array;
   subtype AudioContentTypeData_Access_Array_Access_Array_Access is org.allbinary.audio.AudioContentTypeData_Package_References.AudioContentTypeData_Access_Array_Access_Array_Access;
   use type AudioContentTypeData_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AudioContentTypeDataFactory_Access is org.allbinary.audio.AudioContentTypeDataFactory_Package_References.AudioContentTypeDataFactory_Access;
   function "=" (Left, Right : AudioContentTypeDataFactory_Access) return Boolean renames org.allbinary.audio.AudioContentTypeDataFactory_Package_References."=";
   subtype AudioContentTypeDataFactory_Access_Array is org.allbinary.audio.AudioContentTypeDataFactory_Package_References.AudioContentTypeDataFactory_Access_Array;
   function "=" (Left, Right : AudioContentTypeDataFactory_Access_Array) return Boolean renames org.allbinary.audio.AudioContentTypeDataFactory_Package_References."=";
   subtype AudioContentTypeDataFactory_Access_Array_Access is org.allbinary.audio.AudioContentTypeDataFactory_Package_References.AudioContentTypeDataFactory_Access_Array_Access;
   function "=" (Left, Right : AudioContentTypeDataFactory_Access_Array_Access) return Boolean renames org.allbinary.audio.AudioContentTypeDataFactory_Package_References."=";
   function Java_Box (Value : AudioContentTypeDataFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.audio.AudioContentTypeDataFactory_Package_References.Java_Box;
   function Java_Unbox_AudioContentTypeDataFactory_Access_Array (Value : access Java_Object'Class) return AudioContentTypeDataFactory_Access_Array_Access renames org.allbinary.audio.AudioContentTypeDataFactory_Package_References.Java_Unbox_AudioContentTypeDataFactory_Access_Array;
   subtype AudioContentTypeDataFactory_Access_Array_Access_Array is org.allbinary.audio.AudioContentTypeDataFactory_Package_References.AudioContentTypeDataFactory_Access_Array_Access_Array;
   function "=" (Left, Right : AudioContentTypeDataFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.audio.AudioContentTypeDataFactory_Package_References."=";
   subtype AudioContentTypeDataFactory_Access_Array_Access_Array_Access is org.allbinary.audio.AudioContentTypeDataFactory_Package_References.AudioContentTypeDataFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AudioContentTypeDataFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.audio.AudioContentTypeDataFactory_Package_References."=";
   function Java_Box (Value : AudioContentTypeDataFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.audio.AudioContentTypeDataFactory_Package_References.Java_Box;
   function Java_Unbox_AudioContentTypeDataFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return AudioContentTypeDataFactory_Access_Array_Access_Array_Access renames org.allbinary.audio.AudioContentTypeDataFactory_Package_References.Java_Unbox_AudioContentTypeDataFactory_Access_Array_Access_Array;

   type AudioContentTypeDataFactory is new Java_Object with record
      MIME_AUDIO_TONE : AudioContentTypeData_Access;
      MIME_AUDIO_AMR : AudioContentTypeData_Access;
      MIME_AUDIO_AMR_WB : AudioContentTypeData_Access;
      MIME_AUDIO_WAV : AudioContentTypeData_Access;
      MIME_AUDIO_MIDI : AudioContentTypeData_Access;
      MIME_AUDIO_SP_MIDI : AudioContentTypeData_Access;
   end record;
   instance : AudioContentTypeDataFactory_Access;

   procedure Initialize (This : in out AudioContentTypeDataFactory'Class);
   function Create return AudioContentTypeDataFactory_Access;
   function getInstance return AudioContentTypeDataFactory_Access;

end org.allbinary.audio.AudioContentTypeDataFactory_Package;


