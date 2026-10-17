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
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.w3c.dom.Attr_Package; use org.w3c.dom.Attr_Package;
with org.w3c.dom.NamedNodeMap_Package; use org.w3c.dom.NamedNodeMap_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;

package org.allbinary.logic.visual.transform.info.TransformInfoPropertiesFactory_Package is

   package DomNodeHelper_Package renames org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package DomSearchHelper_Package renames org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonLabels_Package renames org.allbinary.string_Id.CommonLabels_Package;
   package Attr_Package renames org.w3c.dom.Attr_Package;
   package NamedNodeMap_Package renames org.w3c.dom.NamedNodeMap_Package;
   package Node_Package renames org.w3c.dom.Node_Package;
   package NodeList_Package renames org.w3c.dom.NodeList_Package;

   type TransformInfoPropertiesFactory is tagged;
   type TransformInfoPropertiesFactory_Access is access all TransformInfoPropertiesFactory'Class;
   type TransformInfoPropertiesFactory_Access_Array is array (Natural range <>) of TransformInfoPropertiesFactory_Access;
   type TransformInfoPropertiesFactory_Access_Array_Access is access all TransformInfoPropertiesFactory_Access_Array;

   type TransformInfoPropertiesFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : TransformInfoPropertiesFactory_Access;

   procedure Initialize (This : in out TransformInfoPropertiesFactory'Class);
   function Create return TransformInfoPropertiesFactory_Access;
   function getInstance return TransformInfoPropertiesFactory_Access;
   procedure getInstance;
   function getInstance (This : in out TransformInfoPropertiesFactory; node : Node_Access) return TransformInfoProperties_Access;
   procedure getInstance (This : in out TransformInfoPropertiesFactory; node : Node_Access);

end org.allbinary.logic.visual.transform.info.TransformInfoPropertiesFactory_Package;


