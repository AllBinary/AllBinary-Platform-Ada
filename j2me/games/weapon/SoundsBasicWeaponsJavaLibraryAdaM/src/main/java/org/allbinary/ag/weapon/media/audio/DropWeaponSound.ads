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

limited with org.allbinary.ag.weapon.media.audio.DropWeaponSound_Package;
package org.allbinary.ag.weapon.media.audio.DropWeaponSound_Package_References is
   type DropWeaponSound_Access is access all org.allbinary.ag.weapon.media.audio.DropWeaponSound_Package.DropWeaponSound'Class;
   type DropWeaponSound_Access_Array is array (Natural range <>) of DropWeaponSound_Access;
   type DropWeaponSound_Access_Array_Access is access all DropWeaponSound_Access_Array;
   type DropWeaponSound_Access_Array_Access_Array is array (Natural range <>) of DropWeaponSound_Access_Array_Access;
   type DropWeaponSound_Access_Array_Access_Array_Access is access all DropWeaponSound_Access_Array_Access_Array;
end org.allbinary.ag.weapon.media.audio.DropWeaponSound_Package_References;

with org.allbinary.ag.weapon.media.audio.DropWeaponSound_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.media.audio.CompositeSound_Package; use org.allbinary.media.audio.CompositeSound_Package;
limited with org.allbinary.media.audio.Sound_Package;
with org.allbinary.media.audio.Sound_Package_References;

package org.allbinary.ag.weapon.media.audio.DropWeaponSound_Package is

   package CompositeSound_Package renames Standard.org.allbinary.media.audio.CompositeSound_Package;
   package Sound_Package renames Standard.org.allbinary.media.audio.Sound_Package;
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


   subtype DropWeaponSound_Access is org.allbinary.ag.weapon.media.audio.DropWeaponSound_Package_References.DropWeaponSound_Access;
   function "=" (Left, Right : DropWeaponSound_Access) return Boolean renames org.allbinary.ag.weapon.media.audio.DropWeaponSound_Package_References."=";
   subtype DropWeaponSound_Access_Array is org.allbinary.ag.weapon.media.audio.DropWeaponSound_Package_References.DropWeaponSound_Access_Array;
   function "=" (Left, Right : DropWeaponSound_Access_Array) return Boolean renames org.allbinary.ag.weapon.media.audio.DropWeaponSound_Package_References."=";
   subtype DropWeaponSound_Access_Array_Access is org.allbinary.ag.weapon.media.audio.DropWeaponSound_Package_References.DropWeaponSound_Access_Array_Access;
   function "=" (Left, Right : DropWeaponSound_Access_Array_Access) return Boolean renames org.allbinary.ag.weapon.media.audio.DropWeaponSound_Package_References."=";
   subtype DropWeaponSound_Access_Array_Access_Array is org.allbinary.ag.weapon.media.audio.DropWeaponSound_Package_References.DropWeaponSound_Access_Array_Access_Array;
   function "=" (Left, Right : DropWeaponSound_Access_Array_Access_Array) return Boolean renames org.allbinary.ag.weapon.media.audio.DropWeaponSound_Package_References."=";
   subtype DropWeaponSound_Access_Array_Access_Array_Access is org.allbinary.ag.weapon.media.audio.DropWeaponSound_Package_References.DropWeaponSound_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DropWeaponSound_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.ag.weapon.media.audio.DropWeaponSound_Package_References."=";

   type DropWeaponSound is new CompositeSound with null record;
   soundInterface : Sound_Access;

   procedure Initialize (This : in out DropWeaponSound'Class);
   function Create return DropWeaponSound_Access;
   function getInstance return Sound_Access;

end org.allbinary.ag.weapon.media.audio.DropWeaponSound_Package;


