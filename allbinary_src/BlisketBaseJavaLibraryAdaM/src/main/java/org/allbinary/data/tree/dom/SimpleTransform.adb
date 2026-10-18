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


with org.allbinary.data.tree.dom.document.DomDocumentHelper_Package; use org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
with org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package; use org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
with org.allbinary.logic.io.AbFileLocalInputStream_Package; use org.allbinary.logic.io.AbFileLocalInputStream_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.allbinary.data.tree.dom.XslHelper_Package; use org.allbinary.data.tree.dom.XslHelper_Package;

package body org.allbinary.data.tree.dom.SimpleTransform_Package is

   package DomDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
   package XmlDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
   package AbFileLocalInputStream_Package renames Standard.org.allbinary.logic.io.AbFileLocalInputStream_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   procedure Initialize_Fields (This : in out SimpleTransform'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out SimpleTransform'Class; xsltFilePath_Param : access AbPath_Package.AbPath'Class; dataFilePath_Param : access AbPath_Package.AbPath'Class) is
      xsltFilePath : constant AbPath_Access := AbPath_Access (xsltFilePath_Param);
      dataFilePath : constant AbPath_Access := AbPath_Access (dataFilePath_Param);
   begin
      Initialize_Fields (This);
        This.xsltFilePath := xsltFilePath;
        This.dataFilePath := dataFilePath;
   end Initialize;

   function Create (xsltFilePath_Param : access AbPath_Package.AbPath'Class; dataFilePath_Param : access AbPath_Package.AbPath'Class) return SimpleTransform_Access is
      This : constant SimpleTransform_Access := new SimpleTransform;
   begin
      SimpleTransform_Package.Initialize (This.all, xsltFilePath_Param, dataFilePath_Param);
      return This;
   end Create;

   --  throws Exception
   function transform (This : in out SimpleTransform) return Unbounded_String is
      inputStream : AbFileLocalInputStream_Access;
      document : Document_Access;
      result : Unbounded_String;
   begin
        inputStream := AbFileLocalInputStream_Package.Create (AbFile_Package.createAbFileFromAbPath (This.xsltFilePath));
        document := DomDocumentHelper_Package.create (AbFileLocalInputStream_Package.Create (AbFile_Package.createAbFileFromAbPath (This.dataFilePath)));
        result := XslHelper_Package.getInstance.translate (StreamSource_Package.Create (inputStream), StreamSource_Package.Create (StringBufferInputStream_Package.Create (XmlDocumentHelper_Package.toString (document))));
        return result;
   end transform;

end org.allbinary.data.tree.dom.SimpleTransform_Package;


