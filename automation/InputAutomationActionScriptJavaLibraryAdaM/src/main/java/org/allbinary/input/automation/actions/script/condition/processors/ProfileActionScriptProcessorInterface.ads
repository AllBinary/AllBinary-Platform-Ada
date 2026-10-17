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
with org.allbinary.input.automation.actions.script.ProfileActionScriptItemInterface_Package; use org.allbinary.input.automation.actions.script.ProfileActionScriptItemInterface_Package;
with org.allbinary.input.automation.actions.script.condition.CustomTreeNodeInterface_Package; use org.allbinary.input.automation.actions.script.condition.CustomTreeNodeInterface_Package;

package org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package ProfileActionScriptItemInterface_Package renames Standard.org.allbinary.input.automation.actions.script.ProfileActionScriptItemInterface_Package;
   package CustomTreeNodeInterface_Package renames Standard.org.allbinary.input.automation.actions.script.condition.CustomTreeNodeInterface_Package;

   type ProfileActionScriptProcessorInterface is interface and CustomTreeNodeInterface and DomNodeInterface and MutableTreeNode and ProfileActionScriptItemInterface;
   type ProfileActionScriptProcessorInterface_Access is access all ProfileActionScriptProcessorInterface'Class;
   type ProfileActionScriptProcessorInterface_Access_Array is array (Natural range <>) of ProfileActionScriptProcessorInterface_Access;
   type ProfileActionScriptProcessorInterface_Access_Array_Access is access all ProfileActionScriptProcessorInterface_Access_Array;

end org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package;


