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
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;

package org.allbinary.game.identification.BasicGroupFactory_Package is

   package NullUtil_Package renames org.allbinary.logic.NullUtil_Package;

   type BasicGroupFactory is tagged;
   type BasicGroupFactory_Access is access all BasicGroupFactory'Class;
   type BasicGroupFactory_Access_Array is array (Natural range <>) of BasicGroupFactory_Access;
   type BasicGroupFactory_Access_Array_Access is access all BasicGroupFactory_Access_Array;

   type BasicGroupFactory is new Java_Object with record
      NAME : Unbounded_String;
      NO_SUCH_GROUP : Unbounded_String;
      GOOD : Group_Access;
      ENEMY : Group_Access;
      ENEMY_ON_LEVEL : Group_Access;
      NONE : Group_Access;
      GOOD_ARRAY : Group_Access_Array_Access;
      ENEMY_ARRAY : Group_Access_Array_Access;
      ENEMY_ON_LEVEL_ARRAY : Group_Access_Array_Access;
      NONE_ARRAY : Group_Access_Array_Access;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out BasicGroupFactory'Class);
   function Create return BasicGroupFactory_Access;
   function getInstance return BasicGroupFactory_Access;
   procedure getInstance;

end org.allbinary.game.identification.BasicGroupFactory_Package;


