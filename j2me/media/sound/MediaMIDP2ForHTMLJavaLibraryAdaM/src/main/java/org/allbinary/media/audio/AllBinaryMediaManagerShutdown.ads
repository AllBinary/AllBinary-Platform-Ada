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

limited with org.allbinary.media.audio.AllBinaryMediaManagerShutdown_Package;
package org.allbinary.media.audio.AllBinaryMediaManagerShutdown_Package_References is
   type AllBinaryMediaManagerShutdown_Access is access all org.allbinary.media.audio.AllBinaryMediaManagerShutdown_Package.AllBinaryMediaManagerShutdown'Class;
   type AllBinaryMediaManagerShutdown_Access_Array is array (Natural range <>) of AllBinaryMediaManagerShutdown_Access;
   type AllBinaryMediaManagerShutdown_Access_Array_Access is access all AllBinaryMediaManagerShutdown_Access_Array;
   type AllBinaryMediaManagerShutdown_Access_Array_Access_Array is array (Natural range <>) of AllBinaryMediaManagerShutdown_Access_Array_Access;
   type AllBinaryMediaManagerShutdown_Access_Array_Access_Array_Access is access all AllBinaryMediaManagerShutdown_Access_Array_Access_Array;
end org.allbinary.media.audio.AllBinaryMediaManagerShutdown_Package_References;

with org.allbinary.media.audio.AllBinaryMediaManagerShutdown_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.media.audio.SoundsFactoryInterface_Package;
with org.allbinary.media.audio.SoundsFactoryInterface_Package_References;

package org.allbinary.media.audio.AllBinaryMediaManagerShutdown_Package is

   package Reference_Types is
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


   subtype AllBinaryMediaManagerShutdown_Access is org.allbinary.media.audio.AllBinaryMediaManagerShutdown_Package_References.AllBinaryMediaManagerShutdown_Access;
   function "=" (Left, Right : AllBinaryMediaManagerShutdown_Access) return Boolean renames org.allbinary.media.audio.AllBinaryMediaManagerShutdown_Package_References."=";
   subtype AllBinaryMediaManagerShutdown_Access_Array is org.allbinary.media.audio.AllBinaryMediaManagerShutdown_Package_References.AllBinaryMediaManagerShutdown_Access_Array;
   function "=" (Left, Right : AllBinaryMediaManagerShutdown_Access_Array) return Boolean renames org.allbinary.media.audio.AllBinaryMediaManagerShutdown_Package_References."=";
   subtype AllBinaryMediaManagerShutdown_Access_Array_Access is org.allbinary.media.audio.AllBinaryMediaManagerShutdown_Package_References.AllBinaryMediaManagerShutdown_Access_Array_Access;
   function "=" (Left, Right : AllBinaryMediaManagerShutdown_Access_Array_Access) return Boolean renames org.allbinary.media.audio.AllBinaryMediaManagerShutdown_Package_References."=";
   subtype AllBinaryMediaManagerShutdown_Access_Array_Access_Array is org.allbinary.media.audio.AllBinaryMediaManagerShutdown_Package_References.AllBinaryMediaManagerShutdown_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryMediaManagerShutdown_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.AllBinaryMediaManagerShutdown_Package_References."=";
   subtype AllBinaryMediaManagerShutdown_Access_Array_Access_Array_Access is org.allbinary.media.audio.AllBinaryMediaManagerShutdown_Package_References.AllBinaryMediaManagerShutdown_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryMediaManagerShutdown_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.AllBinaryMediaManagerShutdown_Package_References."=";

   type AllBinaryMediaManagerShutdown is new Java_Object with null record;
   instance : AllBinaryMediaManagerShutdown_Access;

   procedure Initialize (This : in out AllBinaryMediaManagerShutdown'Class);
   function Create return AllBinaryMediaManagerShutdown_Access;
   procedure shutdown (soundsFactoryInterface_Param : access SoundsFactoryInterface_Package.SoundsFactoryInterface'Class);

end org.allbinary.media.audio.AllBinaryMediaManagerShutdown_Package;


