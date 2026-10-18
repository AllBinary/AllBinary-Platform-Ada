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
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package; use org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
with org.allbinary.logic.communication.http.request.NameSpaceRequestParamData_Package; use org.allbinary.logic.communication.http.request.NameSpaceRequestParamData_Package;
with org.allbinary.logic.visual.dhtml.style.css.CssElementData_Package; use org.allbinary.logic.visual.dhtml.style.css.CssElementData_Package;
with org.allbinary.logic.visual.dhtml.style.css.CssElementsValidationFactory_Package; use org.allbinary.logic.visual.dhtml.style.css.CssElementsValidationFactory_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;
with org.allbinary.logic.visual.dhtml.style.StylesData_Package; use org.allbinary.logic.visual.dhtml.style.StylesData_Package;
with org.allbinary.logic.visual.dhtml.style.StyleData_Package; use org.allbinary.logic.visual.dhtml.style.StyleData_Package;

package body org.allbinary.logic.visual.dhtml.style.StylesValidationFactory_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package XmlDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
   package NameSpaceRequestParamData_Package renames Standard.org.allbinary.logic.communication.http.request.NameSpaceRequestParamData_Package;
   package CssElementData_Package renames Standard.org.allbinary.logic.visual.dhtml.style.css.CssElementData_Package;
   package CssElementsValidationFactory_Package renames Standard.org.allbinary.logic.visual.dhtml.style.css.CssElementsValidationFactory_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;
   procedure Initialize_Fields (This : in out StylesValidationFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return StylesValidationFactory_Access is
   begin
        return StylesValidationFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out StylesValidationFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return StylesValidationFactory_Access is
      This : constant StylesValidationFactory_Access := new StylesValidationFactory;
   begin
      StylesValidationFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out StylesValidationFactory; document_Param : access Document_Package.Document'Class) return BasicArrayList_Access is
      document : constant Document_Access := Document_Access (document_Param);
      commonStrings : CommonStrings_Access;
      nodeList : NodeList_Access;
      stylesNode : Node_Access;
      styleNodeList : BasicArrayList_Access;
      styleNode : Node_Access;
      cssElementStyleNodeList : BasicArrayList_Access;
      styleNodesIndex : Integer;
      index : Integer;
   begin
        commonStrings := CommonStrings_Package.getInstance;
        nodeList := document.getElementsByTagName (StylesData_Package.getInstance.NAME);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("Style Present: ") & XmlDocumentHelper_Package.toString (document), StylesValidationFactory_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE);
        end if;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("Styles Present: ") & Java_Image (nodeList.getLength), StylesValidationFactory_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE);
        end if;
        for index in 0 .. (nodeList.getLength) - 1 loop
            stylesNode := nodeList.item (index);
            styleNodeList := DomSearchHelper_Package.getAllNodes (StyleData_Package.getInstance.NAME, stylesNode.getChildNodes);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("Number Of Style Nodes Present: ") & Java_Image (styleNodeList.size), StylesValidationFactory_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE);
            end if;
            for styleNodesIndex in 0 .. (styleNodeList.size) - 1 loop
                styleNode := Node_Access (styleNodeList.get (styleNodesIndex));
                cssElementStyleNodeList := DomSearchHelper_Package.getAllNodes (CssElementData_Package.getInstance.NAME, styleNode.getChildNodes);
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                    This.logUtil.putF (To_Unbounded_String ("Number Of Element Nodes Present: ") & Java_Image (cssElementStyleNodeList.size), StylesValidationFactory_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE);
                end if;
                return CssElementsValidationFactory_Package.getInstance (cssElementStyleNodeList);
            end loop;
        end loop;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("No Style Present"), StylesValidationFactory_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE);
        end if;
        return BasicArrayList_Access (BasicArrayListD_Package.Create);
   end getInstance;

   --  throws Exception
   function getInstance (hashMap_Param : access HashMap_Package.HashMap'Class) return BasicArrayList_Access is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      stylesDocument : Document_Access;
   begin
        stylesDocument := Document_Access (hashMap.get (NameSpaceRequestParamData_Package.DOCUMENT));
        return StylesValidationFactory_Package.getInstance.getInstance (stylesDocument);
   end getInstance;

   procedure getInstance (This : in out StylesValidationFactory; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant BasicArrayList_Access := StylesValidationFactory'Class (This).getInstance (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (hashMap_Param : access HashMap_Package.HashMap'Class) is
      Java_Result : constant BasicArrayList_Access := getInstance (hashMap_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := StylesValidationFactory_Package.Create;

end org.allbinary.logic.visual.dhtml.style.StylesValidationFactory_Package;


