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


with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.data.tables.TableMappingInterface_Package; use org.allbinary.data.tables.TableMappingInterface_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFile_Package_References;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.allbinary.data.tree.dom.FileTableMapping_Package; use org.allbinary.data.tree.dom.FileTableMapping_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.data.tree.dom.FileTableMapping_Package;

package body org.allbinary.data.tree.dom.FileDomDataModel_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package TableMappingInterface_Package renames Standard.org.allbinary.data.tables.TableMappingInterface_Package;
   subtype AbFile_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access;
   function "=" (Left, Right : AbFile_Access) return Boolean renames org.allbinary.logic.io.file.AbFile_Package_References."=";
   subtype AbFile_Access_Array is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array;
   function "=" (Left, Right : AbFile_Access_Array) return Boolean renames org.allbinary.logic.io.file.AbFile_Package_References."=";
   subtype AbFile_Access_Array_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access;
   function "=" (Left, Right : AbFile_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.AbFile_Package_References."=";
   subtype AbFile_Access_Array_Access_Array is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access_Array;
   function "=" (Left, Right : AbFile_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.file.AbFile_Package_References."=";
   subtype AbFile_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbFile_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.AbFile_Package_References."=";
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   function "=" (Left, Right : Document_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   function "=" (Left, Right : Document_Access_Array) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   function "=" (Left, Right : Document_Access_Array_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   function "=" (Left, Right : Document_Access_Array_Access_Array) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Document_Access_Array_Access_Array_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   function "=" (Left, Right : Node_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   function "=" (Left, Right : Node_Access_Array) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   function "=" (Left, Right : Node_Access_Array_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   function "=" (Left, Right : Node_Access_Array_Access_Array) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Node_Access_Array_Access_Array_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   procedure Initialize_Fields (This : in out FileDomDataModel'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out FileDomDataModel'Class; file_Param : access AbFile_Package.AbFile'Class) is
      file : constant AbFile_Access := AbFile_Access (file_Param);
   begin
      Initialize_Fields (This);
        This.file := file;
   end Initialize;

   function Create (file_Param : access AbFile_Package.AbFile'Class) return FileDomDataModel_Access is
      This : constant FileDomDataModel_Access := new FileDomDataModel;
   begin
      FileDomDataModel_Package.Initialize (This.all, file_Param);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out FileDomDataModel; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      tableMappingInterface : TableMappingInterface_Access;
      hashMap : HashMap_Access;
   begin
        tableMappingInterface := TableMappingInterface_Access (FileTableMapping_Package.Create (This.file));
        hashMap := tableMappingInterface.toHashMap;
        return ModDomHelper_Package.createNodeWithValueNodes (document, To_Unbounded_String ("file"), hashMap);
   end toXmlNode;

   procedure toXmlNode (This : in out FileDomDataModel; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := FileDomDataModel'Class (This).toXmlNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.data.tree.dom.FileDomDataModel_Package;


