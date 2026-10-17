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
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;

package org.allbinary.input.automation.actions.script.ProfileActionScriptNodeInterface_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;

   type ProfileActionScriptNodeInterface is interface and DomNodeInterface and MutableTreeNode;
   type ProfileActionScriptNodeInterface_Access is access all ProfileActionScriptNodeInterface'Class;
   type ProfileActionScriptNodeInterface_Access_Array is array (Natural range <>) of ProfileActionScriptNodeInterface_Access;
   type ProfileActionScriptNodeInterface_Access_Array_Access is access all ProfileActionScriptNodeInterface_Access_Array;
   procedure addCondition (This : in out ProfileActionScriptNodeInterface; profileActionConditionInterface_Param : access ProfileActionScriptNodeInterface_Package.ProfileActionScriptNodeInterface'Class) is abstract;
   procedure removeCondition (This : in out ProfileActionScriptNodeInterface; profileActionConditionInterface_Param : access ProfileActionScriptNodeInterface_Package.ProfileActionScriptNodeInterface'Class) is abstract;

end org.allbinary.input.automation.actions.script.ProfileActionScriptNodeInterface_Package;


