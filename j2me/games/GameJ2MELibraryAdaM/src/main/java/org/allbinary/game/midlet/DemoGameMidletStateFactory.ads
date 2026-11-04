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

limited with org.allbinary.game.midlet.DemoGameMidletStateFactory_Package;
package org.allbinary.game.midlet.DemoGameMidletStateFactory_Package_References is
   type DemoGameMidletStateFactory_Access is access all org.allbinary.game.midlet.DemoGameMidletStateFactory_Package.DemoGameMidletStateFactory'Class;
   type DemoGameMidletStateFactory_Access_Array is array (Natural range <>) of DemoGameMidletStateFactory_Access;
   type DemoGameMidletStateFactory_Access_Array_Access is access all DemoGameMidletStateFactory_Access_Array;
   type DemoGameMidletStateFactory_Access_Array_Access_Array is array (Natural range <>) of DemoGameMidletStateFactory_Access_Array_Access;
   type DemoGameMidletStateFactory_Access_Array_Access_Array_Access is access all DemoGameMidletStateFactory_Access_Array_Access_Array;
end org.allbinary.game.midlet.DemoGameMidletStateFactory_Package_References;

with org.allbinary.game.midlet.DemoGameMidletStateFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.midlet.DemoGameMidletState_Package;
with org.allbinary.game.midlet.DemoGameMidletState_Package_References;

package org.allbinary.game.midlet.DemoGameMidletStateFactory_Package is

   package Reference_Types is
   subtype DemoGameMidletState_Access is org.allbinary.game.midlet.DemoGameMidletState_Package_References.DemoGameMidletState_Access;
   use type DemoGameMidletState_Access;
   subtype DemoGameMidletState_Access_Array is org.allbinary.game.midlet.DemoGameMidletState_Package_References.DemoGameMidletState_Access_Array;
   use type DemoGameMidletState_Access_Array;
   subtype DemoGameMidletState_Access_Array_Access is org.allbinary.game.midlet.DemoGameMidletState_Package_References.DemoGameMidletState_Access_Array_Access;
   use type DemoGameMidletState_Access_Array_Access;
   subtype DemoGameMidletState_Access_Array_Access_Array is org.allbinary.game.midlet.DemoGameMidletState_Package_References.DemoGameMidletState_Access_Array_Access_Array;
   use type DemoGameMidletState_Access_Array_Access_Array;
   subtype DemoGameMidletState_Access_Array_Access_Array_Access is org.allbinary.game.midlet.DemoGameMidletState_Package_References.DemoGameMidletState_Access_Array_Access_Array_Access;
   use type DemoGameMidletState_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype DemoGameMidletStateFactory_Access is org.allbinary.game.midlet.DemoGameMidletStateFactory_Package_References.DemoGameMidletStateFactory_Access;
   function "=" (Left, Right : DemoGameMidletStateFactory_Access) return Boolean renames org.allbinary.game.midlet.DemoGameMidletStateFactory_Package_References."=";
   subtype DemoGameMidletStateFactory_Access_Array is org.allbinary.game.midlet.DemoGameMidletStateFactory_Package_References.DemoGameMidletStateFactory_Access_Array;
   function "=" (Left, Right : DemoGameMidletStateFactory_Access_Array) return Boolean renames org.allbinary.game.midlet.DemoGameMidletStateFactory_Package_References."=";
   subtype DemoGameMidletStateFactory_Access_Array_Access is org.allbinary.game.midlet.DemoGameMidletStateFactory_Package_References.DemoGameMidletStateFactory_Access_Array_Access;
   function "=" (Left, Right : DemoGameMidletStateFactory_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.DemoGameMidletStateFactory_Package_References."=";
   subtype DemoGameMidletStateFactory_Access_Array_Access_Array is org.allbinary.game.midlet.DemoGameMidletStateFactory_Package_References.DemoGameMidletStateFactory_Access_Array_Access_Array;
   function "=" (Left, Right : DemoGameMidletStateFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.midlet.DemoGameMidletStateFactory_Package_References."=";
   subtype DemoGameMidletStateFactory_Access_Array_Access_Array_Access is org.allbinary.game.midlet.DemoGameMidletStateFactory_Package_References.DemoGameMidletStateFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DemoGameMidletStateFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.DemoGameMidletStateFactory_Package_References."=";

   type DemoGameMidletStateFactory is new Java_Object with record
      NONE : DemoGameMidletState_Access;
      START_DEMO : DemoGameMidletState_Access;
      START_GAME : DemoGameMidletState_Access;
      START_INPUT_MAPPING : DemoGameMidletState_Access;
   end record;
   STATE : DemoGameMidletStateFactory_Access;

   procedure Initialize (This : in out DemoGameMidletStateFactory'Class);
   function Create return DemoGameMidletStateFactory_Access;
   function getInstance return DemoGameMidletStateFactory_Access;

end org.allbinary.game.midlet.DemoGameMidletStateFactory_Package;


