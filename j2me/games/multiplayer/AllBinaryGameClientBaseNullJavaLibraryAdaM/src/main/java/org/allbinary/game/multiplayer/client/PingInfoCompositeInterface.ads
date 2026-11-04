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

limited with org.allbinary.game.multiplayer.client.PingInfoCompositeInterface_Package;
package org.allbinary.game.multiplayer.client.PingInfoCompositeInterface_Package_References is
   type PingInfoCompositeInterface_Access is access all org.allbinary.game.multiplayer.client.PingInfoCompositeInterface_Package.PingInfoCompositeInterface'Class;
   type PingInfoCompositeInterface_Access_Array is array (Natural range <>) of PingInfoCompositeInterface_Access;
   type PingInfoCompositeInterface_Access_Array_Access is access all PingInfoCompositeInterface_Access_Array;
   type PingInfoCompositeInterface_Access_Array_Access_Array is array (Natural range <>) of PingInfoCompositeInterface_Access_Array_Access;
   type PingInfoCompositeInterface_Access_Array_Access_Array_Access is access all PingInfoCompositeInterface_Access_Array_Access_Array;
end org.allbinary.game.multiplayer.client.PingInfoCompositeInterface_Package_References;

with org.allbinary.game.multiplayer.client.PingInfoCompositeInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.multiplayer.client.PingInfoCompositeInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type PingInfoCompositeInterface is interface;
   subtype PingInfoCompositeInterface_Access is org.allbinary.game.multiplayer.client.PingInfoCompositeInterface_Package_References.PingInfoCompositeInterface_Access;
   function "=" (Left, Right : PingInfoCompositeInterface_Access) return Boolean renames org.allbinary.game.multiplayer.client.PingInfoCompositeInterface_Package_References."=";
   subtype PingInfoCompositeInterface_Access_Array is org.allbinary.game.multiplayer.client.PingInfoCompositeInterface_Package_References.PingInfoCompositeInterface_Access_Array;
   function "=" (Left, Right : PingInfoCompositeInterface_Access_Array) return Boolean renames org.allbinary.game.multiplayer.client.PingInfoCompositeInterface_Package_References."=";
   subtype PingInfoCompositeInterface_Access_Array_Access is org.allbinary.game.multiplayer.client.PingInfoCompositeInterface_Package_References.PingInfoCompositeInterface_Access_Array_Access;
   function "=" (Left, Right : PingInfoCompositeInterface_Access_Array_Access) return Boolean renames org.allbinary.game.multiplayer.client.PingInfoCompositeInterface_Package_References."=";
   subtype PingInfoCompositeInterface_Access_Array_Access_Array is org.allbinary.game.multiplayer.client.PingInfoCompositeInterface_Package_References.PingInfoCompositeInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PingInfoCompositeInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.multiplayer.client.PingInfoCompositeInterface_Package_References."=";
   subtype PingInfoCompositeInterface_Access_Array_Access_Array_Access is org.allbinary.game.multiplayer.client.PingInfoCompositeInterface_Package_References.PingInfoCompositeInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PingInfoCompositeInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.multiplayer.client.PingInfoCompositeInterface_Package_References."=";
   function Java_Object_Access_From_PingInfoCompositeInterface (Value : PingInfoCompositeInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure setPingInfo (This : in out PingInfoCompositeInterface; show : Boolean) is abstract;

end org.allbinary.game.multiplayer.client.PingInfoCompositeInterface_Package;


