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

limited with org.allbinary.input.automation.module.game.MagicGameObject_Package;
package org.allbinary.input.automation.module.game.MagicGameObject_Package_References is
   type MagicGameObject_Access is access all org.allbinary.input.automation.module.game.MagicGameObject_Package.MagicGameObject'Class;
   type MagicGameObject_Access_Array is array (Natural range <>) of MagicGameObject_Access;
   type MagicGameObject_Access_Array_Access is access all MagicGameObject_Access_Array;
   type MagicGameObject_Access_Array_Access_Array is array (Natural range <>) of MagicGameObject_Access_Array_Access;
   type MagicGameObject_Access_Array_Access_Array_Access is access all MagicGameObject_Access_Array_Access_Array;
end org.allbinary.input.automation.module.game.MagicGameObject_Package_References;

with org.allbinary.input.automation.module.game.MagicGameObject_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
with org.allbinary.input.automation.module.game.MeteredGameObject_Package; use org.allbinary.input.automation.module.game.MeteredGameObject_Package;
with org.allbinary.input.automation.module.game.MagicGameObjectInterface_Package; use org.allbinary.input.automation.module.game.MagicGameObjectInterface_Package;

package org.allbinary.input.automation.module.game.MagicGameObject_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype MagicGameObject_Access is org.allbinary.input.automation.module.game.MagicGameObject_Package_References.MagicGameObject_Access;
   function "=" (Left, Right : MagicGameObject_Access) return Boolean renames org.allbinary.input.automation.module.game.MagicGameObject_Package_References."=";
   subtype MagicGameObject_Access_Array is org.allbinary.input.automation.module.game.MagicGameObject_Package_References.MagicGameObject_Access_Array;
   function "=" (Left, Right : MagicGameObject_Access_Array) return Boolean renames org.allbinary.input.automation.module.game.MagicGameObject_Package_References."=";
   subtype MagicGameObject_Access_Array_Access is org.allbinary.input.automation.module.game.MagicGameObject_Package_References.MagicGameObject_Access_Array_Access;
   function "=" (Left, Right : MagicGameObject_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.game.MagicGameObject_Package_References."=";
   subtype MagicGameObject_Access_Array_Access_Array is org.allbinary.input.automation.module.game.MagicGameObject_Package_References.MagicGameObject_Access_Array_Access_Array;
   function "=" (Left, Right : MagicGameObject_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.game.MagicGameObject_Package_References."=";
   subtype MagicGameObject_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.game.MagicGameObject_Package_References.MagicGameObject_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MagicGameObject_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.game.MagicGameObject_Package_References."=";

   type MagicGameObject is new MeteredGameObject and MagicGameObjectInterface with record
      MP_LABEL : Unbounded_String;
   end record;

   procedure Initialize (This : in out MagicGameObject'Class; bufferedImage : BufferedImage_Access_Array_Access; minX : Integer; maxX : Integer; y : Integer);
   function Create (bufferedImage : BufferedImage_Access_Array_Access; minX : Integer; maxX : Integer; y : Integer) return MagicGameObject_Access;
   function toString (This : in out MagicGameObject) return Unbounded_String;

end org.allbinary.input.automation.module.game.MagicGameObject_Package;


