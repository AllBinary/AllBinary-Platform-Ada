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

limited with org.allbinary.game.graphics.hud.BasicHudFactory_Package;
package org.allbinary.game.graphics.hud.BasicHudFactory_Package_References is
   type BasicHudFactory_Access is access all org.allbinary.game.graphics.hud.BasicHudFactory_Package.BasicHudFactory'Class;
   type BasicHudFactory_Access_Array is array (Natural range <>) of BasicHudFactory_Access;
   type BasicHudFactory_Access_Array_Access is access all BasicHudFactory_Access_Array;
   type BasicHudFactory_Access_Array_Access_Array is array (Natural range <>) of BasicHudFactory_Access_Array_Access;
   type BasicHudFactory_Access_Array_Access_Array_Access is access all BasicHudFactory_Access_Array_Access_Array;
end org.allbinary.game.graphics.hud.BasicHudFactory_Package_References;

with org.allbinary.game.graphics.hud.BasicHudFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.graphics.hud.BasicHudFactory_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype BasicHudFactory_Access is org.allbinary.game.graphics.hud.BasicHudFactory_Package_References.BasicHudFactory_Access;
   function "=" (Left, Right : BasicHudFactory_Access) return Boolean renames org.allbinary.game.graphics.hud.BasicHudFactory_Package_References."=";
   subtype BasicHudFactory_Access_Array is org.allbinary.game.graphics.hud.BasicHudFactory_Package_References.BasicHudFactory_Access_Array;
   function "=" (Left, Right : BasicHudFactory_Access_Array) return Boolean renames org.allbinary.game.graphics.hud.BasicHudFactory_Package_References."=";
   subtype BasicHudFactory_Access_Array_Access is org.allbinary.game.graphics.hud.BasicHudFactory_Package_References.BasicHudFactory_Access_Array_Access;
   function "=" (Left, Right : BasicHudFactory_Access_Array_Access) return Boolean renames org.allbinary.game.graphics.hud.BasicHudFactory_Package_References."=";
   subtype BasicHudFactory_Access_Array_Access_Array is org.allbinary.game.graphics.hud.BasicHudFactory_Package_References.BasicHudFactory_Access_Array_Access_Array;
   function "=" (Left, Right : BasicHudFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.graphics.hud.BasicHudFactory_Package_References."=";
   subtype BasicHudFactory_Access_Array_Access_Array_Access is org.allbinary.game.graphics.hud.BasicHudFactory_Package_References.BasicHudFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicHudFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.graphics.hud.BasicHudFactory_Package_References."=";

   type BasicHudFactory is new Java_Object with record
      DIRECTION_EXCEPTION : Unbounded_String;
      VERTICAL : Integer;
      HORIZONTAL : Integer;
      BOTTOMLEFT : Integer;
      BOTTOMRIGHT : Integer;
      TOPLEFT : Integer;
      TOPRIGHT : Integer;
      BOTTOMCENTER : Integer;
      TOPCENTER : Integer;
      ABSOLUTE : Integer;
   end record;
   instance : BasicHudFactory_Access;

   procedure Initialize (This : in out BasicHudFactory'Class);
   function Create return BasicHudFactory_Access;
   function getInstance return BasicHudFactory_Access;

end org.allbinary.game.graphics.hud.BasicHudFactory_Package;


