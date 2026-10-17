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
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.w3c.dom.Attr_Package; use org.w3c.dom.Attr_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.NamedNodeMap_Package; use org.w3c.dom.NamedNodeMap_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package; use org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package;

package org.allbinary.logic.visual.transform.info.TransformInfoDomNodeView_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package Attr_Package renames Standard.org.w3c.dom.Attr_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package NamedNodeMap_Package renames Standard.org.w3c.dom.NamedNodeMap_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type TransformInfoDomNodeView is tagged;
   type TransformInfoDomNodeView_Access is access all TransformInfoDomNodeView'Class;
   type TransformInfoDomNodeView_Access_Array is array (Natural range <>) of TransformInfoDomNodeView_Access;
   type TransformInfoDomNodeView_Access_Array_Access is access all TransformInfoDomNodeView_Access_Array;

   type TransformInfoDomNodeView is new TransformInfoDomNode and DomNodeInterface with null record;

   procedure Initialize (This : in out TransformInfoDomNodeView'Class; transformInfoInterface : TransformInfoInterface_Access; mapping : Unbounded_String);
   function Create (transformInfoInterface : TransformInfoInterface_Access; mapping : Unbounded_String) return TransformInfoDomNodeView_Access;
   function toXmlNode (This : in out TransformInfoDomNodeView; document : Document_Access) return Node_Access;
   procedure toXmlNode (This : in out TransformInfoDomNodeView; document : Document_Access);

end org.allbinary.logic.visual.transform.info.TransformInfoDomNodeView_Package;


