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
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.util.BasicArrayListS_Package; use org.allbinary.util.BasicArrayListS_Package;

package org.allbinary.util.ImmutableBasicArrayList_Package is

   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;

   type ImmutableBasicArrayList is tagged;
   type ImmutableBasicArrayList_Access is access all ImmutableBasicArrayList'Class;
   type ImmutableBasicArrayList_Access_Array is array (Natural range <>) of ImmutableBasicArrayList_Access;
   type ImmutableBasicArrayList_Access_Array_Access is access all ImmutableBasicArrayList_Access_Array;

   type ImmutableBasicArrayList is new BasicArrayListS with record
      name : Unbounded_String;
   end record;

   procedure Initialize (This : in out ImmutableBasicArrayList'Class; name : Unbounded_String; size : Integer);
   function Create (name : Unbounded_String; size : Integer) return ImmutableBasicArrayList_Access;
   function add (This : in out ImmutableBasicArrayList; e_Param : access Java_Object'Class) return Boolean;
   procedure add (This : in out ImmutableBasicArrayList; e_Param : access Java_Object'Class);
   procedure addAt (This : in out ImmutableBasicArrayList; index : Integer; element_Param : access Java_Object'Class);
   function toString (This : in out ImmutableBasicArrayList) return Unbounded_String;

end org.allbinary.util.ImmutableBasicArrayList_Package;


