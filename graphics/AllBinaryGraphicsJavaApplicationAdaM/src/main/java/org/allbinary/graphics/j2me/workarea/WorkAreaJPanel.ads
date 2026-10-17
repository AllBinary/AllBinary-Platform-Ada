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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with java.util.LinkedList_Package; use java.util.LinkedList_Package;
--  with javax.swing.tree.MutableTreeNode_Package; use javax.swing.tree.MutableTreeNode_Package;
with org.allbinary.dom.DomHelper_Package; use org.allbinary.dom.DomHelper_Package;
with org.allbinary.graphics.j2me.StatusFactory_Package; use org.allbinary.graphics.j2me.StatusFactory_Package;
with org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package; use org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package;
with org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package; use org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package;
with org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package; use org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package;
with org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventListener_Package; use org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventListener_Package;
with org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventService_Package; use org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventService_Package;
with org.allbinary.graphics.j2me.workarea.properties.PropertiesJPanel_Package; use org.allbinary.graphics.j2me.workarea.properties.PropertiesJPanel_Package;
with org.allbinary.graphics.j2me.workarea.tools.ToolJPanel_Package; use org.allbinary.graphics.j2me.workarea.tools.ToolJPanel_Package;
with org.allbinary.log.LOGGING_Package; use org.allbinary.log.LOGGING_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.graphics.j2me.workarea.JPanel_Package; use org.allbinary.graphics.j2me.workarea.JPanel_Package;
with org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface_Package; use org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface_Package;
with org.allbinary.graphics.j2me.workarea.Runnable_Package; use org.allbinary.graphics.j2me.workarea.Runnable_Package;

