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

package org.allbinary.animation.SideScrollerAnimation_Package is


   type SideScrollerAnimation is tagged;
   type SideScrollerAnimation_Access is access all SideScrollerAnimation'Class;
   type SideScrollerAnimation_Access_Array is array (Natural range <>) of SideScrollerAnimation_Access;
   type SideScrollerAnimation_Access_Array_Access is access all SideScrollerAnimation_Access_Array;
   type SideScrollerAnimation_Access_Array_Access_Array is array (Natural range <>) of SideScrollerAnimation_Access_Array_Access;
   type SideScrollerAnimation_Access_Array_Access_Array_Access is access all SideScrollerAnimation_Access_Array_Access_Array;

   type SideScrollerAnimation is new Java_Object with null record;

   procedure Initialize (This : in out SideScrollerAnimation'Class);
   function Create return SideScrollerAnimation_Access;
   procedure jump (This : in out SideScrollerAnimation);
   procedure walk (This : in out SideScrollerAnimation);
   procedure run (This : in out SideScrollerAnimation);
   procedure crouch (This : in out SideScrollerAnimation);

end org.allbinary.animation.SideScrollerAnimation_Package;


