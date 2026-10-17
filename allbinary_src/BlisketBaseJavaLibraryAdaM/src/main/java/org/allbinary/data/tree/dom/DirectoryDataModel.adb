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


package body org.allbinary.data.tree.dom.DirectoryDataModel_Package is

   procedure Initialize_Fields (This : in out DirectoryDataModel'Class) is
   begin
      null;
      
      
      This.NO_TYPE := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out DirectoryDataModel'Class; file_Param : access AbFile_Package.AbFile'Class) is
      file : constant AbFile_Access := AbFile_Access (file_Param);
   begin
      Initialize_Fields (This);
        This.fileBasicArrayList := Directory_Package.getInstance.search (file);
        This.transformDocumentInterface := TransformDocumentInterface_Access (TransformDocumentFactory_Package.getInstance);
   end Initialize;

   function Create (file_Param : access AbFile_Package.AbFile'Class) return DirectoryDataModel_Access is
      This : constant DirectoryDataModel_Access := new DirectoryDataModel;
   begin
      DirectoryDataModel_Package.Initialize (This.all, file_Param);
      return This;
   end Create;

   function getTypeId (This : in out DirectoryDataModel) return Integer is
   begin
        return This.NO_TYPE;
   end getTypeId;

   --  throws Exception
   function getTransformInfoInterface (This : in out DirectoryDataModel) return TransformInfoInterface_Access is
   begin
        return null;
   end getTransformInfoInterface;

   procedure setTransformDocumentInterface (This : in out DirectoryDataModel; transformDocumentInterface_Param : access TransformDocumentInterface_Package.TransformDocumentInterface'Class) is
      transformDocumentInterface : constant TransformDocumentInterface_Access := TransformDocumentInterface_Access (transformDocumentInterface_Param);
   begin
        This.transformDocumentInterface := transformDocumentInterface;
   end setTransformDocumentInterface;

   function getTransformDocumentInterface (This : in out DirectoryDataModel) return TransformDocumentInterface_Access is
   begin
        return This.transformDocumentInterface;
   end getTransformDocumentInterface;

   --  throws Exception
   function toXmlNode (This : in out DirectoryDataModel; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      dirNode : Node_Access;
      size : Integer;
      nextFile : AbFile_Access;
      fileNode : Node_Access;
      index : Integer;
   begin
        dirNode := document.createElement (To_Unbounded_String ("dir"));
        size := This.fileBasicArrayList.size;
        nextFile := null;
        fileNode := null;
        for index in 0 .. (size) - 1 loop
            nextFile := AbFile_Access (This.fileBasicArrayList.get (index));
            fileNode := FileDomDataModel_Package.Create (nextFile).toXmlNode (document);
            dirNode.appendChild (fileNode);
        end loop;
        return dirNode;
   end toXmlNode;

   --  throws Exception
   function toXmlDoc (This : in out DirectoryDataModel) return Document_Access is
   begin
        return This.getTransformDocumentInterface.getDoc;
   end toXmlDoc;

   --  throws Exception
   function view (This : in out DirectoryDataModel) return Unbounded_String is
      node : Node_Access;
   begin
        node := This.toXmlNode (This.getTransformDocumentInterface.getDoc);
        This.getTransformDocumentInterface.getBaseNode.appendChild (node);
        return XmlDocumentHelper_Package.toString (This.getTransformDocumentInterface.getDoc);
   end view;

   procedure toXmlNode (This : in out DirectoryDataModel; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := DirectoryDataModel'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.data.tree.dom.DirectoryDataModel_Package;


