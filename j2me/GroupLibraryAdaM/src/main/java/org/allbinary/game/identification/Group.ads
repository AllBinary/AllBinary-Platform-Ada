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
with org.allbinary.game.identification.GroupInterface_Package; use org.allbinary.game.identification.GroupInterface_Package;

package org.allbinary.game.identification.Group_Package is


   type Group is tagged;
   type Group_Access is access all Group'Class;
   type Group_Access_Array is array (Natural range <>) of Group_Access;
   type Group_Access_Array_Access is access all Group_Access_Array;
   type Group_Access_Array_Access_Array is array (Natural range <>) of Group_Access_Array_Access;
   type Group_Access_Array_Access_Array_Access is access all Group_Access_Array_Access_Array;

   type Group is new Java_Object and GroupInterface with record
      name : Unbounded_String;
      teamId : Short_Integer;
      string_Id : Unbounded_String;
   end record;

   procedure Initialize (This : in out Group'Class; teamName : Unbounded_String; teamId : Short_Integer);
   function Create (teamName : Unbounded_String; teamId : Short_Integer) return Group_Access;
   function getGroupName (This : in out Group) return Unbounded_String;
   procedure setName (This : in out Group; name : Unbounded_String);
   function getGroupId (This : in out Group) return Short_Integer;
   function toString (This : in out Group) return Unbounded_String;

end org.allbinary.game.identification.Group_Package;


