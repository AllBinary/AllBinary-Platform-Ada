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
with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.w3c.dom.Attr_Package; use org.w3c.dom.Attr_Package;
with org.w3c.dom.NamedNodeMap_Package; use org.w3c.dom.NamedNodeMap_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoData_Package; use org.allbinary.logic.visual.transform.info.TransformInfoData_Package;
with org.allbinary.logic.visual.transform.info.TransformInfo_Package; use org.allbinary.logic.visual.transform.info.TransformInfo_Package;

package org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package is

   package DomNodeHelper_Package renames Standard.org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package Attr_Package renames Standard.org.w3c.dom.Attr_Package;
   package NamedNodeMap_Package renames Standard.org.w3c.dom.NamedNodeMap_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;

   type TransformInfoDomNode is tagged;
   type TransformInfoDomNode_Access is access all TransformInfoDomNode'Class;
   type TransformInfoDomNode_Access_Array is array (Natural range <>) of TransformInfoDomNode_Access;
   type TransformInfoDomNode_Access_Array_Access is access all TransformInfoDomNode_Access_Array;

   type TransformInfoDomNode is new Java_Object with record
      logUtil : LogUtil_Access;
      transformInfoInterface : TransformInfoInterface_Access;
      mappedName : Unbounded_String;
   end record;

   procedure Initialize (This : in out TransformInfoDomNode'Class; node : Node_Access);
   function Create (node : Node_Access) return TransformInfoDomNode_Access;
   procedure Initialize (This : in out TransformInfoDomNode'Class; transformInfoInterface : TransformInfoInterface_Access);
   function Create (transformInfoInterface : TransformInfoInterface_Access) return TransformInfoDomNode_Access;
   procedure Initialize (This : in out TransformInfoDomNode'Class; transformInfoInterface : TransformInfoInterface_Access; mappedName : Unbounded_String);
   function Create (transformInfoInterface : TransformInfoInterface_Access; mappedName : Unbounded_String) return TransformInfoDomNode_Access;
   procedure Initialize (This : in out TransformInfoDomNode'Class; name : Unbounded_String; mappedName : Unbounded_String);
   function Create (name : Unbounded_String; mappedName : Unbounded_String) return TransformInfoDomNode_Access;
   function getTransformInfoInterface (This : in out TransformInfoDomNode) return TransformInfoInterface_Access;
   function getMappedName (This : in out TransformInfoDomNode) return Unbounded_String;
   function getReplaceKey (This : in out TransformInfoDomNode) return Unbounded_String;

end org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package;


