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


package body org.allbinary.logic.visual.transform.info.dom.TransformInfoPropertiesDocument_Package is

   procedure Initialize_Fields (This : in out TransformInfoPropertiesDocument'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out TransformInfoPropertiesDocument'Class; filePath : Unbounded_String) is
      xmlFile : AbFile_Access;
   begin
      Initialize_Fields (This);
        xmlFile := AbFile_Package.createAbFile (filePath);
        This.document := DomDocumentFileHelper_Package.createDocument (xmlFile);
   end Initialize;

   function Create (filePath : Unbounded_String) return TransformInfoPropertiesDocument_Access is
      This : constant TransformInfoPropertiesDocument_Access := new TransformInfoPropertiesDocument;
   begin
      Initialize (This.all, filePath);
      return This;
   end Create;

   function toTransformInfoPropertiesHashMap (This : in out TransformInfoPropertiesDocument) return HashMap_Access is
      transformInfoPropertiesHashMap : HashMap_Access;
      transformInfosNode : Node_Access;
      transformInfosChildNodeList : NodeList_Access;
      transformInfoNodeVector : BasicArrayList_Access;
      size : Integer;
      node : Node_Access;
      transformInfoProperties : TransformInfoProperties_Access;
      index : Integer;
      commonStrings : CommonStrings_Access;
   begin
        begin
            transformInfoPropertiesHashMap := StdUtil_Package.getInstance.createHashMap;
            transformInfosNode := This.document.getElementsByTagName (TransformInfosData_Package.getInstance.NAME).item (0);
            transformInfosChildNodeList := transformInfosNode.getChildNodes;
            transformInfoNodeVector := DomSearchHelper_Package.getAllNodes (TransformInfoData_Package.getInstance.NAME, transformInfosChildNodeList);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("Size: ") & Java_Image (transformInfoNodeVector.size), This'Unchecked_Access, To_Unbounded_String ("toTransformInfoPropertiesHashMap()"));
            end if;
            size := transformInfoNodeVector.size;
            node := null;
            transformInfoProperties := null;
            for index in 0 .. (size) - 1 loop
                node := Node_Access (transformInfoNodeVector.get (index));
                transformInfoProperties := TransformInfoPropertiesFactory_Package.getInstance.getInstance (node);
                transformInfoPropertiesHashMap.put (transformInfoProperties.getName, transformInfoProperties);
            end loop;
            return transformInfoPropertiesHashMap;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                commonStrings := CommonStrings_Package.getInstance;
                This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("toTransformInfoPropertiesHashMap()"), e);
            end if;
            return null;
                end;
        end;
   end toTransformInfoPropertiesHashMap;

   procedure toTransformInfoPropertiesHashMap (This : in out TransformInfoPropertiesDocument) is
      Java_Result : constant HashMap_Access := TransformInfoPropertiesDocument'Class (This).toTransformInfoPropertiesHashMap;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toTransformInfoPropertiesHashMap;

end org.allbinary.logic.visual.transform.info.dom.TransformInfoPropertiesDocument_Package;


