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

limited with org.allbinary.media.audio.EarlySoundsFactory_Package;
package org.allbinary.media.audio.EarlySoundsFactory_Package_References is
   type EarlySoundsFactory_Access is access all org.allbinary.media.audio.EarlySoundsFactory_Package.EarlySoundsFactory'Class;
   type EarlySoundsFactory_Access_Array is array (Natural range <>) of EarlySoundsFactory_Access;
   type EarlySoundsFactory_Access_Array_Access is access all EarlySoundsFactory_Access_Array;
   type EarlySoundsFactory_Access_Array_Access_Array is array (Natural range <>) of EarlySoundsFactory_Access_Array_Access;
   type EarlySoundsFactory_Access_Array_Access_Array_Access is access all EarlySoundsFactory_Access_Array_Access_Array;
end org.allbinary.media.audio.EarlySoundsFactory_Package_References;

with org.allbinary.media.audio.EarlySoundsFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.media.audio.BaseSoundsFactory_Package; use org.allbinary.media.audio.BaseSoundsFactory_Package;
limited with org.allbinary.media.audio.Sound_Package;
with org.allbinary.media.audio.Sound_Package_References;

package org.allbinary.media.audio.EarlySoundsFactory_Package is

   package Reference_Types is
   subtype Sound_Access is org.allbinary.media.audio.Sound_Package_References.Sound_Access;
   use type Sound_Access;
   subtype Sound_Access_Array is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array;
   use type Sound_Access_Array;
   subtype Sound_Access_Array_Access is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array_Access;
   use type Sound_Access_Array_Access;
   subtype Sound_Access_Array_Access_Array is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array_Access_Array;
   use type Sound_Access_Array_Access_Array;
   subtype Sound_Access_Array_Access_Array_Access is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array_Access_Array_Access;
   use type Sound_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype EarlySoundsFactory_Access is org.allbinary.media.audio.EarlySoundsFactory_Package_References.EarlySoundsFactory_Access;
   function "=" (Left, Right : EarlySoundsFactory_Access) return Boolean renames org.allbinary.media.audio.EarlySoundsFactory_Package_References."=";
   subtype EarlySoundsFactory_Access_Array is org.allbinary.media.audio.EarlySoundsFactory_Package_References.EarlySoundsFactory_Access_Array;
   function "=" (Left, Right : EarlySoundsFactory_Access_Array) return Boolean renames org.allbinary.media.audio.EarlySoundsFactory_Package_References."=";
   subtype EarlySoundsFactory_Access_Array_Access is org.allbinary.media.audio.EarlySoundsFactory_Package_References.EarlySoundsFactory_Access_Array_Access;
   function "=" (Left, Right : EarlySoundsFactory_Access_Array_Access) return Boolean renames org.allbinary.media.audio.EarlySoundsFactory_Package_References."=";
   subtype EarlySoundsFactory_Access_Array_Access_Array is org.allbinary.media.audio.EarlySoundsFactory_Package_References.EarlySoundsFactory_Access_Array_Access_Array;
   function "=" (Left, Right : EarlySoundsFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.EarlySoundsFactory_Package_References."=";
   subtype EarlySoundsFactory_Access_Array_Access_Array_Access is org.allbinary.media.audio.EarlySoundsFactory_Package_References.EarlySoundsFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : EarlySoundsFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.EarlySoundsFactory_Package_References."=";

   type EarlySoundsFactory is new BaseSoundsFactory with null record;
   instance : EarlySoundsFactory_Access;

   procedure Initialize (This : in out EarlySoundsFactory'Class);
   function Create return EarlySoundsFactory_Access;
   function getSoundInterfaceArray (This : in out EarlySoundsFactory) return Sound_Access_Array_Access;
   function getInstance return EarlySoundsFactory_Access;

end org.allbinary.media.audio.EarlySoundsFactory_Package;


