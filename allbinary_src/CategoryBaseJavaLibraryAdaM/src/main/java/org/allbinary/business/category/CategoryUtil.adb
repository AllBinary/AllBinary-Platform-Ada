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


with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.apache.commons.lang3.StringUtils_Package; use org.apache.commons.lang3.StringUtils_Package;
with org.w3c.dom.Attr_Package; use org.w3c.dom.Attr_Package;
with org.w3c.dom.NamedNodeMap_Package; use org.w3c.dom.NamedNodeMap_Package;
with org.allbinary.business.category.CategoryData_Package; use org.allbinary.business.category.CategoryData_Package;

package body org.allbinary.business.category.CategoryUtil_Package is

   package DomNodeHelper_Package renames Standard.org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package StringUtils_Package renames Standard.org.apache.commons.lang3.StringUtils_Package;
   package Attr_Package renames Standard.org.w3c.dom.Attr_Package;
   package NamedNodeMap_Package renames Standard.org.w3c.dom.NamedNodeMap_Package;
   procedure Initialize_Fields (This : in out CategoryUtil'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out CategoryUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return CategoryUtil_Access is
      This : constant CategoryUtil_Access := new CategoryUtil;
   begin
      CategoryUtil_Package.Initialize (This.all);
      return This;
   end Create;

   function getPathLevel (categoryPath_Param : access AbPath_Package.AbPath'Class) return Integer is
      categoryPath : constant AbPath_Access := AbPath_Access (categoryPath_Param);
      count : Integer;
   begin
        count := StringUtils_Package.countMatches (categoryPath.toString, AbPathData_Package.getInstance.SEPARATOR);
        return count;
   end getPathLevel;

   function getNameFromNode (node_Param : access Node_Package.Node'Class) return Unbounded_String is
      node : constant Node_Access := Node_Access (node_Param);
      attributes : NamedNodeMap_Access;
      attrNode : Attr_Access;
      labelNode : Node_Access;
   begin
        attributes := node.getAttributes;
        attrNode := Attr_Access (attributes.getNamedItem (CategoryData_Package.getInstance.LABEL));
        if (attrNode) /= (null) then
            return attrNode.getValue;
        else
            labelNode := DomSearchHelper_Package.getNodeNoThrow (CategoryData_Package.getInstance.LABEL, node.getChildNodes);
            if (labelNode) /= (null) then
                return DomNodeHelper_Package.getTextNodeValue (labelNode);
            end if;
        end if;
        return StringUtil_Package.getInstance.EMPTY_STRING;
   end getNameFromNode;

   procedure getPathLevel (categoryPath_Param : access AbPath_Package.AbPath'Class) is
      Java_Result : constant Integer := getPathLevel (categoryPath_Param => categoryPath_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPathLevel;

   procedure getNameFromNode (node_Param : access Node_Package.Node'Class) is
      Java_Result : constant Unbounded_String := getNameFromNode (node_Param => node_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNameFromNode;

end org.allbinary.business.category.CategoryUtil_Package;


