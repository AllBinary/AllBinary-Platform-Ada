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


with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.data.tree.dom.DomData_Package; use org.allbinary.data.tree.dom.DomData_Package;
with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.visual.dhtml.style.css.property.CssPropertiesValidationFactory_Package; use org.allbinary.logic.visual.dhtml.style.css.property.CssPropertiesValidationFactory_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
with org.allbinary.logic.visual.dhtml.style.css.CssElementData_Package; use org.allbinary.logic.visual.dhtml.style.css.CssElementData_Package;
with org.allbinary.logic.visual.dhtml.style.css.CssElementsValidationFactory_Package; use org.allbinary.logic.visual.dhtml.style.css.CssElementsValidationFactory_Package;
with org.allbinary.util.ABHashMap_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.util.ABVector_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.visual.dhtml.style.css.CssElementsValidationFactory_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.logic.visual.dhtml.style.css.CssElementView_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package DomData_Package renames Standard.org.allbinary.data.tree.dom.DomData_Package;
   package DomNodeHelper_Package renames Standard.org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CssPropertiesValidationFactory_Package renames Standard.org.allbinary.logic.visual.dhtml.style.css.property.CssPropertiesValidationFactory_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;
   package LogConfigTypeFactory_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
   package LogConfigTypes_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   function "=" (Left, Right : Document_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   function "=" (Left, Right : Document_Access_Array) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   function "=" (Left, Right : Document_Access_Array_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   function "=" (Left, Right : Document_Access_Array_Access_Array) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Document_Access_Array_Access_Array_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   function "=" (Left, Right : Node_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   function "=" (Left, Right : Node_Access_Array) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   function "=" (Left, Right : Node_Access_Array_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   function "=" (Left, Right : Node_Access_Array_Access_Array) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Node_Access_Array_Access_Array_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   procedure Initialize_Fields (This : in out CssElementView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.TITLE := To_Unbounded_String ("title");
      This.DESCRIPTION := To_Unbounded_String ("description");
      
      
      
      This.cssElementVector := null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out CssElementView'Class) is
      stringUtil : StringUtil_Access;
   begin
      Initialize_Fields (This);
        This.cssPropertyVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        stringUtil := StringUtil_Package.getInstance;
        This.title_Case := stringUtil.EMPTY_STRING;
        This.description_Case := stringUtil.EMPTY_STRING;
        This.value := stringUtil.EMPTY_STRING;
   end Initialize;

   function Create return CssElementView_Access is
      This : constant CssElementView_Access := new CssElementView;
   begin
      CssElementView_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out CssElementView'Class; node_Param : access Node_Package.Node'Class) is
      node : constant Node_Access := Node_Access (node_Param);
      valueNode : Node_Access;
      titleValueNode : Node_Access;
      stringUtil : StringUtil_Access;
      descriptionValueNode : Node_Access;
      cssElementStyleNodeVector : BasicArrayList_Access;
      nodeList : NodeList_Access;
   begin
      Initialize_Fields (This);
        begin
            valueNode := DomSearchHelper_Package.getNode (DomData_Package.VALUE, node.getChildNodes);
            This.value := DomNodeHelper_Package.getTextNodeValue (valueNode);
            titleValueNode := DomSearchHelper_Package.getNodeNoThrow (This.TITLE, node.getChildNodes);
            if (titleValueNode) /= (null) then
                This.title_Case := DomNodeHelper_Package.getTextNodeValue (titleValueNode);
            else
                stringUtil := StringUtil_Package.getInstance;
                This.title_Case := stringUtil.EMPTY_STRING;
            end if;
            descriptionValueNode := DomSearchHelper_Package.getNodeNoThrow (This.DESCRIPTION, node.getChildNodes);
            if (descriptionValueNode) /= (null) then
                This.description_Case := DomNodeHelper_Package.getTextNodeValue (descriptionValueNode);
            else
                This.description_Case := StringUtil_Package.getInstance.EMPTY_STRING;
            end if;
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.VIEW) then
                This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Value: ")).append (This.value).append (To_Unbounded_String ("" & ASCII.LF & "Title: ")).append (This.title_Case).append (To_Unbounded_String ("" & ASCII.LF & "Description: ")).append (This.description_Case).toString, CssElementView_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
            end if;
            cssElementStyleNodeVector := DomSearchHelper_Package.getAllNodes (CssElementData_Package.getInstance.NAME, node.getChildNodes);
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("Child Css Elements: ") & Java_Image (cssElementStyleNodeVector.size), CssElementView_Access'(This'Unchecked_Access), To_Unbounded_String ("CssElementView()"));
            end if;
            This.cssElementVector := CssElementsValidationFactory_Package.getInstance (cssElementStyleNodeVector);
            nodeList := node.getChildNodes;
            This.cssPropertyVector := CssPropertiesValidationFactory_Package.getInstance (nodeList);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.VIEWERROR) then
                This.logUtil.put (StringMaker_Package.Create.append (To_Unbounded_String ("Value: ")).append (This.value).append (To_Unbounded_String ("" & ASCII.LF & "Title: ")).append (This.title_Case).append (To_Unbounded_String ("" & ASCII.LF & "Description: ")).append (This.description_Case).toString, CssElementView_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR, e);
            end if;
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("CssElementView")));
                end;
        end;
   end Initialize;

   function Create (node_Param : access Node_Package.Node'Class) return CssElementView_Access is
      This : constant CssElementView_Access := new CssElementView;
   begin
      CssElementView_Package.Initialize (This.all, node_Param);
      return This;
   end Create;

   function getValue (This : in out CssElementView) return Unbounded_String is
   begin
        return This.value;
   end getValue;

   function toHashMap (This : in out CssElementView) return HashMap_Access is
      hashMap : HashMap_Access;
   begin
        hashMap := HashMap_Access (StdUtil_Package.getInstance.createHashMap);
        hashMap.put (DomData_Package.VALUE, Java_Box (This.value));
        hashMap.put (Java_Box (This.TITLE), Java_Box (This.title_Case));
        hashMap.put (Java_Box (This.DESCRIPTION), Java_Box (This.description_Case));
        return hashMap;
   end toHashMap;

   --  throws Exception
   function toXmlNode (This : in out CssElementView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      hashMap : HashMap_Access;
      node : Node_Access;
      size : Integer;
      cssPropertyDomNodeInterface : DomNodeInterface_Access;
      index : Integer;
      size2 : Integer;
      cssElementDomNodeInterface : DomNodeInterface_Access;
   begin
        hashMap := CssElementView'Class (This).toHashMap;
        if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("CssView HashMap: ") & hashMap.toString, CssElementView_Access'(This'Unchecked_Access), To_Unbounded_String ("toXmlNode"));
        end if;
        node := ModDomHelper_Package.createNodeWithValueNodes (document, CssElementData_Package.getInstance.NAME, hashMap);
        size := This.cssPropertyVector.size;
        for index in 0 .. (size) - 1 loop
            cssPropertyDomNodeInterface := DomNodeInterface_Access (This.cssPropertyVector.get (index));
            node.appendChild (cssPropertyDomNodeInterface.toXmlNode (document));
        end loop;
        size2 := This.cssElementVector.size;
        for index in 0 .. (size2) - 1 loop
            cssElementDomNodeInterface := DomNodeInterface_Access (This.cssElementVector.get (index));
            node.appendChild (cssElementDomNodeInterface.toXmlNode (document));
        end loop;
        return node;
   end toXmlNode;

   procedure toXmlNode (This : in out CssElementView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := CssElementView'Class (This).toXmlNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.logic.visual.dhtml.style.css.CssElementView_Package;


