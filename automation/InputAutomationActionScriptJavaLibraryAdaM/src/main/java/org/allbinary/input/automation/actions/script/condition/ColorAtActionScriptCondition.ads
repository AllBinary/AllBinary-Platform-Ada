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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.graphics.color.ColorCacheFactory_Package; use org.allbinary.graphics.color.ColorCacheFactory_Package;
with org.allbinary.graphics.color.ColorCacheable_Package; use org.allbinary.graphics.color.ColorCacheable_Package;
with org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton_Package; use org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.util.cache.AutomaticCacheInterface_Package; use org.allbinary.logic.util.cache.AutomaticCacheInterface_Package;
with org.allbinary.media.image.analysis.ColorRange_Package; use org.allbinary.media.image.analysis.ColorRange_Package;
with org.allbinary.media.image.analysis.ColorRangeInterface_Package; use org.allbinary.media.image.analysis.ColorRangeInterface_Package;
with org.allbinary.media.image.cache.BufferedImageFrameCacheable_Package; use org.allbinary.media.image.cache.BufferedImageFrameCacheable_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;
with org.allbinary.input.automation.actions.script.condition.BasicProfileActionScriptCondition_Package; use org.allbinary.input.automation.actions.script.condition.BasicProfileActionScriptCondition_Package;
with org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionInterface_Package; use org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionInterface_Package;
with org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionJPanel_Package; use org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionJPanel_Package;
with org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionData_Package; use org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionData_Package;

package org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptCondition_Package is

   package DomNodeHelper_Package renames Standard.org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package ColorCacheFactory_Package renames Standard.org.allbinary.graphics.color.ColorCacheFactory_Package;
   package ColorCacheable_Package renames Standard.org.allbinary.graphics.color.ColorCacheable_Package;
   package CapturedBufferedImagesCacheSingleton_Package renames Standard.org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package AutomaticCacheInterface_Package renames Standard.org.allbinary.logic.util.cache.AutomaticCacheInterface_Package;
   package ColorRange_Package renames Standard.org.allbinary.media.image.analysis.ColorRange_Package;
   package ColorRangeInterface_Package renames Standard.org.allbinary.media.image.analysis.ColorRangeInterface_Package;
   package BufferedImageFrameCacheable_Package renames Standard.org.allbinary.media.image.cache.BufferedImageFrameCacheable_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;

   type ColorAtActionScriptCondition is tagged;
   type ColorAtActionScriptCondition_Access is access all ColorAtActionScriptCondition'Class;
   type ColorAtActionScriptCondition_Access_Array is array (Natural range <>) of ColorAtActionScriptCondition_Access;
   type ColorAtActionScriptCondition_Access_Array_Access is access all ColorAtActionScriptCondition_Access_Array;

   type ColorAtActionScriptCondition is new BasicProfileActionScriptCondition and ColorAtActionScriptConditionInterface with record
      logUtil : LogUtil_Access;
      colorAtActionScriptConditionJPanel : ColorAtActionScriptConditionJPanel_Access;
      point : Point_Access;
      colorRangeInterface : ColorRangeInterface_Access;
   end record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out ColorAtActionScriptCondition'Class; node : Node_Access);
   function Create (node : Node_Access) return ColorAtActionScriptCondition_Access;
   procedure init (This : in out ColorAtActionScriptCondition);
   function getPoint (This : in out ColorAtActionScriptCondition) return Point_Access;
   procedure setPoint (This : in out ColorAtActionScriptCondition; point : Point_Access);
   procedure showDialog (This : in out ColorAtActionScriptCondition);
   function toHashMap (This : in out ColorAtActionScriptCondition) return HashMap_Access;
   function toXmlNode (This : in out ColorAtActionScriptCondition; document : Document_Access) return Node_Access;
   procedure toXmlNode (This : in out ColorAtActionScriptCondition; document : Document_Access);
   function shouldProcess (This : in out ColorAtActionScriptCondition; frame : Long_Long_Integer) return Boolean;
   procedure shouldProcess (This : in out ColorAtActionScriptCondition; frame : Long_Long_Integer);
   procedure log (This : in out ColorAtActionScriptCondition);
   function getColorRangeInterface (This : in out ColorAtActionScriptCondition) return ColorRangeInterface_Access;
   procedure setColorRangeInterface (This : in out ColorAtActionScriptCondition; colorRangeInterface : ColorRangeInterface_Access);

end org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptCondition_Package;


