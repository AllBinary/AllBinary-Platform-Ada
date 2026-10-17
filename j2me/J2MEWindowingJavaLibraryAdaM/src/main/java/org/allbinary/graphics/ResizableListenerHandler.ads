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

package org.allbinary.graphics.ResizableListenerHandler_Package is


   type ResizableListenerHandler is tagged;
   type ResizableListenerHandler_Access is access all ResizableListenerHandler'Class;
   type ResizableListenerHandler_Access_Array is array (Natural range <>) of ResizableListenerHandler_Access;
   type ResizableListenerHandler_Access_Array_Access is access all ResizableListenerHandler_Access_Array;

   type ResizableListenerHandler is new Java_Object with null record;
   instance : ResizableListenerHandler_Access;

   procedure Initialize (This : in out ResizableListenerHandler'Class);
   function Create return ResizableListenerHandler_Access;
   function getInstance return ResizableListenerHandler_Access;
   procedure getInstance;
   procedure setListener (This : in out ResizableListenerHandler; resizableListenerInterface : ResizableListenerInterface_Access);
   procedure fire (This : in out ResizableListenerHandler; isFullScreen : Boolean);
   procedure fireEvent (This : in out ResizableListenerHandler; value : Boolean);

end org.allbinary.graphics.ResizableListenerHandler_Package;


