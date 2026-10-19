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


with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.data.tree.dom.document.DomDocumentFileHelper_Package; use org.allbinary.data.tree.dom.document.DomDocumentFileHelper_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoData_Package; use org.allbinary.logic.visual.transform.info.TransformInfoData_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package; use org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoPropertiesFactory_Package; use org.allbinary.logic.visual.transform.info.TransformInfoPropertiesFactory_Package;
with org.allbinary.logic.visual.transform.info.TransformInfosData_Package; use org.allbinary.logic.visual.transform.info.TransformInfosData_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;

package body org.allbinary.logic.visual.transform.info.dom.TransformInfoPropertiesDocument_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package DomDocumentFileHelper_Package renames Standard.org.allbinary.data.tree.dom.document.DomDocumentFileHelper_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package TransformInfoData_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoData_Package;
   package TransformInfoProperties_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package;
   package TransformInfoPropertiesFactory_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoPropertiesFactory_Package;
   package TransformInfosData_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfosData_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;
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
      TransformInfoPropertiesDocument_Package.Initialize (This.all, filePath);
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
                This.logUtil.putF (To_Unbounded_String ("Size: ") & Java_Image (transformInfoNodeVector.size), TransformInfoPropertiesDocument_Access'(This'Unchecked_Access), To_Unbounded_String ("toTransformInfoPropertiesHashMap()"));
            end if;
            size := transformInfoNodeVector.size;
            node := null;
            transformInfoProperties := null;
            for index in 0 .. (size) - 1 loop
                node := Node_Access (transformInfoNodeVector.get (index));
                transformInfoProperties := TransformInfoPropertiesFactory_Package.getInstance.getInstance (node);
                transformInfoPropertiesHashMap.put (Java_Box (transformInfoProperties.getName), transformInfoProperties);
            end loop;
            return transformInfoPropertiesHashMap;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                commonStrings := CommonStrings_Package.getInstance;
                This.logUtil.put (commonStrings.EXCEPTION_Id, TransformInfoPropertiesDocument_Access'(This'Unchecked_Access), To_Unbounded_String ("toTransformInfoPropertiesHashMap()"), e);
            end if;
            return null;
                end;
        end;
   end toTransformInfoPropertiesHashMap;

end org.allbinary.logic.visual.transform.info.dom.TransformInfoPropertiesDocument_Package;