package org.allbinary.graphics.j2me.workarea.WorkAreaJPanel_Package is

   package DomHelper_Package renames org.allbinary.dom.DomHelper_Package;
   package StatusFactory_Package renames org.allbinary.graphics.j2me.StatusFactory_Package;
   package CanvasDom_Package renames org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package;
   package CanvasJPanel_Package renames org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package;
   package MyCanvasEvent_Package renames org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package;
   package MyCanvasEventListener_Package renames org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventListener_Package;
   package MyCanvasEventService_Package renames org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventService_Package;
   package PropertiesJPanel_Package renames org.allbinary.graphics.j2me.workarea.properties.PropertiesJPanel_Package;
   package ToolJPanel_Package renames org.allbinary.graphics.j2me.workarea.tools.ToolJPanel_Package;
   package LOGGING_Package renames org.allbinary.log.LOGGING_Package;
   package StdUtil_Package renames org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package Document_Package renames org.w3c.dom.Document_Package;
   package Node_Package renames org.w3c.dom.Node_Package;

   type WorkAreaJPanel is tagged;
   type WorkAreaJPanel_Access is access all WorkAreaJPanel'Class;
   type WorkAreaJPanel_Access_Array is array (Natural range <>) of WorkAreaJPanel_Access;
   type WorkAreaJPanel_Access_Array_Access is access all WorkAreaJPanel_Access_Array;

   type WorkAreaJPanel is new JPanel and WorkAreaJPanelInterface and MyCanvasEventListener and EventListener and Runnable with record
      logUtil : LogUtil_Access;
      canvasJPanelList : LinkedList_Access;
      canvasHolderJPanel : JPanel_Access;
      name : Unbounded_String;
      selectedFrame : Integer;
      propertiesJPanel : PropertiesJPanel_Access;
      workAreaJTreeJPanel : WorkAreaJTreeJPanel_Access;
      isPlaying : Boolean;
      innerJPanel : JPanel_Access;
   end record;
   document : Document_Access;

   procedure Initialize (This : in out WorkAreaJPanel'Class; name : Unbounded_String; dimension : Dimension_Access; x : Integer; y : Integer);
   function Create (name : Unbounded_String; dimension : Dimension_Access; x : Integer; y : Integer) return WorkAreaJPanel_Access;
   procedure initMyComponents (This : in out WorkAreaJPanel; dimension : Dimension_Access);
   function getCanvasHashMap (This : in out WorkAreaJPanel) return HashMap_Access;
   procedure getCanvasHashMap (This : in out WorkAreaJPanel);
   procedure play (This : in out WorkAreaJPanel);
   procedure stop (This : in out WorkAreaJPanel);
   function isPlaying (This : in out WorkAreaJPanel) return Boolean;
   procedure isPlaying (This : in out WorkAreaJPanel);
   function getName (This : in out WorkAreaJPanel) return Unbounded_String;
   procedure getName (This : in out WorkAreaJPanel);
   procedure setName (This : in out WorkAreaJPanel; value : Unbounded_String);
   procedure disableCanvas (This : in out WorkAreaJPanel);
   procedure enableCanvas (This : in out WorkAreaJPanel);
   procedure deselect (This : in out WorkAreaJPanel);
   procedure select_Id (This : in out WorkAreaJPanel);
   procedure changeZoom (This : in out WorkAreaJPanel; factor : Integer);
   function getCurrentFrame (This : in out WorkAreaJPanel) return CanvasJPanel_Access;
   procedure getCurrentFrame (This : in out WorkAreaJPanel);
   procedure initDuplicate (This : in out WorkAreaJPanel; newCanvasJPanel : CanvasJPanel_Access);
   procedure duplicate (This : in out WorkAreaJPanel; treeNode : MutableTreeNode_Access);
   procedure autoRotate (This : in out WorkAreaJPanel; increments : Integer; totalAngle : Integer);
   procedure explodeAll (This : in out WorkAreaJPanel);
   procedure autoExplode (This : in out WorkAreaJPanel; numberOfFrames : Integer; explodeType : Integer);
   procedure autoMirror (This : in out WorkAreaJPanel);
   procedure select_Id (This : in out WorkAreaJPanel; index : Integer);
   procedure select_Id (This : in out WorkAreaJPanel; treeNode : MutableTreeNode_Access);
   function getDocument return Document_Access;
   procedure getDocument;
   function toDocument (This : in out WorkAreaJPanel) return Document_Access;
   procedure toDocument (This : in out WorkAreaJPanel);
   procedure initComponents (This : in out WorkAreaJPanel);
   procedure innerJPanelKeyReleased (This : in out WorkAreaJPanel; evt : KeyEvent_Access);
   procedure innerJPanelKeyPressed (This : in out WorkAreaJPanel; evt : KeyEvent_Access);
   procedure innerJPanelKeyTyped (This : in out WorkAreaJPanel; evt : KeyEvent_Access);
   procedure keyPressed (This : in out WorkAreaJPanel; keyEvent : KeyEvent_Access);
   procedure keyReleased (This : in out WorkAreaJPanel; keyEvent : KeyEvent_Access);
   procedure keyTyped (This : in out WorkAreaJPanel; keyEvent : KeyEvent_Access);
   procedure delete (This : in out WorkAreaJPanel; evt : MyCanvasEvent_Access);
   procedure duplicate (This : in out WorkAreaJPanel; evt : MyCanvasEvent_Access);
   procedure select_Id (This : in out WorkAreaJPanel; evt : MyCanvasEvent_Access);
   procedure rotate (This : in out WorkAreaJPanel; evt : MyCanvasEvent_Access);
   procedure explode (This : in out WorkAreaJPanel; evt : MyCanvasEvent_Access);
   procedure autoExplode (This : in out WorkAreaJPanel; evt : MyCanvasEvent_Access);
   procedure center (This : in out WorkAreaJPanel);
   procedure center (This : in out WorkAreaJPanel; evt : MyCanvasEvent_Access);
   procedure run (This : in out WorkAreaJPanel);

end org.allbinary.graphics.j2me.workarea.WorkAreaJPanel_Package;


