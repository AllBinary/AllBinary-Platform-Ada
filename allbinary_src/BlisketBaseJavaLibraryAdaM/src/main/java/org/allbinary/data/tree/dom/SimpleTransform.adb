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


package body org.allbinary.data.tree.dom.SimpleTransform_Package is

   procedure Initialize_Fields (This : in out SimpleTransform'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out SimpleTransform'Class; xsltFilePath_Param : access AbPath'Class; dataFilePath_Param : access AbPath'Class) is
      xsltFilePath : AbPath_Access := AbPath_Access (xsltFilePath_Param);
      dataFilePath : AbPath_Access := AbPath_Access (dataFilePath_Param);
   begin
      Initialize_Fields (This);
        This.xsltFilePath := xsltFilePath;
        This.dataFilePath := dataFilePath;
   end Initialize;

   function Create (xsltFilePath_Param : access AbPath'Class; dataFilePath_Param : access AbPath'Class) return SimpleTransform_Access is
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


