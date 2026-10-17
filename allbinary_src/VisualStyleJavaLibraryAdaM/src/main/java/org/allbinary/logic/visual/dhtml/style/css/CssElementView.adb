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


package body org.allbinary.logic.visual.dhtml.style.css.CssElementView_Package is

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
        This.cssPropertyVector := BasicArrayListD_Package.Create;
        stringUtil := StringUtil_Package.getInstance;
        This.title_Case := stringUtil.EMPTY_STRING;
        This.description_Case := stringUtil.EMPTY_STRING;
        This.value := stringUtil.EMPTY_STRING;
   end Initialize;

   function Create return CssElementView_Access is
      This : constant CssElementView_Access := new CssElementView;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out CssElementView'Class; node : Node_Access) is
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
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Value: ")).append (This.value).append (To_Unbounded_String ("" & ASCII.LF & "Title: ")).append (This.title_Case).append (To_Unbounded_String ("" & ASCII.LF & "Description: ")).append (This.description_Case).toString, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
            end if;
            cssElementStyleNodeVector := DomSearchHelper_Package.getAllNodes (CssElementData_Package.getInstance.NAME, node.getChildNodes);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("Child Css Elements: ") & Java_Image (cssElementStyleNodeVector.size), This'Unchecked_Access, To_Unbounded_String ("CssElementView()"));
            end if;
            This.cssElementVector := CssElementsValidationFactory_Package.getInstance (cssElementStyleNodeVector);
            nodeList := node.getChildNodes;
            This.cssPropertyVector := CssPropertiesValidationFactory_Package.getInstance (nodeList);
        exception
            when e : others =>
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (StringMaker_Package.Create.append (To_Unbounded_String ("Value: ")).append (This.value).append (To_Unbounded_String ("" & ASCII.LF & "Title: ")).append (This.title_Case).append (To_Unbounded_String ("" & ASCII.LF & "Description: ")).append (This.description_Case).toString, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR, e);
            end if;
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("CssElementView")));
        end;
   end Initialize;

   function Create (node : Node_Access) return CssElementView_Access is
      This : constant CssElementView_Access := new CssElementView;
   begin
      Initialize (This.all, node);
      return This;
   end Create;

   function getValue (This : in out CssElementView) return Unbounded_String is
   begin
        return This.value;
   end getValue;

   function toHashMap (This : in out CssElementView) return HashMap_Access is
      hashMap : HashMap_Access;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        hashMap.put (DomData_Package.VALUE, This.value);
        hashMap.put (This.TITLE, This.title_Case);
        hashMap.put (This.DESCRIPTION, This.description_Case);
        return hashMap;
   end toHashMap;

   --  throws Exception
   function toXmlNode (This : in out CssElementView; document : Document_Access) return Node_Access is
      hashMap : HashMap_Access;
      node : Node_Access;
      size : Integer;
      cssPropertyDomNodeInterface : DomNodeInterface_Access;
      index : Integer;
      size2 : Integer;
      cssElementDomNodeInterface : DomNodeInterface_Access;
   begin
        hashMap := This.toHashMap;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("CssView HashMap: ") & hashMap.toString, This'Unchecked_Access, To_Unbounded_String ("toXmlNode"));
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

   procedure getValue (This : in out CssElementView) is
      Java_Result : constant Unbounded_String := CssElementView'Class (This).getValue;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getValue;

   procedure toHashMap (This : in out CssElementView) is
      Java_Result : constant HashMap_Access := CssElementView'Class (This).toHashMap;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toHashMap;

   procedure toXmlNode (This : in out CssElementView; document : Document_Access) is
      Java_Result : constant Node_Access := CssElementView'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.logic.visual.dhtml.style.css.CssElementView_Package;


