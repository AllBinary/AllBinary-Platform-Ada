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
with org.allbinary.graphics.ResizableListenerInterface_Package; use org.allbinary.graphics.ResizableListenerInterface_Package;

package org.allbinary.graphics.ResizableEmptyListener_Package is


   type ResizableEmptyListener is tagged;
   type ResizableEmptyListener_Access is access all ResizableEmptyListener'Class;
   type ResizableEmptyListener_Access_Array is array (Natural range <>) of ResizableEmptyListener_Access;
   type ResizableEmptyListener_Access_Array_Access is access all ResizableEmptyListener_Access_Array;
   type ResizableEmptyListener_Access_Array_Access_Array is array (Natural range <>) of ResizableEmptyListener_Access_Array_Access;
   type ResizableEmptyListener_Access_Array_Access_Array_Access is access all ResizableEmptyListener_Access_Array_Access_Array;

   type ResizableEmptyListener is new Java_Object and ResizableListenerInterface with null record;

   procedure Initialize (This : in out ResizableEmptyListener'Class);
   function Create return ResizableEmptyListener_Access;
   procedure onResizable (This : in out ResizableEmptyListener; isResizable : Boolean);

end org.allbinary.graphics.ResizableEmptyListener_Package;


