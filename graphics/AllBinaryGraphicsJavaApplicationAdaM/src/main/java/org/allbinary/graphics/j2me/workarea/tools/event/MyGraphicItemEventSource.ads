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

package org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventSource_Package is


   type MyGraphicItemEventSource is tagged;
   type MyGraphicItemEventSource_Access is access all MyGraphicItemEventSource'Class;
   type MyGraphicItemEventSource_Access_Array is array (Natural range <>) of MyGraphicItemEventSource_Access;
   type MyGraphicItemEventSource_Access_Array_Access is access all MyGraphicItemEventSource_Access_Array;

   type MyGraphicItemEventSource is new Java_Object with record
      command : Unbounded_String;
      treeNode : MutableTreeNode_Access;
      angle : Long_Float;
   end record;

   procedure Initialize (This : in out MyGraphicItemEventSource'Class; command : Unbounded_String; treeNode : MutableTreeNode_Access);
   function Create (command : Unbounded_String; treeNode : MutableTreeNode_Access) return MyGraphicItemEventSource_Access;
   procedure Initialize (This : in out MyGraphicItemEventSource'Class; command : Unbounded_String; angle : Long_Float; treeNode : MutableTreeNode_Access);
   function Create (command : Unbounded_String; angle : Long_Float; treeNode : MutableTreeNode_Access) return MyGraphicItemEventSource_Access;
   function getCommand (This : in out MyGraphicItemEventSource) return Unbounded_String;
   function getTreeNode (This : in out MyGraphicItemEventSource) return MutableTreeNode_Access;
   function getAngle (This : in out MyGraphicItemEventSource) return Long_Float;
   procedure setAngle (This : in out MyGraphicItemEventSource; angle : Long_Float);

end org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventSource_Package;


