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


package body org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleView_Package is

   procedure Initialize_Fields (This : in out TitleView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out TitleView'Class) is
   begin
      Initialize_Fields (This);
        This.title := TitleView_Package.NAME;
   end Initialize;

   function Create return TitleView_Access is
      This : constant TitleView_Access := new TitleView;
   begin
      TitleView_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out TitleView'Class; node_Param : access Node'Class) is
      node : Node_Access := Node_Access (node_Param);
      titleTextNode : Node_Access;
      valueNode : Node_Access;
   begin
      Initialize_Fields (This);
        titleTextNode := DomSearchHelper_Package.getNode (TitleData_Package.getInstance.TEXT, node.getChildNodes);
        valueNode := DomSearchHelper_Package.getNode (DomData_Package.VALUE, titleTextNode.getChildNodes);
        This.title := DomNodeHelper_Package.getTextNodeValue (valueNode);
        if StringValidationUtil_Package.getInstance.isEmpty (This.title) then
            This.title := TitleView_Package.NAME;
        end if;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("Title: ") & Java_Image (This.getTitle), TitleView_Access'(This'Unchecked_Access), To_Unbounded_String ("Consructor()"));
        end if;
   end Initialize;

   function Create (node_Param : access Node'Class) return TitleView_Access is
      This : constant TitleView_Access := new TitleView;
   begin
      TitleView_Package.Initialize (This.all, node_Param);
      return This;
   end Create;

   procedure Initialize (This : in out TitleView'Class; hashMap_Param : access HashMap'Class) is
      hashMap : HashMap_Access := HashMap_Access (hashMap_Param);
   begin
      Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("HashMap: ") & hashMap.toString, TitleView_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        end if;
        This.getFormData (hashMap);
   end Initialize;

   function Create (hashMap_Param : access HashMap'Class) return TitleView_Access is
      This : constant TitleView_Access := new TitleView;
   begin
      TitleView_Package.Initialize (This.all, hashMap_Param);
      return This;
   end Create;

   function getTitle (This : in out TitleView) return Unbounded_String is
   begin
        return This.title;
   end getTitle;

   procedure getFormData (This : in out TitleView; hashMap_Param : access HashMap'Class) is
      hashMap : HashMap_Access := HashMap_Access (hashMap_Param);
   begin
        This.title := Unbounded_String (hashMap.get (TitleData_Package.getInstance.TEXT));
        if StringValidationUtil_Package.getInstance.isEmpty (This.title) then
            This.title := TitleView_Package.NAME;
        end if;
   end getFormData;

   function toHashMap (This : in out TitleView) return HashMap_Access is
      hashMap : HashMap_Access;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        hashMap.put (TitleData_Package.getInstance.TEXT, This.getTitle);
        return hashMap;
   end toHashMap;

   --  throws Exception
   function toXmlNode (This : in out TitleView; document_Param : access Document'Class) return Node_Access is
      document : Document_Access := Document_Access (document_Param);
      hashMap : HashMap_Access;
   begin
        hashMap := This.toHashMap;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("TitleView HashMap: ") & hashMap.toString, TitleView_Access'(This'Unchecked_Access), To_Unbounded_String ("toXmlNode()"));
        end if;
        return ModDomHelper_Package.createNameValueNodes (document, TitleData_Package.getInstance.NAME, hashMap);
   end toXmlNode;

   procedure toXmlNode (This : in out TitleView; document_Param : access Document'Class) is
      Java_Result : constant Node_Access := TitleView'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

begin
   null;
   NAME := To_Unbounded_String ("None");

end org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleView_Package;


