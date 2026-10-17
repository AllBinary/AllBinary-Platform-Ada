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
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.math.BasicDecimal_Package; use org.allbinary.logic.math.BasicDecimal_Package;

package org.allbinary.logic.math.Orientation_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;

   type Orientation is tagged;
   type Orientation_Access is access all Orientation'Class;
   type Orientation_Access_Array is array (Natural range <>) of Orientation_Access;
   type Orientation_Access_Array_Access is access all Orientation_Access_Array;

   type Orientation is new Java_Object with record
      yaw : BasicDecimal_Access;
      pitch : BasicDecimal_Access;
      roll : BasicDecimal_Access;
   end record;
   NONE : Orientation_Access;
   SINGLETON : Orientation_Access;

   procedure Initialize (This : in out Orientation'Class; yaw : Integer; pitch : Integer; roll : Integer);
   function Create (yaw : Integer; pitch : Integer; roll : Integer) return Orientation_Access;
   function getInstance (yaw : Integer; pitch : Integer; roll : Integer) return Orientation_Access;
   procedure getInstance (yaw : Integer; pitch : Integer; roll : Integer);
   function toString (This : in out Orientation) return Unbounded_String;

end org.allbinary.logic.math.Orientation_Package;


