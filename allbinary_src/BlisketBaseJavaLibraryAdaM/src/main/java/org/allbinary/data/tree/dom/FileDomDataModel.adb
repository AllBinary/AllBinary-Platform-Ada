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


package body org.allbinary.data.tree.dom.FileDomDataModel_Package is

   procedure Initialize_Fields (This : in out FileDomDataModel'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out FileDomDataModel'Class; file : AbFile_Access) is
   begin
      Initialize_Fields (This);
        This.file := file;
   end Initialize;

   function Create (file : AbFile_Access) return FileDomDataModel_Access is
      This : constant FileDomDataModel_Access := new FileDomDataModel;
   begin
      FileDomDataModel_Package.Initialize (This.all, file);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out FileDomDataModel; document : Document_Access) return Node_Access is
      tableMappingInterface : TableMappingInterface_Access;
      hashMap : HashMap_Access;
   begin
        tableMappingInterface := TableMappingInterface_Access (FileTableMapping_Package.Create (This.file));
        hashMap := tableMappingInterface.toHashMap;
        return ModDomHelper_Package.createNodeWithValueNodes (document, To_Unbounded_String ("file"), hashMap);
   end toXmlNode;

   procedure toXmlNode (This : in out FileDomDataModel; document : Document_Access) is
      Java_Result : constant Node_Access := FileDomDataModel'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.data.tree.dom.FileDomDataModel_Package;


