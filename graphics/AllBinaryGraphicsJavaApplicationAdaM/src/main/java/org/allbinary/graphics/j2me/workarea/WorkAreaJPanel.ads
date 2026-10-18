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
--  with java.util.EventListener_Package; use java.util.EventListener_Package;
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with java.util.LinkedList_Package; use java.util.LinkedList_Package;
--  with javax.swing.tree.MutableTreeNode_Package; use javax.swing.tree.MutableTreeNode_Package;
with org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package; use org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package;
with org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package; use org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package;
with org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventListener_Package; use org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventListener_Package;
with org.allbinary.graphics.j2me.workarea.properties.PropertiesJPanel_Package; use org.allbinary.graphics.j2me.workarea.properties.PropertiesJPanel_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.allbinary.graphics.j2me.workarea.JPanel_Package; use org.allbinary.graphics.j2me.workarea.JPanel_Package;
with org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface_Package; use org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface_Package;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;
with org.allbinary.graphics.j2me.workarea.WorkAreaJTreeJPanel_Package; use org.allbinary.graphics.j2me.workarea.WorkAreaJTreeJPanel_Package;
with org.allbinary.graphics.j2me.workarea.Dimension_Package; use org.allbinary.graphics.j2me.workarea.Dimension_Package;
with org.allbinary.graphics.j2me.workarea.WorkAreaDom_Package; use org.allbinary.graphics.j2me.workarea.WorkAreaDom_Package;

package org.allbinary.graphics.j2me.workarea.WorkAreaJPanel_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package CanvasJPanel_Package renames Standard.org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package;
   package MyCanvasEvent_Package renames Standard.org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package;
   package MyCanvasEventListener_Package renames Standard.org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventListener_Package;
   package PropertiesJPanel_Package renames Standard.org.allbinary.graphics.j2me.workarea.properties.PropertiesJPanel_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;

   type WorkAreaJPanel is tagged;
   type WorkAreaJPanel_Access is access all WorkAreaJPanel'Class;
   type WorkAreaJPanel_Access_Array is array (Natural range <>) of WorkAreaJPanel_Access;
   type WorkAreaJPanel_Access_Array_Access is access all WorkAreaJPanel_Access_Array;
   type WorkAreaJPanel_Access_Array_Access_Array is array (Natural range <>) of WorkAreaJPanel_Access_Array_Access;
   type WorkAreaJPanel_Access_Array_Access_Array_Access is access all WorkAreaJPanel_Access_Array_Access_Array;

   type WorkAreaJPanel is new JPanel and WorkAreaJPanelInterface and MyCanvasEventListener and EventListener and Runnable with record
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


