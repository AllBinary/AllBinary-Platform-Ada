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
--  with javax.swing.tree.MutableTreeNode_Package; use javax.swing.tree.MutableTreeNode_Package;
with org.allbinary.graphics.j2me.workarea.tools.event.EventObject_Package; use org.allbinary.graphics.j2me.workarea.tools.event.EventObject_Package;
with org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventSource_Package; use org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventSource_Package;

package org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package is


   type MyGraphicItemEvent is tagged;
   type MyGraphicItemEvent_Access is access all MyGraphicItemEvent'Class;
   type MyGraphicItemEvent_Access_Array is array (Natural range <>) of MyGraphicItemEvent_Access;
   type MyGraphicItemEvent_Access_Array_Access is access all MyGraphicItemEvent_Access_Array;

   type MyGraphicItemEvent is new EventObject with null record;

   procedure Initialize (This : in out MyGraphicItemEvent'Class; source : Java_Object_Access);
   function Create (source : Java_Object_Access) return MyGraphicItemEvent_Access;
   function getSource (This : in out MyGraphicItemEvent) return Java_Object_Access;
   function toString (This : in out MyGraphicItemEvent) return Unbounded_String;
   function getCommand (This : in out MyGraphicItemEvent) return Unbounded_String;
   function getTreeNode (This : in out MyGraphicItemEvent) return MutableTreeNode_Access;
   function getAngle (This : in out MyGraphicItemEvent) return Long_Float;

end org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package;


