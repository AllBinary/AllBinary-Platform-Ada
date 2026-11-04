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

limited with org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptCondition_Package;
package org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptCondition_Package_References is
   type ColorAtActionScriptCondition_Access is access all org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptCondition_Package.ColorAtActionScriptCondition'Class;
   type ColorAtActionScriptCondition_Access_Array is array (Natural range <>) of ColorAtActionScriptCondition_Access;
   type ColorAtActionScriptCondition_Access_Array_Access is access all ColorAtActionScriptCondition_Access_Array;
   type ColorAtActionScriptCondition_Access_Array_Access_Array is array (Natural range <>) of ColorAtActionScriptCondition_Access_Array_Access;
   type ColorAtActionScriptCondition_Access_Array_Access_Array_Access is access all ColorAtActionScriptCondition_Access_Array_Access_Array;
end org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptCondition_Package_References;

with org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptCondition_Package_References;
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
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.media.image.analysis.ColorRangeInterface_Package;
with org.allbinary.media.image.analysis.ColorRangeInterface_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.allbinary.input.automation.actions.script.condition.BasicProfileActionScriptCondition_Package; use org.allbinary.input.automation.actions.script.condition.BasicProfileActionScriptCondition_Package;
with org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionInterface_Package; use org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionInterface_Package;
limited with org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionJPanel_Package;
with org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionJPanel_Package_References;

package org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptCondition_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ColorRangeInterface_Package renames Standard.org.allbinary.media.image.analysis.ColorRangeInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
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
   subtype ColorRangeInterface_Access is org.allbinary.media.image.analysis.ColorRangeInterface_Package_References.ColorRangeInterface_Access;
   use type ColorRangeInterface_Access;
   subtype ColorRangeInterface_Access_Array is org.allbinary.media.image.analysis.ColorRangeInterface_Package_References.ColorRangeInterface_Access_Array;
   use type ColorRangeInterface_Access_Array;
   subtype ColorRangeInterface_Access_Array_Access is org.allbinary.media.image.analysis.ColorRangeInterface_Package_References.ColorRangeInterface_Access_Array_Access;
   use type ColorRangeInterface_Access_Array_Access;
   subtype ColorRangeInterface_Access_Array_Access_Array is org.allbinary.media.image.analysis.ColorRangeInterface_Package_References.ColorRangeInterface_Access_Array_Access_Array;
   use type ColorRangeInterface_Access_Array_Access_Array;
   subtype ColorRangeInterface_Access_Array_Access_Array_Access is org.allbinary.media.image.analysis.ColorRangeInterface_Package_References.ColorRangeInterface_Access_Array_Access_Array_Access;
   use type ColorRangeInterface_Access_Array_Access_Array_Access;
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   use type Document_Access;
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   use type Document_Access_Array;
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   use type Document_Access_Array_Access;
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   use type Document_Access_Array_Access_Array;
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   use type Document_Access_Array_Access_Array_Access;
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
   subtype ColorAtActionScriptConditionJPanel_Access is org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionJPanel_Package_References.ColorAtActionScriptConditionJPanel_Access;
   use type ColorAtActionScriptConditionJPanel_Access;
   subtype ColorAtActionScriptConditionJPanel_Access_Array is org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionJPanel_Package_References.ColorAtActionScriptConditionJPanel_Access_Array;
   use type ColorAtActionScriptConditionJPanel_Access_Array;
   subtype ColorAtActionScriptConditionJPanel_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionJPanel_Package_References.ColorAtActionScriptConditionJPanel_Access_Array_Access;
   use type ColorAtActionScriptConditionJPanel_Access_Array_Access;
   subtype ColorAtActionScriptConditionJPanel_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionJPanel_Package_References.ColorAtActionScriptConditionJPanel_Access_Array_Access_Array;
   use type ColorAtActionScriptConditionJPanel_Access_Array_Access_Array;
   subtype ColorAtActionScriptConditionJPanel_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionJPanel_Package_References.ColorAtActionScriptConditionJPanel_Access_Array_Access_Array_Access;
   use type ColorAtActionScriptConditionJPanel_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ColorAtActionScriptCondition_Access is org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptCondition_Package_References.ColorAtActionScriptCondition_Access;
   function "=" (Left, Right : ColorAtActionScriptCondition_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptCondition_Package_References."=";
   subtype ColorAtActionScriptCondition_Access_Array is org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptCondition_Package_References.ColorAtActionScriptCondition_Access_Array;
   function "=" (Left, Right : ColorAtActionScriptCondition_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptCondition_Package_References."=";
   subtype ColorAtActionScriptCondition_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptCondition_Package_References.ColorAtActionScriptCondition_Access_Array_Access;
   function "=" (Left, Right : ColorAtActionScriptCondition_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptCondition_Package_References."=";
   subtype ColorAtActionScriptCondition_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptCondition_Package_References.ColorAtActionScriptCondition_Access_Array_Access_Array;
   function "=" (Left, Right : ColorAtActionScriptCondition_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptCondition_Package_References."=";
   subtype ColorAtActionScriptCondition_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptCondition_Package_References.ColorAtActionScriptCondition_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ColorAtActionScriptCondition_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptCondition_Package_References."=";

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


