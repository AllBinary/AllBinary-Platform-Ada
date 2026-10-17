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
with org.allbinary.input.automation.module.game.HitPointGameObjectInterface_Package; use org.allbinary.input.automation.module.game.HitPointGameObjectInterface_Package;

package org.allbinary.input.automation.module.game.HitPointGameObject_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;

   type HitPointGameObject is tagged;
   type HitPointGameObject_Access is access all HitPointGameObject'Class;
   type HitPointGameObject_Access_Array is array (Natural range <>) of HitPointGameObject_Access;
   type HitPointGameObject_Access_Array_Access is access all HitPointGameObject_Access_Array;

   type HitPointGameObject is new MeteredGameObject and HitPointGameObjectInterface with record
      damaged : Boolean;
      closeDeath : Boolean;
      HP_LABEL : Unbounded_String;
      IS_DAMAGED_LABEL : Unbounded_String;
      IS_CLOSE_DEATH_LABEL : Unbounded_String;
   end record;

   procedure Initialize (This : in out HitPointGameObject'Class; bufferedImage : BufferedImage_Access_Array_Access; minX : Integer; maxX : Integer; y : Integer);
   function Create (bufferedImage : BufferedImage_Access_Array_Access; minX : Integer; maxX : Integer; y : Integer) return HitPointGameObject_Access;
   function isMoreThan (This : in out HitPointGameObject; aFloat : Float) return Boolean;
   procedure isMoreThan (This : in out HitPointGameObject; aFloat : Float);
   function isCloseDeath (This : in out HitPointGameObject) return Boolean;
   procedure isCloseDeath (This : in out HitPointGameObject);
   procedure setCloseDeath (This : in out HitPointGameObject; closeDeath : Boolean);
   function isDamaged (This : in out HitPointGameObject) return Boolean;
   procedure isDamaged (This : in out HitPointGameObject);
   procedure setDamaged (This : in out HitPointGameObject; damaged : Boolean);
   function toString (This : in out HitPointGameObject) return Unbounded_String;
   procedure toString (This : in out HitPointGameObject);

end org.allbinary.input.automation.module.game.HitPointGameObject_Package;


