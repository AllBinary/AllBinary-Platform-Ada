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


package body org.allbinary.logic.visual.dhtml.style.StylesValidationFactory_Package is

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
   function getInstance (This : in out StylesValidationFactory; document_Param : access Document'Class) return BasicArrayList_Access is
      document : Document_Access := Document_Access (document_Param);
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
        return BasicArrayListD_Package.Create;
   end getInstance;

   --  throws Exception
   function getInstance (hashMap_Param : access HashMap'Class) return BasicArrayList_Access is
      hashMap : HashMap_Access := HashMap_Access (hashMap_Param);
      stylesDocument : Document_Access;
   begin
        stylesDocument := Document_Access (hashMap.get (NameSpaceRequestParamData_Package.DOCUMENT));
        return StylesValidationFactory_Package.getInstance.getInstance (stylesDocument);
   end getInstance;

   procedure getInstance (This : in out StylesValidationFactory; document_Param : access Document'Class) is
      Java_Result : constant BasicArrayList_Access := StylesValidationFactory'Class (This).getInstance (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (hashMap_Param : access HashMap'Class) is
      Java_Result : constant BasicArrayList_Access := getInstance (hashMap_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := StylesValidationFactory_Package.Create;

end org.allbinary.logic.visual.dhtml.style.StylesValidationFactory_Package;


