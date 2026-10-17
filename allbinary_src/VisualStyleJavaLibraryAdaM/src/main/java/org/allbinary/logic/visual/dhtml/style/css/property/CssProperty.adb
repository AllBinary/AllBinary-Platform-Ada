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


package body org.allbinary.logic.visual.dhtml.style.css.property.CssProperty_Package is

   procedure Initialize_Fields (This : in out CssProperty'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out CssProperty'Class; name : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.propertyName := name;
        This.cssPropertyValues := CssPropertyValues_Package.Create;
   end Initialize;

   function Create (name : Unbounded_String) return CssProperty_Access is
      This : constant CssProperty_Access := new CssProperty;
   begin
      Initialize (This.all, name);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out CssProperty'Class; node : Node_Access) is
      propertyNode : Node_Access;
      propertyValuesNode : Node_Access;
   begin
      Initialize_Fields (This);
        propertyNode := DomSearchHelper_Package.getNode (DomData_Package.VALUE, node.getChildNodes);
        This.propertyName := DomNodeHelper_Package.getTextNodeValue (propertyNode);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.STYLE) then
            This.logUtil.putF (To_Unbounded_String ("Name: ") & This.getName, This'Unchecked_Access, To_Unbounded_String ("CssProperty()"));
        end if;
        propertyValuesNode := DomSearchHelper_Package.getNode (CssPropertyData_Package.getInstance.VALUES, node.getChildNodes);
        This.cssPropertyValues := CssPropertyValues_Package.Create (propertyValuesNode);
   end Initialize;

   function Create (node : Node_Access) return CssProperty_Access is
      This : constant CssProperty_Access := new CssProperty;
   begin
      Initialize (This.all, node);
      return This;
   end Create;

   function getName (This : in out CssProperty) return Unbounded_String is
   begin
        return This.propertyName;
   end getName;

   function toHashMap (This : in out CssProperty) return HashMap_Access is
      hashMap : HashMap_Access;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        hashMap.put (CssPropertyData_Package.getInstance.NAME, This.propertyName);
        return hashMap;
   end toHashMap;

   --  throws Exception
   function toXmlNode (This : in out CssProperty; document : Document_Access) return Node_Access is
      hashMap : HashMap_Access;
      node : Node_Access;
   begin
        hashMap := This.toHashMap;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("CssView HashMap: ") & hashMap.toString, This'Unchecked_Access, To_Unbounded_String ("toXmlNode()"));
        end if;
        node := ModDomHelper_Package.createNameValueNodes (document, CssPropertyData_Package.getInstance.NAME, This.propertyName);
        node.appendChild (This.cssPropertyValues.toXmlNode (document));
        return node;
   end toXmlNode;

   procedure getName (This : in out CssProperty) is
      Java_Result : constant Unbounded_String := CssProperty'Class (This).getName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getName;

   procedure toHashMap (This : in out CssProperty) is
      Java_Result : constant HashMap_Access := CssProperty'Class (This).toHashMap;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toHashMap;

   procedure toXmlNode (This : in out CssProperty; document : Document_Access) is
      Java_Result : constant Node_Access := CssProperty'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.logic.visual.dhtml.style.css.property.CssProperty_Package;


