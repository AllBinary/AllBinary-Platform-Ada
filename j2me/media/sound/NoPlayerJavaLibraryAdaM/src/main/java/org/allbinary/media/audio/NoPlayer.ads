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
--  with javax.microedition.media.Control_Package; use javax.microedition.media.Control_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.media.audio.BasicPlayer_Package; use org.allbinary.media.audio.BasicPlayer_Package;

package org.allbinary.media.audio.NoPlayer_Package is

   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;

   type NoPlayer is tagged;
   type NoPlayer_Access is access all NoPlayer'Class;
   type NoPlayer_Access_Array is array (Natural range <>) of NoPlayer_Access;
   type NoPlayer_Access_Array_Access is access all NoPlayer_Access_Array;

   type NoPlayer is new BasicPlayer with null record;
   NO_PLAYER : NoPlayer_Access;

   procedure Initialize (This : in out NoPlayer'Class);
   function Create return NoPlayer_Access;
   procedure close (This : in out NoPlayer);
   function getContentType (This : in out NoPlayer) return Unbounded_String;
   procedure getContentType (This : in out NoPlayer);
   function getControl (This : in out NoPlayer; controlType : Unbounded_String) return Control_Access;
   procedure getControl (This : in out NoPlayer; controlType : Unbounded_String);
   function getControls (This : in out NoPlayer) return Control_Access_Array_Access;
   procedure getControls (This : in out NoPlayer);

end org.allbinary.media.audio.NoPlayer_Package;


