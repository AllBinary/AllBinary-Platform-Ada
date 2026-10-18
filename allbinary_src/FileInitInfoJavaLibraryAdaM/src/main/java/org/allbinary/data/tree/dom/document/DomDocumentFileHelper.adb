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


with org.allbinary.logic.io.AbDataOutputStream_Package; use org.allbinary.logic.io.AbDataOutputStream_Package;
with org.allbinary.logic.io.AbFileInputStream_Package; use org.allbinary.logic.io.AbFileInputStream_Package;
with org.allbinary.logic.io.DataOutputStreamFactory_Package; use org.allbinary.logic.io.DataOutputStreamFactory_Package;
with org.allbinary.logic.io.StreamUtil_Package; use org.allbinary.logic.io.StreamUtil_Package;
with org.allbinary.data.tree.dom.document.DomDocumentHelper_Package; use org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;

package body org.allbinary.data.tree.dom.document.DomDocumentFileHelper_Package is

   package AbDataOutputStream_Package renames Standard.org.allbinary.logic.io.AbDataOutputStream_Package;
   package AbFileInputStream_Package renames Standard.org.allbinary.logic.io.AbFileInputStream_Package;
   package DataOutputStreamFactory_Package renames Standard.org.allbinary.logic.io.DataOutputStreamFactory_Package;
   package StreamUtil_Package renames Standard.org.allbinary.logic.io.StreamUtil_Package;
   procedure Initialize_Fields (This : in out DomDocumentFileHelper'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out DomDocumentFileHelper'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return DomDocumentFileHelper_Access is
      This : constant DomDocumentFileHelper_Access := new DomDocumentFileHelper;
   begin
      DomDocumentFileHelper_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function createDocument (xmlFile_Param : access AbFile_Package.AbFile'Class) return Document_Access is
      xmlFile : constant AbFile_Access := AbFile_Access (xmlFile_Param);
   begin
        begin
            return DomDocumentHelper_Package.create (AbFileInputStream_Package.Create (xmlFile));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end createDocument;

   --  throws Exception
   procedure save (file_Param : access AbFile_Package.AbFile'Class; document_Param : access Document_Package.Document'Class) is
      file : constant AbFile_Access := AbFile_Access (file_Param);
      document : constant Document_Access := Document_Access (document_Param);
      dataOutputStream : AbDataOutputStream_Access;
      copyTransformerFactory : TransformerFactory_Access;
      copyTransformer : Transformer_Access;
      domSource : DOMSource_Access;
      streamResult : StreamResult_Access;
   begin
        dataOutputStream := null;
        begin
            copyTransformerFactory := TransformerFactory_Package.newInstance;
            copyTransformer := copyTransformerFactory.newTransformer;
            domSource := DOMSource_Package.Create (document);
            if file.isFile then
                file.delete;
            end if;
            file.createNewFile;
            dataOutputStream := DataOutputStreamFactory_Package.getInstance.getInstanceForAbFile (file);
            streamResult := StreamResult_Package.Create (dataOutputStream);
            copyTransformer.transform (domSource, streamResult);
            dataOutputStream.flush;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
        --  finally
        begin
            StreamUtil_Package.getInstance.close (dataOutputStream);
        end;
   end save;

   procedure createDocument (xmlFile_Param : access AbFile_Package.AbFile'Class) is
      Java_Result : constant Document_Access := createDocument (xmlFile_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createDocument;

end org.allbinary.data.tree.dom.document.DomDocumentFileHelper_Package;


