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
--  with java.awt.Color_Package; use java.awt.Color_Package;
--  with java.awt.Point_Package; use java.awt.Point_Package;
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.media.image.analysis.ColorRangeInterface_Package; use org.allbinary.media.image.analysis.ColorRangeInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.input.automation.actions.script.condition.BasicProfileActionScriptCondition_Package; use org.allbinary.input.automation.actions.script.condition.BasicProfileActionScriptCondition_Package;
with org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionInterface_Package; use org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionInterface_Package;
with org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionJPanel_Package; use org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionJPanel_Package;

package org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptCondition_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ColorRangeInterface_Package renames Standard.org.allbinary.media.image.analysis.ColorRangeInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type ColorAtActionScriptCondition is tagged;
   type ColorAtActionScriptCondition_Access is access all ColorAtActionScriptCondition'Class;
   type ColorAtActionScriptCondition_Access_Array is array (Natural range <>) of ColorAtActionScriptCondition_Access;
   type ColorAtActionScriptCondition_Access_Array_Access is access all ColorAtActionScriptCondition_Access_Array;
   type ColorAtActionScriptCondition_Access_Array_Access_Array is array (Natural range <>) of ColorAtActionScriptCondition_Access_Array_Access;
   type ColorAtActionScriptCondition_Access_Array_Access_Array_Access is access all ColorAtActionScriptCondition_Access_Array_Access_Array;

   type ColorAtActionScriptCondition is new BasicProfileActionScriptCondition and ColorAtActionScriptConditionInterface with record
      logUtil : LogUtil_Access;
      colorAtActionScriptConditionJPanel : ColorAtActionScriptConditionJPanel_Access;
      point : Point_Access;
      colorRangeInterface : ColorRangeInterface_Access;
   end record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out ColorAtActionScriptCondition'Class; node_Param : access Node_Package.Node'Class);
   function Create (node_Param : access Node_Package.Node'Class) return ColorAtActionScriptCondition_Access;
   procedure Initialize (This : in out ColorAtActionScriptCondition'Class);
   function Create return ColorAtActionScriptCondition_Access;
   procedure init (This : in out ColorAtActionScriptCondition);
   function getPoint (This : in out ColorAtActionScriptCondition) return Point_Access;
   procedure setPoint (This : in out ColorAtActionScriptCondition; point_Param : access Point_Package.Point'Class);
   procedure showDialog (This : in out ColorAtActionScriptCondition);
   function toHashMap (This : in out ColorAtActionScriptCondition) return HashMap_Access;
   function toXmlNode (This : in out ColorAtActionScriptCondition; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out ColorAtActionScriptCondition; document_Param : access Document_Package.Document'Class);
   function shouldProcess (This : in out ColorAtActionScriptCondition; frame : Long_Long_Integer) return Boolean;
   procedure shouldProcess (This : in out ColorAtActionScriptCondition; frame : Long_Long_Integer);
   procedure log (This : in out ColorAtActionScriptCondition);
   function getColorRangeInterface (This : in out ColorAtActionScriptCondition) return ColorRangeInterface_Access;
   procedure setColorRangeInterface (This : in out ColorAtActionScriptCondition; colorRangeInterface_Param : access ColorRangeInterface_Package.ColorRangeInterface'Class);

end org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptCondition_Package;


