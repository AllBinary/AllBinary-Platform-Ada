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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.media.audio.SoundStrings_Package; use org.allbinary.media.audio.SoundStrings_Package;
with org.allbinary.media.audio.SoundsFactoryInterface_Package; use org.allbinary.media.audio.SoundsFactoryInterface_Package;

package org.allbinary.media.audio.Sounds_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type Sounds is tagged;
   type Sounds_Access is access all Sounds'Class;
   type Sounds_Access_Array is array (Natural range <>) of Sounds_Access;
   type Sounds_Access_Array_Access is access all Sounds_Access_Array;
   type Sounds_Access_Array_Access_Array is array (Natural range <>) of Sounds_Access_Array_Access;
   type Sounds_Access_Array_Access_Array_Access is access all Sounds_Access_Array_Access_Array;

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


