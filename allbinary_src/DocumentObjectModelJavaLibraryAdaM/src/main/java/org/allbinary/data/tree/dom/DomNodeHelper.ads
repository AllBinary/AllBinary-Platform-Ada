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
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;

package org.allbinary.data.tree.dom.DomNodeHelper_Package is

   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package Node_Package renames org.w3c.dom.Node_Package;
   package NodeList_Package renames org.w3c.dom.NodeList_Package;

   type DomNodeHelper is tagged;
   type DomNodeHelper_Access is access all DomNodeHelper'Class;
   type DomNodeHelper_Access_Array is array (Natural range <>) of DomNodeHelper_Access;
   type DomNodeHelper_Access_Array_Access is access all DomNodeHelper_Access_Array;

   type DomNodeHelper is new Java_Object with null record;

   procedure Initialize (This : in out DomNodeHelper'Class);
   function Create return DomNodeHelper_Access;
   function getFirstChildElement (parentNode : Node_Access) return Node_Access;
   procedure getFirstChildElement (parentNode : Node_Access);
   function getTextNodeValue (node : Node_Access) return Unbounded_String;
   procedure getTextNodeValue (node : Node_Access);
   function getTextNodeValue (nodeName : Unbounded_String; nodeList : NodeList_Access) return Unbounded_String;
   procedure getTextNodeValue (nodeName : Unbounded_String; nodeList : NodeList_Access);
   function getTextNodesValue (node : Node_Access) return Unbounded_String;
   procedure getTextNodesValue (node : Node_Access);

end org.allbinary.data.tree.dom.DomNodeHelper_Package;


