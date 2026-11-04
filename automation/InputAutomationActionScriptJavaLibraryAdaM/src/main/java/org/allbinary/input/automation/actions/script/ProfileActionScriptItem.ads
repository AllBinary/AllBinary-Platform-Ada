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

limited with org.allbinary.input.automation.actions.script.ProfileActionScriptItem_Package;
package org.allbinary.input.automation.actions.script.ProfileActionScriptItem_Package_References is
   type ProfileActionScriptItem_Access is access all org.allbinary.input.automation.actions.script.ProfileActionScriptItem_Package.ProfileActionScriptItem'Class;
   type ProfileActionScriptItem_Access_Array is array (Natural range <>) of ProfileActionScriptItem_Access;
   type ProfileActionScriptItem_Access_Array_Access is access all ProfileActionScriptItem_Access_Array;
   type ProfileActionScriptItem_Access_Array_Access_Array is array (Natural range <>) of ProfileActionScriptItem_Access_Array_Access;
   type ProfileActionScriptItem_Access_Array_Access_Array_Access is access all ProfileActionScriptItem_Access_Array_Access_Array;
end org.allbinary.input.automation.actions.script.ProfileActionScriptItem_Package_References;

with org.allbinary.input.automation.actions.script.ProfileActionScriptItem_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.event.ActionEvent_Package; use java.awt.event.ActionEvent_Package;
--  with java.awt.event.ActionListener_Package; use java.awt.event.ActionListener_Package;
--  with javax.swing.tree.DefaultMutableTreeNode_Package; use javax.swing.tree.DefaultMutableTreeNode_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.allbinary.input.automation.actions.script.ProfileActionScriptItemInterface_Package; use org.allbinary.input.automation.actions.script.ProfileActionScriptItemInterface_Package;
limited with org.allbinary.input.automation.actions.script.JPopupMenu_Package;
with org.allbinary.input.automation.actions.script.JPopupMenu_Package_References;

package org.allbinary.input.automation.actions.script.ProfileActionScriptItem_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   use type Node_Access;
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   use type Node_Access_Array;
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   use type Node_Access_Array_Access;
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   use type Node_Access_Array_Access_Array;
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   use type Node_Access_Array_Access_Array_Access;
   subtype JPopupMenu_Access is org.allbinary.input.automation.actions.script.JPopupMenu_Package_References.JPopupMenu_Access;
   use type JPopupMenu_Access;
   subtype JPopupMenu_Access_Array is org.allbinary.input.automation.actions.script.JPopupMenu_Package_References.JPopupMenu_Access_Array;
   use type JPopupMenu_Access_Array;
   subtype JPopupMenu_Access_Array_Access is org.allbinary.input.automation.actions.script.JPopupMenu_Package_References.JPopupMenu_Access_Array_Access;
   use type JPopupMenu_Access_Array_Access;
   subtype JPopupMenu_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.JPopupMenu_Package_References.JPopupMenu_Access_Array_Access_Array;
   use type JPopupMenu_Access_Array_Access_Array;
   subtype JPopupMenu_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.JPopupMenu_Package_References.JPopupMenu_Access_Array_Access_Array_Access;
   use type JPopupMenu_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ProfileActionScriptItem_Access is org.allbinary.input.automation.actions.script.ProfileActionScriptItem_Package_References.ProfileActionScriptItem_Access;
   function "=" (Left, Right : ProfileActionScriptItem_Access) return Boolean renames org.allbinary.input.automation.actions.script.ProfileActionScriptItem_Package_References."=";
   subtype ProfileActionScriptItem_Access_Array is org.allbinary.input.automation.actions.script.ProfileActionScriptItem_Package_References.ProfileActionScriptItem_Access_Array;
   function "=" (Left, Right : ProfileActionScriptItem_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.ProfileActionScriptItem_Package_References."=";
   subtype ProfileActionScriptItem_Access_Array_Access is org.allbinary.input.automation.actions.script.ProfileActionScriptItem_Package_References.ProfileActionScriptItem_Access_Array_Access;
   function "=" (Left, Right : ProfileActionScriptItem_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.ProfileActionScriptItem_Package_References."=";
   subtype ProfileActionScriptItem_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.ProfileActionScriptItem_Package_References.ProfileActionScriptItem_Access_Array_Access_Array;
   function "=" (Left, Right : ProfileActionScriptItem_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.ProfileActionScriptItem_Package_References."=";
   subtype ProfileActionScriptItem_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.ProfileActionScriptItem_Package_References.ProfileActionScriptItem_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ProfileActionScriptItem_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.ProfileActionScriptItem_Package_References."=";

   type ProfileActionScriptItem is new Java_Object and ProfileActionScriptItemInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      jPopupMenu : JPopupMenu_Access;
   end record;
   EDIT : Unbounded_String;
   DELETE : Unbounded_String;
   NEW_CONDITION : Unbounded_String;
   NEW_INPUT : Unbounded_String;
   NEW_OUTPUT : Unbounded_String;
   NEW_COLOR_AT : Unbounded_String;
   NEW_TIME_INTERVAL : Unbounded_String;
   NEW_ALWAYS : Unbounded_String;
   NEW_KEY_INPUT : Unbounded_String;
   NEW_MOUSE_INPUT : Unbounded_String;
   NEW_JOYSTICK_INPUT : Unbounded_String;
   NEW_IMAGE_OUTPUT : Unbounded_String;

   procedure Initialize (This : in out ProfileActionScriptItem'Class; label : Unbounded_String; node_Param : access Node_Package.Node'Class);
   function Create (label : Unbounded_String; node_Param : access Node_Package.Node'Class) return ProfileActionScriptItem_Access;
   procedure Initialize (This : in out ProfileActionScriptItem'Class; label : Unbounded_String);
   function Create (label : Unbounded_String) return ProfileActionScriptItem_Access;
   procedure init (This : in out ProfileActionScriptItem);
   procedure process (This : in out ProfileActionScriptItem; frame : Long_Long_Integer);
   function getJPopupMenu (This : in out ProfileActionScriptItem) return JPopupMenu_Access;
   procedure showDialog (This : in out ProfileActionScriptItem);
   procedure actionPerformed (This : in out ProfileActionScriptItem; actionEvent_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure setJPopupMenu (This : in out ProfileActionScriptItem; jPopupMenu_Param : access JPopupMenu_Package.JPopupMenu'Class);

end org.allbinary.input.automation.actions.script.ProfileActionScriptItem_Package;


