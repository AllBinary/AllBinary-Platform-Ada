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
limited with org.allbinary.media.audio.Sounds_Package;
package org.allbinary.media.audio.Sounds_Package_References is
   type Sounds_Access is access all org.allbinary.media.audio.Sounds_Package.Sounds'Class;
   type Sounds_Access_Array is array (Natural range <>) of Sounds_Access;
   type Sounds_Access_Array_Access is access all Sounds_Access_Array;
   type Sounds_Access_Array_Access_Array is array (Natural range <>) of Sounds_Access_Array_Access;
   type Sounds_Access_Array_Access_Array_Access is access all Sounds_Access_Array_Access_Array;
   type Sounds_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Sounds_Access_Array_Access;
   end record;
   function Java_Box (Value : Sounds_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Sounds_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Sounds_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Sounds_Access_Array_Access is (if Value /= null and then Value.all in Sounds_Access_Array_Object'Class then Sounds_Access_Array_Object'Class (Value.all).Value else null);
   type Sounds_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Sounds_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : Sounds_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Sounds_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Sounds_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Sounds_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in Sounds_Access_Array_Access_Array_Object'Class then Sounds_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.audio.Sounds_Package_References;

with org.allbinary.media.audio.Sounds_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.media.audio.SoundStrings_Package;
with org.allbinary.media.audio.SoundStrings_Package_References;
limited with org.allbinary.media.audio.SoundsFactoryInterface_Package;
with org.allbinary.media.audio.SoundsFactoryInterface_Package_References;

package org.allbinary.media.audio.Sounds_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype SoundStrings_Access is org.allbinary.media.audio.SoundStrings_Package_References.SoundStrings_Access;
   use type SoundStrings_Access;
   subtype SoundStrings_Access_Array is org.allbinary.media.audio.SoundStrings_Package_References.SoundStrings_Access_Array;
   use type SoundStrings_Access_Array;
   subtype SoundStrings_Access_Array_Access is org.allbinary.media.audio.SoundStrings_Package_References.SoundStrings_Access_Array_Access;
   use type SoundStrings_Access_Array_Access;
   subtype SoundStrings_Access_Array_Access_Array is org.allbinary.media.audio.SoundStrings_Package_References.SoundStrings_Access_Array_Access_Array;
   use type SoundStrings_Access_Array_Access_Array;
   subtype SoundStrings_Access_Array_Access_Array_Access is org.allbinary.media.audio.SoundStrings_Package_References.SoundStrings_Access_Array_Access_Array_Access;
   use type SoundStrings_Access_Array_Access_Array_Access;
   subtype SoundsFactoryInterface_Access is org.allbinary.media.audio.SoundsFactoryInterface_Package_References.SoundsFactoryInterface_Access;
   use type SoundsFactoryInterface_Access;
   subtype SoundsFactoryInterface_Access_Array is org.allbinary.media.audio.SoundsFactoryInterface_Package_References.SoundsFactoryInterface_Access_Array;
   use type SoundsFactoryInterface_Access_Array;
   subtype SoundsFactoryInterface_Access_Array_Access is org.allbinary.media.audio.SoundsFactoryInterface_Package_References.SoundsFactoryInterface_Access_Array_Access;
   use type SoundsFactoryInterface_Access_Array_Access;
   subtype SoundsFactoryInterface_Access_Array_Access_Array is org.allbinary.media.audio.SoundsFactoryInterface_Package_References.SoundsFactoryInterface_Access_Array_Access_Array;
   use type SoundsFactoryInterface_Access_Array_Access_Array;
   subtype SoundsFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.media.audio.SoundsFactoryInterface_Package_References.SoundsFactoryInterface_Access_Array_Access_Array_Access;
   use type SoundsFactoryInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype Sounds_Access is org.allbinary.media.audio.Sounds_Package_References.Sounds_Access;
   function "=" (Left, Right : Sounds_Access) return Boolean renames org.allbinary.media.audio.Sounds_Package_References."=";
   subtype Sounds_Access_Array is org.allbinary.media.audio.Sounds_Package_References.Sounds_Access_Array;
   function "=" (Left, Right : Sounds_Access_Array) return Boolean renames org.allbinary.media.audio.Sounds_Package_References."=";
   subtype Sounds_Access_Array_Access is org.allbinary.media.audio.Sounds_Package_References.Sounds_Access_Array_Access;
   function "=" (Left, Right : Sounds_Access_Array_Access) return Boolean renames org.allbinary.media.audio.Sounds_Package_References."=";
   function Java_Box (Value : Sounds_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.Sounds_Package_References.Java_Box;
   function Java_Unbox_Sounds_Access_Array (Value : access Java_Object'Class) return Sounds_Access_Array_Access renames org.allbinary.media.audio.Sounds_Package_References.Java_Unbox_Sounds_Access_Array;
   subtype Sounds_Access_Array_Access_Array is org.allbinary.media.audio.Sounds_Package_References.Sounds_Access_Array_Access_Array;
   function "=" (Left, Right : Sounds_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.Sounds_Package_References."=";
   subtype Sounds_Access_Array_Access_Array_Access is org.allbinary.media.audio.Sounds_Package_References.Sounds_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Sounds_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.Sounds_Package_References."=";
   function Java_Box (Value : Sounds_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.Sounds_Package_References.Java_Box;
   function Java_Unbox_Sounds_Access_Array_Access_Array (Value : access Java_Object'Class) return Sounds_Access_Array_Access_Array_Access renames org.allbinary.media.audio.Sounds_Package_References.Java_Unbox_Sounds_Access_Array_Access_Array;

   type Sounds is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      soundStrings : SoundStrings_Access;
      soundsFactoryInterface : SoundsFactoryInterface_Access;
   end record;

   procedure Initialize (This : in out Sounds'Class; soundsFactoryInterface_Param : access SoundsFactoryInterface_Package.SoundsFactoryInterface'Class);
   function Create (soundsFactoryInterface_Param : access SoundsFactoryInterface_Package.SoundsFactoryInterface'Class) return Sounds_Access;
   procedure init (This : in out Sounds);
   procedure stopAll (This : in out Sounds);
   procedure closeAll (This : in out Sounds);

end org.allbinary.media.audio.Sounds_Package;


