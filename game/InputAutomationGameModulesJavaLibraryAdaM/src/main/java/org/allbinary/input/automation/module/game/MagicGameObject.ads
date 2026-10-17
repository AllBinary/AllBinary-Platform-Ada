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
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.input.automation.module.game.MeteredGameObject_Package; use org.allbinary.input.automation.module.game.MeteredGameObject_Package;
with org.allbinary.input.automation.module.game.MagicGameObjectInterface_Package; use org.allbinary.input.automation.module.game.MagicGameObjectInterface_Package;

package org.allbinary.input.automation.module.game.MagicGameObject_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;

   type MagicGameObject is tagged;
   type MagicGameObject_Access is access all MagicGameObject'Class;
   type MagicGameObject_Access_Array is array (Natural range <>) of MagicGameObject_Access;
   type MagicGameObject_Access_Array_Access is access all MagicGameObject_Access_Array;

   type MagicGameObject is new MeteredGameObject and MagicGameObjectInterface with record
      MP_LABEL : Unbounded_String;
   end record;

   procedure Initialize (This : in out MagicGameObject'Class; bufferedImage : BufferedImage_Access_Array_Access; minX : Integer; maxX : Integer; y : Integer);
   function Create (bufferedImage : BufferedImage_Access_Array_Access; minX : Integer; maxX : Integer; y : Integer) return MagicGameObject_Access;
   function toString (This : in out MagicGameObject) return Unbounded_String;

end org.allbinary.input.automation.module.game.MagicGameObject_Package;


