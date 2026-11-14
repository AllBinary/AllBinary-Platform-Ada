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
limited with org.allbinary.game.graphics.hud.BasicHudFactory_Package;
package org.allbinary.game.graphics.hud.BasicHudFactory_Package_References is
   type BasicHudFactory_Access is access all org.allbinary.game.graphics.hud.BasicHudFactory_Package.BasicHudFactory'Class;
   type BasicHudFactory_Access_Array is array (Natural range <>) of BasicHudFactory_Access;
   type BasicHudFactory_Access_Array_Access is access all BasicHudFactory_Access_Array;
   type BasicHudFactory_Access_Array_Access_Array is array (Natural range <>) of BasicHudFactory_Access_Array_Access;
   type BasicHudFactory_Access_Array_Access_Array_Access is access all BasicHudFactory_Access_Array_Access_Array;
   type BasicHudFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicHudFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicHudFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicHudFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicHudFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicHudFactory_Access_Array_Access is (if Value /= null and then Value.all in BasicHudFactory_Access_Array_Object'Class then BasicHudFactory_Access_Array_Object'Class (Value.all).Value else null);
   type BasicHudFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicHudFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicHudFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicHudFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicHudFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicHudFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicHudFactory_Access_Array_Access_Array_Object'Class then BasicHudFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
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
   function Java_Box (Value : BasicHudFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.graphics.hud.BasicHudFactory_Package_References.Java_Box;
   function Java_Unbox_BasicHudFactory_Access_Array (Value : access Java_Object'Class) return BasicHudFactory_Access_Array_Access renames org.allbinary.game.graphics.hud.BasicHudFactory_Package_References.Java_Unbox_BasicHudFactory_Access_Array;
   subtype BasicHudFactory_Access_Array_Access_Array is org.allbinary.game.graphics.hud.BasicHudFactory_Package_References.BasicHudFactory_Access_Array_Access_Array;
   function "=" (Left, Right : BasicHudFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.graphics.hud.BasicHudFactory_Package_References."=";
   subtype BasicHudFactory_Access_Array_Access_Array_Access is org.allbinary.game.graphics.hud.BasicHudFactory_Package_References.BasicHudFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicHudFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.graphics.hud.BasicHudFactory_Package_References."=";
   function Java_Box (Value : BasicHudFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.graphics.hud.BasicHudFactory_Package_References.Java_Box;
   function Java_Unbox_BasicHudFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicHudFactory_Access_Array_Access_Array_Access renames org.allbinary.game.graphics.hud.BasicHudFactory_Package_References.Java_Unbox_BasicHudFactory_Access_Array_Access_Array;

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


