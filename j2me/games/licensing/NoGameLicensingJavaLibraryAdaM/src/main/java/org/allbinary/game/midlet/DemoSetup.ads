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

limited with org.allbinary.game.midlet.DemoSetup_Package;
package org.allbinary.game.midlet.DemoSetup_Package_References is
   type DemoSetup_Access is access all org.allbinary.game.midlet.DemoSetup_Package.DemoSetup'Class;
   type DemoSetup_Access_Array is array (Natural range <>) of DemoSetup_Access;
   type DemoSetup_Access_Array_Access is access all DemoSetup_Access_Array;
   type DemoSetup_Access_Array_Access_Array is array (Natural range <>) of DemoSetup_Access_Array_Access;
   type DemoSetup_Access_Array_Access_Array_Access is access all DemoSetup_Access_Array_Access_Array;
end org.allbinary.game.midlet.DemoSetup_Package_References;

with org.allbinary.game.midlet.DemoSetup_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.midlet.GameMidlet_Package;
with org.allbinary.game.midlet.GameMidlet_Package_References;

package org.allbinary.game.midlet.DemoSetup_Package is

   package Reference_Types is
   subtype GameMidlet_Access is org.allbinary.game.midlet.GameMidlet_Package_References.GameMidlet_Access;
   use type GameMidlet_Access;
   subtype GameMidlet_Access_Array is org.allbinary.game.midlet.GameMidlet_Package_References.GameMidlet_Access_Array;
   use type GameMidlet_Access_Array;
   subtype GameMidlet_Access_Array_Access is org.allbinary.game.midlet.GameMidlet_Package_References.GameMidlet_Access_Array_Access;
   use type GameMidlet_Access_Array_Access;
   subtype GameMidlet_Access_Array_Access_Array is org.allbinary.game.midlet.GameMidlet_Package_References.GameMidlet_Access_Array_Access_Array;
   use type GameMidlet_Access_Array_Access_Array;
   subtype GameMidlet_Access_Array_Access_Array_Access is org.allbinary.game.midlet.GameMidlet_Package_References.GameMidlet_Access_Array_Access_Array_Access;
   use type GameMidlet_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype DemoSetup_Access is org.allbinary.game.midlet.DemoSetup_Package_References.DemoSetup_Access;
   function "=" (Left, Right : DemoSetup_Access) return Boolean renames org.allbinary.game.midlet.DemoSetup_Package_References."=";
   subtype DemoSetup_Access_Array is org.allbinary.game.midlet.DemoSetup_Package_References.DemoSetup_Access_Array;
   function "=" (Left, Right : DemoSetup_Access_Array) return Boolean renames org.allbinary.game.midlet.DemoSetup_Package_References."=";
   subtype DemoSetup_Access_Array_Access is org.allbinary.game.midlet.DemoSetup_Package_References.DemoSetup_Access_Array_Access;
   function "=" (Left, Right : DemoSetup_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.DemoSetup_Package_References."=";
   subtype DemoSetup_Access_Array_Access_Array is org.allbinary.game.midlet.DemoSetup_Package_References.DemoSetup_Access_Array_Access_Array;
   function "=" (Left, Right : DemoSetup_Access_Array_Access_Array) return Boolean renames org.allbinary.game.midlet.DemoSetup_Package_References."=";
   subtype DemoSetup_Access_Array_Access_Array_Access is org.allbinary.game.midlet.DemoSetup_Package_References.DemoSetup_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DemoSetup_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.DemoSetup_Package_References."=";

   type DemoSetup is new Java_Object with null record;

   procedure Initialize (This : in out DemoSetup'Class);
   function Create return DemoSetup_Access;
   procedure init (This : in out DemoSetup; gameMidlet_Param : access GameMidlet_Package.GameMidlet'Class);

end org.allbinary.game.midlet.DemoSetup_Package;


