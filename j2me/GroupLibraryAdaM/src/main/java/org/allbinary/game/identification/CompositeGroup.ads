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

package org.allbinary.game.identification.CompositeGroup_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type CompositeGroup is tagged;
   type CompositeGroup_Access is access all CompositeGroup'Class;
   type CompositeGroup_Access_Array is array (Natural range <>) of CompositeGroup_Access;
   type CompositeGroup_Access_Array_Access is access all CompositeGroup_Access_Array;
   type CompositeGroup_Access_Array_Access_Array is array (Natural range <>) of CompositeGroup_Access_Array_Access;
   type CompositeGroup_Access_Array_Access_Array_Access is access all CompositeGroup_Access_Array_Access_Array;

   type CompositeGroup is new Java_Object with record
      logUtil : LogUtil_Access;
      groupInterface : Group_Access;
      list : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out CompositeGroup'Class; groupInterface_Param : access Group_Package.Group'Class);
   function Create (groupInterface_Param : access Group_Package.Group'Class) return CompositeGroup_Access;
   procedure clear (This : in out CompositeGroup);
   procedure add (This : in out CompositeGroup; groupInterface_Param : access Group_Package.Group'Class);
   function isInGroup (This : in out CompositeGroup; groupInterface_Param : access Group_Package.Group'Class) return Boolean;
   procedure isInGroup (This : in out CompositeGroup; groupInterface_Param : access Group_Package.Group'Class);
   function getGroup (This : in out CompositeGroup) return Group_Access;

end org.allbinary.game.identification.CompositeGroup_Package;


