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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;

package org.allbinary.input.motion.button.TouchButtonFactory_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;

   type TouchButtonFactory is tagged;
   type TouchButtonFactory_Access is access all TouchButtonFactory'Class;
   type TouchButtonFactory_Access_Array is array (Natural range <>) of TouchButtonFactory_Access;
   type TouchButtonFactory_Access_Array_Access is access all TouchButtonFactory_Access_Array;

   type TouchButtonFactory is new Java_Object with record
      LIST : BasicArrayList_Access;
      list_Case : BasicArrayList_Access;
      savedList : BasicArrayList_Access;
      saved : Boolean;
   end record;
   SINGLETON : TouchButtonFactory_Access;

   procedure Initialize (This : in out TouchButtonFactory'Class);
   function Create return TouchButtonFactory_Access;
   function getInstance return TouchButtonFactory_Access;
   procedure defaultList (This : in out TouchButtonFactory);
   procedure toggle (This : in out TouchButtonFactory; save : Boolean; list_Case : BasicArrayList_Access);
   procedure setList (This : in out TouchButtonFactory; list_Case : BasicArrayList_Access);
   function getList (This : in out TouchButtonFactory) return BasicArrayList_Access;

end org.allbinary.input.motion.button.TouchButtonFactory_Package;


