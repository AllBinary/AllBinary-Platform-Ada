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

with AllBinary_Java;
limited with org.allbinary.graphics.j2me.workarea.WorkAreaJPanel_Package;
package org.allbinary.graphics.j2me.workarea.WorkAreaJPanel_Package_References is
   type WorkAreaJPanel_Access is access all org.allbinary.graphics.j2me.workarea.WorkAreaJPanel_Package.WorkAreaJPanel'Class;
   type WorkAreaJPanel_Access_Array is array (Natural range <>) of WorkAreaJPanel_Access;
   type WorkAreaJPanel_Access_Array_Access is access all WorkAreaJPanel_Access_Array;
   type WorkAreaJPanel_Access_Array_Access_Array is array (Natural range <>) of WorkAreaJPanel_Access_Array_Access;
   type WorkAreaJPanel_Access_Array_Access_Array_Access is access all WorkAreaJPanel_Access_Array_Access_Array;
   type WorkAreaJPanel_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : WorkAreaJPanel_Access_Array_Access;
   end record;
   function Java_Box (Value : WorkAreaJPanel_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new WorkAreaJPanel_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_WorkAreaJPanel_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return WorkAreaJPanel_Access_Array_Access is (if Value /= null and then Value.all in WorkAreaJPanel_Access_Array_Object'Class then WorkAreaJPanel_Access_Array_Object'Class (Value.all).Value else null);
   type WorkAreaJPanel_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : WorkAreaJPanel_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : WorkAreaJPanel_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new WorkAreaJPanel_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_WorkAreaJPanel_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return WorkAreaJPanel_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in WorkAreaJPanel_Access_Array_Access_Array_Object'Class then WorkAreaJPanel_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.j2me.workarea.WorkAreaJPanel_Package_References;

with org.allbinary.graphics.j2me.workarea.WorkAreaJPanel_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.util.EventListener_Package; use java.util.EventListener_Package;
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with java.util.LinkedList_Package; use java.util.LinkedList_Package;
--  with javax.swing.tree.MutableTreeNode_Package; use javax.swing.tree.MutableTreeNode_Package;
limited with org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package;
with org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package_References;
limited with org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package;
with org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package_References;
with org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventListener_Package; use org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventListener_Package;
limited with org.allbinary.graphics.j2me.workarea.properties.PropertiesJPanel_Package;
with org.allbinary.graphics.j2me.workarea.properties.PropertiesJPanel_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
--  with java.awt.GridBagConstraints_Package; use java.awt.GridBagConstraints_Package;
--  with java.awt.GridLayout_Package; use java.awt.GridLayout_Package;
--  with java.awt.event.KeyAdapter_Package; use java.awt.event.KeyAdapter_Package;
with java.awt.event.KeyEvent_Package; use java.awt.event.KeyEvent_Package;
--  with javax.swing.JPanel_Package; use javax.swing.JPanel_Package;
with org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface_Package; use org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface_Package;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;
limited with org.allbinary.graphics.j2me.workarea.WorkAreaJTreeJPanel_Package;
with org.allbinary.graphics.j2me.workarea.WorkAreaJTreeJPanel_Package_References;
limited with org.allbinary.graphics.j2me.workarea.Dimension_Package;
with org.allbinary.graphics.j2me.workarea.Dimension_Package_References;
limited with org.allbinary.graphics.j2me.workarea.WorkAreaDom_Package;
with org.allbinary.graphics.j2me.workarea.WorkAreaDom_Package_References;

package org.allbinary.graphics.j2me.workarea.WorkAreaJPanel_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package CanvasJPanel_Package renames Standard.org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package;
   package MyCanvasEvent_Package renames Standard.org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package;
   package MyCanvasEventListener_Package renames Standard.org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventListener_Package;
   package PropertiesJPanel_Package renames Standard.org.allbinary.graphics.j2me.workarea.properties.PropertiesJPanel_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package KeyEvent_Package renames Standard.java.awt.event.KeyEvent_Package;
   package Runnable_Package renames Standard.java.lang.Runnable_Package;
   package Reference_Types is
   subtype CanvasJPanel_Access is org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package_References.CanvasJPanel_Access;
   use type CanvasJPanel_Access;
   subtype CanvasJPanel_Access_Array is org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package_References.CanvasJPanel_Access_Array;
   use type CanvasJPanel_Access_Array;
   subtype CanvasJPanel_Access_Array_Access is org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package_References.CanvasJPanel_Access_Array_Access;
   use type CanvasJPanel_Access_Array_Access;
   subtype CanvasJPanel_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package_References.CanvasJPanel_Access_Array_Access_Array;
   use type CanvasJPanel_Access_Array_Access_Array;
   subtype CanvasJPanel_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package_References.CanvasJPanel_Access_Array_Access_Array_Access;
   use type CanvasJPanel_Access_Array_Access_Array_Access;
   subtype MyCanvasEvent_Access is org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package_References.MyCanvasEvent_Access;
   use type MyCanvasEvent_Access;
   subtype MyCanvasEvent_Access_Array is org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package_References.MyCanvasEvent_Access_Array;
   use type MyCanvasEvent_Access_Array;
   subtype MyCanvasEvent_Access_Array_Access is org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package_References.MyCanvasEvent_Access_Array_Access;
   use type MyCanvasEvent_Access_Array_Access;
   subtype MyCanvasEvent_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package_References.MyCanvasEvent_Access_Array_Access_Array;
   use type MyCanvasEvent_Access_Array_Access_Array;
   subtype MyCanvasEvent_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package_References.MyCanvasEvent_Access_Array_Access_Array_Access;
   use type MyCanvasEvent_Access_Array_Access_Array_Access;
   subtype PropertiesJPanel_Access is org.allbinary.graphics.j2me.workarea.properties.PropertiesJPanel_Package_References.PropertiesJPanel_Access;
   use type PropertiesJPanel_Access;
   subtype PropertiesJPanel_Access_Array is org.allbinary.graphics.j2me.workarea.properties.PropertiesJPanel_Package_References.PropertiesJPanel_Access_Array;
   use type PropertiesJPanel_Access_Array;
   subtype PropertiesJPanel_Access_Array_Access is org.allbinary.graphics.j2me.workarea.properties.PropertiesJPanel_Package_References.PropertiesJPanel_Access_Array_Access;
   use type PropertiesJPanel_Access_Array_Access;
   subtype PropertiesJPanel_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.properties.PropertiesJPanel_Package_References.PropertiesJPanel_Access_Array_Access_Array;
   use type PropertiesJPanel_Access_Array_Access_Array;
   subtype PropertiesJPanel_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.properties.PropertiesJPanel_Package_References.PropertiesJPanel_Access_Array_Access_Array_Access;
   use type PropertiesJPanel_Access_Array_Access_Array_Access;
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
   subtype WorkAreaJTreeJPanel_Access is org.allbinary.graphics.j2me.workarea.WorkAreaJTreeJPanel_Package_References.WorkAreaJTreeJPanel_Access;
   use type WorkAreaJTreeJPanel_Access;
   subtype WorkAreaJTreeJPanel_Access_Array is org.allbinary.graphics.j2me.workarea.WorkAreaJTreeJPanel_Package_References.WorkAreaJTreeJPanel_Access_Array;
   use type WorkAreaJTreeJPanel_Access_Array;
   subtype WorkAreaJTreeJPanel_Access_Array_Access is org.allbinary.graphics.j2me.workarea.WorkAreaJTreeJPanel_Package_References.WorkAreaJTreeJPanel_Access_Array_Access;
   use type WorkAreaJTreeJPanel_Access_Array_Access;
   subtype WorkAreaJTreeJPanel_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.WorkAreaJTreeJPanel_Package_References.WorkAreaJTreeJPanel_Access_Array_Access_Array;
   use type WorkAreaJTreeJPanel_Access_Array_Access_Array;
   subtype WorkAreaJTreeJPanel_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.WorkAreaJTreeJPanel_Package_References.WorkAreaJTreeJPanel_Access_Array_Access_Array_Access;
   use type WorkAreaJTreeJPanel_Access_Array_Access_Array_Access;
   subtype Dimension_Access is org.allbinary.graphics.j2me.workarea.Dimension_Package_References.Dimension_Access;
   use type Dimension_Access;
   subtype Dimension_Access_Array is org.allbinary.graphics.j2me.workarea.Dimension_Package_References.Dimension_Access_Array;
   use type Dimension_Access_Array;
   subtype Dimension_Access_Array_Access is org.allbinary.graphics.j2me.workarea.Dimension_Package_References.Dimension_Access_Array_Access;
   use type Dimension_Access_Array_Access;
   subtype Dimension_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.Dimension_Package_References.Dimension_Access_Array_Access_Array;
   use type Dimension_Access_Array_Access_Array;
   subtype Dimension_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.Dimension_Package_References.Dimension_Access_Array_Access_Array_Access;
   use type Dimension_Access_Array_Access_Array_Access;
   subtype WorkAreaDom_Access is org.allbinary.graphics.j2me.workarea.WorkAreaDom_Package_References.WorkAreaDom_Access;
   use type WorkAreaDom_Access;
   subtype WorkAreaDom_Access_Array is org.allbinary.graphics.j2me.workarea.WorkAreaDom_Package_References.WorkAreaDom_Access_Array;
   use type WorkAreaDom_Access_Array;
   subtype WorkAreaDom_Access_Array_Access is org.allbinary.graphics.j2me.workarea.WorkAreaDom_Package_References.WorkAreaDom_Access_Array_Access;
   use type WorkAreaDom_Access_Array_Access;
   subtype WorkAreaDom_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.WorkAreaDom_Package_References.WorkAreaDom_Access_Array_Access_Array;
   use type WorkAreaDom_Access_Array_Access_Array;
   subtype WorkAreaDom_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.WorkAreaDom_Package_References.WorkAreaDom_Access_Array_Access_Array_Access;
   use type WorkAreaDom_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype WorkAreaJPanel_Access is org.allbinary.graphics.j2me.workarea.WorkAreaJPanel_Package_References.WorkAreaJPanel_Access;
   function "=" (Left, Right : WorkAreaJPanel_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.WorkAreaJPanel_Package_References."=";
   subtype WorkAreaJPanel_Access_Array is org.allbinary.graphics.j2me.workarea.WorkAreaJPanel_Package_References.WorkAreaJPanel_Access_Array;
   function "=" (Left, Right : WorkAreaJPanel_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.WorkAreaJPanel_Package_References."=";
   subtype WorkAreaJPanel_Access_Array_Access is org.allbinary.graphics.j2me.workarea.WorkAreaJPanel_Package_References.WorkAreaJPanel_Access_Array_Access;
   function "=" (Left, Right : WorkAreaJPanel_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.WorkAreaJPanel_Package_References."=";
   function Java_Box (Value : WorkAreaJPanel_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.j2me.workarea.WorkAreaJPanel_Package_References.Java_Box;
   function Java_Unbox_WorkAreaJPanel_Access_Array (Value : access Java_Object'Class) return WorkAreaJPanel_Access_Array_Access renames org.allbinary.graphics.j2me.workarea.WorkAreaJPanel_Package_References.Java_Unbox_WorkAreaJPanel_Access_Array;
   subtype WorkAreaJPanel_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.WorkAreaJPanel_Package_References.WorkAreaJPanel_Access_Array_Access_Array;
   function "=" (Left, Right : WorkAreaJPanel_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.WorkAreaJPanel_Package_References."=";
   subtype WorkAreaJPanel_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.WorkAreaJPanel_Package_References.WorkAreaJPanel_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WorkAreaJPanel_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.WorkAreaJPanel_Package_References."=";
   function Java_Box (Value : WorkAreaJPanel_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.j2me.workarea.WorkAreaJPanel_Package_References.Java_Box;
   function Java_Unbox_WorkAreaJPanel_Access_Array_Access_Array (Value : access Java_Object'Class) return WorkAreaJPanel_Access_Array_Access_Array_Access renames org.allbinary.graphics.j2me.workarea.WorkAreaJPanel_Package_References.Java_Unbox_WorkAreaJPanel_Access_Array_Access_Array;

   type WorkAreaJPanel is new Java_Object and WorkAreaJPanelInterface and MyCanvasEventListener and Runnable with record
      logUtil : LogUtil_Access;
      canvasJPanelList : LinkedList_Access;
      canvasHolderJPanel : JPanel_Access;
      name : Unbounded_String;
      selectedFrame : Integer;
      propertiesJPanel : PropertiesJPanel_Access;
      workAreaJTreeJPanel : WorkAreaJTreeJPanel_Access;
      isPlaying_Field : Boolean;
      innerJPanel : JPanel_Access;
   end record;
   document : Document_Access;

   procedure Initialize (This : in out WorkAreaJPanel'Class; name : Unbounded_String; dimension_Param : access Dimension_Package.Dimension'Class; x : Integer; y : Integer);
   function Create (name : Unbounded_String; dimension_Param : access Dimension_Package.Dimension'Class; x : Integer; y : Integer) return WorkAreaJPanel_Access;
   procedure Initialize (This : in out WorkAreaJPanel'Class; workAreaDom_Param : access WorkAreaDom_Package.WorkAreaDom'Class; dimension_Param : access Dimension_Package.Dimension'Class);
   function Create (workAreaDom_Param : access WorkAreaDom_Package.WorkAreaDom'Class; dimension_Param : access Dimension_Package.Dimension'Class) return WorkAreaJPanel_Access;
   procedure initMyComponents (This : in out WorkAreaJPanel; dimension_Param : access Dimension_Package.Dimension'Class);
   function getCanvasHashMap (This : in out WorkAreaJPanel) return HashMap_Access;
   procedure play (This : in out WorkAreaJPanel);
   procedure stop (This : in out WorkAreaJPanel);
   function isPlaying (This : in out WorkAreaJPanel) return Boolean;
   function getName (This : in out WorkAreaJPanel) return Unbounded_String;
   procedure setName (This : in out WorkAreaJPanel; value : Unbounded_String);
   procedure disableCanvas (This : in out WorkAreaJPanel);
   procedure enableCanvas (This : in out WorkAreaJPanel);
   procedure deselect (This : in out WorkAreaJPanel);
   procedure select_Id (This : in out WorkAreaJPanel);
   procedure changeZoom (This : in out WorkAreaJPanel; factor : Integer);
   function getCurrentFrame (This : in out WorkAreaJPanel) return CanvasJPanel_Access;
   procedure initDuplicate (This : in out WorkAreaJPanel; newCanvasJPanel_Param : access CanvasJPanel_Package.CanvasJPanel'Class);
   procedure duplicate (This : in out WorkAreaJPanel; treeNode_Param : access MutableTreeNode_Package.MutableTreeNode'Class);
   procedure autoRotate (This : in out WorkAreaJPanel; increments : Integer; totalAngle : Integer);
   procedure explodeAll (This : in out WorkAreaJPanel);
   procedure autoExplode (This : in out WorkAreaJPanel; numberOfFrames : Integer; explodeType : Integer);
   procedure autoMirror (This : in out WorkAreaJPanel);
   procedure select_Id (This : in out WorkAreaJPanel; index : Integer);
   procedure select_Id (This : in out WorkAreaJPanel; treeNode_Param : access MutableTreeNode_Package.MutableTreeNode'Class);
   function getDocument return Document_Access;
   function toDocument (This : in out WorkAreaJPanel) return Document_Access;
   procedure initComponents (This : in out WorkAreaJPanel);
   procedure innerJPanelKeyReleased (This : in out WorkAreaJPanel; evt_Param : access KeyEvent_Package.KeyEvent'Class);
   procedure innerJPanelKeyPressed (This : in out WorkAreaJPanel; evt_Param : access KeyEvent_Package.KeyEvent'Class);
   procedure innerJPanelKeyTyped (This : in out WorkAreaJPanel; evt_Param : access KeyEvent_Package.KeyEvent'Class);
   procedure keyPressed (This : in out WorkAreaJPanel; keyEvent_Param : access KeyEvent_Package.KeyEvent'Class);
   procedure keyReleased (This : in out WorkAreaJPanel; keyEvent_Param : access KeyEvent_Package.KeyEvent'Class);
   procedure keyTyped (This : in out WorkAreaJPanel; keyEvent_Param : access KeyEvent_Package.KeyEvent'Class);
   procedure delete (This : in out WorkAreaJPanel; evt_Param : access MyCanvasEvent_Package.MyCanvasEvent'Class);
   procedure duplicate (This : in out WorkAreaJPanel; evt_Param : access MyCanvasEvent_Package.MyCanvasEvent'Class);
   procedure select_Id (This : in out WorkAreaJPanel; evt_Param : access MyCanvasEvent_Package.MyCanvasEvent'Class);
   procedure rotate (This : in out WorkAreaJPanel; evt_Param : access MyCanvasEvent_Package.MyCanvasEvent'Class);
   procedure explode (This : in out WorkAreaJPanel; evt_Param : access MyCanvasEvent_Package.MyCanvasEvent'Class);
   procedure autoExplode (This : in out WorkAreaJPanel; evt_Param : access MyCanvasEvent_Package.MyCanvasEvent'Class);
   procedure center (This : in out WorkAreaJPanel);
   procedure center (This : in out WorkAreaJPanel; evt_Param : access MyCanvasEvent_Package.MyCanvasEvent'Class);
   procedure run (This : in out WorkAreaJPanel);

end org.allbinary.graphics.j2me.workarea.WorkAreaJPanel_Package;


