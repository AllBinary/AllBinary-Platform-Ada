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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.identification.Group_Package; use org.allbinary.game.identification.Group_Package;

package org.allbinary.game.identification.GroupFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type GroupFactory is tagged;
   type GroupFactory_Access is access all GroupFactory'Class;
   type GroupFactory_Access_Array is array (Natural range <>) of GroupFactory_Access;
   type GroupFactory_Access_Array_Access is access all GroupFactory_Access_Array;
   type GroupFactory_Access_Array_Access_Array is array (Natural range <>) of GroupFactory_Access_Array_Access;
   type GroupFactory_Access_Array_Access_Array_Access is access all GroupFactory_Access_Array_Access_Array;

   type GroupFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      NULL_GROUP_ARRAY : Group_Access_Array_Access;
      list : BasicArrayList_Access;
      index : Integer;
   end record;
   instance : GroupFactory_Access;

   procedure Initialize (This : in out GroupFactory'Class);
   function Create return GroupFactory_Access;
   function getInstance return GroupFactory_Access;
   function getNextGroup (This : in out GroupFactory) return Group_Access;
   function getNextGroupByName (This : in out GroupFactory; name : Unbounded_String) return Group_Access;
   procedure getNextGroupByName (This : in out GroupFactory; name : Unbounded_String);
   procedure init (This : in out GroupFactory; groups : Short_Integer; nameArray : Unbounded_String_Array_Access);

end org.allbinary.game.identification.GroupFactory_Package;


