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


package body org.allbinary.logic.visual.transform.info.TransformInfoDomNodeView_Package is

   procedure Initialize_Fields (This : in out TransformInfoDomNodeView'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out TransformInfoDomNodeView'Class; transformInfoInterface : TransformInfoInterface_Access; mapping : Unbounded_String) is
   begin
        TransformInfoDomNode_Package.Initialize (This, transformInfoInterface, mapping);
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access; mapping : Unbounded_String) return TransformInfoDomNodeView_Access is
      This : constant TransformInfoDomNodeView_Access := new TransformInfoDomNodeView;
   begin
      TransformInfoDomNodeView_Package.Initialize (This.all, transformInfoInterface, mapping);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out TransformInfoDomNodeView'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        TransformInfoDomNode_Package.Initialize (This, transformInfoInterface);
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return TransformInfoDomNodeView_Access is
      This : constant TransformInfoDomNodeView_Access := new TransformInfoDomNodeView;
   begin
      TransformInfoDomNodeView_Package.Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out TransformInfoDomNodeView'Class; name : Unbounded_String; mappedName : Unbounded_String) is
   begin
        TransformInfoDomNode_Package.Initialize (This, name, mappedName);
   end Initialize;

   function Create (name : Unbounded_String; mappedName : Unbounded_String) return TransformInfoDomNodeView_Access is
      This : constant TransformInfoDomNodeView_Access := new TransformInfoDomNodeView;
   begin
      TransformInfoDomNodeView_Package.Initialize (This.all, name, mappedName);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out TransformInfoDomNodeView'Class; name : Unbounded_String) is
   begin
        TransformInfoDomNode_Package.Initialize (This, name, null);
   end Initialize;

   function Create (name : Unbounded_String) return TransformInfoDomNodeView_Access is
      This : constant TransformInfoDomNodeView_Access := new TransformInfoDomNodeView;
   begin
      TransformInfoDomNodeView_Package.Initialize (This.all, name);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out TransformInfoDomNodeView; document : Document_Access) return Node_Access is
      transformInfoData : TransformInfoData_Access;
      subViewNode : Node_Access;
      viewNameAttr : Attr_Access;
      componentNodeAttributes : NamedNodeMap_Access;
      mappedNameAttr : Attr_Access;
   begin
        transformInfoData := TransformInfoData_Package.getInstance;
        subViewNode := document.createElement (transformInfoData.NAME);
        viewNameAttr := document.createAttribute (transformInfoData.NAME);
        viewNameAttr.setValue (This.getTransformInfoInterface.getName);
        componentNodeAttributes := subViewNode.getAttributes;
        componentNodeAttributes.setNamedItem (viewNameAttr);
        if (This.getMappedName) /= (null) then
            mappedNameAttr := document.createAttribute (transformInfoData.MAPPED);
            mappedNameAttr.setValue (This.getMappedName);
            componentNodeAttributes.setNamedItem (mappedNameAttr);
        end if;
        return subViewNode;
   end toXmlNode;

   procedure toXmlNode (This : in out TransformInfoDomNodeView; document : Document_Access) is
      Java_Result : constant Node_Access := TransformInfoDomNodeView'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.logic.visual.transform.info.TransformInfoDomNodeView_Package;


