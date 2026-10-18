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


with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.data.tree.dom.DomData_Package; use org.allbinary.data.tree.dom.DomData_Package;
with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValueData_Package; use org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValueData_Package;
with org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyData_Package; use org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyData_Package;

package body org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValues_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package DomData_Package renames Standard.org.allbinary.data.tree.dom.DomData_Package;
   package DomNodeHelper_Package renames Standard.org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   procedure Initialize_Fields (This : in out CssPropertyValues'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out CssPropertyValues'Class) is
   begin
      Initialize_Fields (This);
        This.propertyValueVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize;

   function Create return CssPropertyValues_Access is
      This : constant CssPropertyValues_Access := new CssPropertyValues;
   begin
      CssPropertyValues_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out CssPropertyValues'Class; node_Param : access Node_Package.Node'Class) is
      node : constant Node_Access := Node_Access (node_Param);
      indexPropertyValueHashMap : HashMap_Access;
      cssPropertyNodeVector : BasicArrayList_Access;
      size : Integer;
      cssPropertyValueNode : Node_Access;
      valueNode : Node_Access;
      propertyValue : Unbounded_String;
      indexNode : Node_Access;
      indexValue : Unbounded_String;
      index : Integer;
      size2 : Integer;
      indexInt : Integer;
   begin
      Initialize_Fields (This);
        indexPropertyValueHashMap := StdUtil_Package.getInstance.createHashMap;
        This.propertyValueVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        cssPropertyNodeVector := DomSearchHelper_Package.getAllNodes (CssPropertyValueData_Package.getInstance.NAME, node.getChildNodes);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.STYLE) then
            This.logUtil.putF (To_Unbounded_String ("Number Of Properties: ") & Java_Image (cssPropertyNodeVector.size), CssPropertyValues_Access'(This'Unchecked_Access), To_Unbounded_String ("CssProperties()"));
        end if;
        size := cssPropertyNodeVector.size;
        for index in 0 .. (size) - 1 loop
            cssPropertyValueNode := Node_Access (cssPropertyNodeVector.get (index));
            valueNode := DomSearchHelper_Package.getNode (DomData_Package.VALUE, cssPropertyValueNode.getChildNodes);
            propertyValue := DomNodeHelper_Package.getTextNodeValue (valueNode);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.STYLE) then
                This.logUtil.putF (To_Unbounded_String ("Property Value: ") & propertyValue, CssPropertyValues_Access'(This'Unchecked_Access), To_Unbounded_String ("CssProperties()"));
            end if;
            indexNode := DomSearchHelper_Package.getNode (DomData_Package.INDEX, cssPropertyValueNode.getChildNodes);
            indexValue := DomNodeHelper_Package.getTextNodeValue (indexNode);
            indexPropertyValueHashMap.put (Java_Box (indexValue), Java_Box (propertyValue));
        end loop;
        size2 := indexPropertyValueHashMap.keySet.size;
        for index in 0 .. (size2) - 1 loop
            indexInt := index;
            propertyValue := Java_Unbox (indexPropertyValueHashMap.get (Java_Box (To_Unbounded_String (Java_Image (indexInt)))));
            This.propertyValueVector.add (propertyValue);
        end loop;
   end Initialize;

   function Create (node_Param : access Node_Package.Node'Class) return CssPropertyValues_Access is
      This : constant CssPropertyValues_Access := new CssPropertyValues;
   begin
      CssPropertyValues_Package.Initialize (This.all, node_Param);
      return This;
   end Create;

   function toHashMap (This : in out CssPropertyValues) return HashMap_Access is
      commonSeps : CommonSeps_Access;
      cssPropertyValueData : CssPropertyValueData_Access;
      hashMap : HashMap_Access;
      stringBuffer : StringMaker_Access;
      size : Integer;
      value : Unbounded_String;
      index : Integer;
   begin
        commonSeps := CommonSeps_Package.getInstance;
        cssPropertyValueData := CssPropertyValueData_Package.getInstance;
        hashMap := StdUtil_Package.getInstance.createHashMap;
        stringBuffer := StringMaker_Package.Create;
        size := This.propertyValueVector.size;
        index := 0;
        while (index) < (size) loop
            value := Java_Unbox (This.propertyValueVector.get (index));
            stringBuffer.delete (0, stringBuffer.length);
            stringBuffer.append (cssPropertyValueData.NAME);
            stringBuffer.append (commonSeps.BRACKET_OPEN);
            stringBuffer.appendint (index);
            stringBuffer.append (commonSeps.BRACKET_CLOSE);
            hashMap.put (Java_Box (stringBuffer.toString), Java_Box (value));
            index := index + 1;
            index := index + 1;
        end loop;
        return hashMap;
   end toHashMap;

   --  throws Exception
   function toXmlNode (This : in out CssPropertyValues; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      hashMap : HashMap_Access;
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            hashMap := CssPropertyValues'Class (This).toHashMap;
            This.logUtil.putF (To_Unbounded_String ("CssPropertyValues HashMap: ") & hashMap.toString, CssPropertyValues_Access'(This'Unchecked_Access), To_Unbounded_String ("toXmlNode()"));
        end if;
        return ModDomHelper_Package.createNameValueIndexNodes (document, CssPropertyData_Package.getInstance.VALUES, CssPropertyValueData_Package.getInstance.NAME, This.propertyValueVector);
   end toXmlNode;

   procedure toXmlNode (This : in out CssPropertyValues; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := CssPropertyValues'Class (This).toXmlNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValues_Package;


