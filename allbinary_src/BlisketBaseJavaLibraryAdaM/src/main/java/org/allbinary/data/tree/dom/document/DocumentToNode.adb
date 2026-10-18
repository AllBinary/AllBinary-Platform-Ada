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


package body org.allbinary.data.tree.dom.document.DocumentToNode_Package is

   procedure Initialize_Fields (This : in out DocumentToNode'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out DocumentToNode'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return DocumentToNode_Access is
      This : constant DocumentToNode_Access := new DocumentToNode;
   begin
      DocumentToNode_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function convertDocumentToNodeString (documentString_Param : Unbounded_String) return Unbounded_String is
      documentString : Unbounded_String := documentString_Param;
      replaceXmlRoot : Replace_Access;
   begin
        documentString := DocumentToNode_Package.remove (documentString, DocumentToNode_Package.XMLJSPROOTSTART, DocumentToNode_Package.XMLEND);
        documentString := DocumentToNode_Package.remove (documentString, DocumentToNode_Package.XMLJSPROOTENDSTART, DocumentToNode_Package.XMLEND);
        replaceXmlRoot := Replace_Package.Create (XMLROOT, StringUtil_Package.getInstance.EMPTY_STRING);
        return replaceXmlRoot.all_Id (documentString);
   end convertDocumentToNodeString;

   function removeXmlDefinitionFromDocumentString (documentString : Unbounded_String) return Unbounded_String is
   begin
        return DocumentToNode_Package.remove (documentString, XMLROOTSTART, XMLROOTEND);
   end removeXmlDefinitionFromDocumentString;

   function remove (documentString : Unbounded_String; start : Unbounded_String; end_Id : Unbounded_String) return Unbounded_String is
      startIndex : Integer;
      endIndex : Integer;
      startString : Unbounded_String;
      resultString : Unbounded_String;
   begin
        startIndex := 0;
        while ((Java_Assign (startIndex, (Index (documentString, Java_Image (start)) - 1)))) /= (-(1)) loop
            if (startIndex) >= (0) then
                endIndex := documentString.indexOf (end_Id, startIndex);
                if (endIndex) >= (0) then
                    startString := Unbounded_Slice (documentString, (0) + 1, startIndex);
                    resultString := Unbounded_Slice (documentString, ((endIndex) + (1)) + 1, Length (documentString));
                    return startString & resultString;
                end if;
            end if;
        end loop;
        return documentString;
   end remove;

   procedure convertDocumentToNodeString (documentString_Param : Unbounded_String) is
      Java_Result : constant Unbounded_String := convertDocumentToNodeString (documentString_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end convertDocumentToNodeString;

   procedure removeXmlDefinitionFromDocumentString (documentString : Unbounded_String) is
      Java_Result : constant Unbounded_String := removeXmlDefinitionFromDocumentString (documentString);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end removeXmlDefinitionFromDocumentString;

   procedure remove (documentString : Unbounded_String; start : Unbounded_String; end_Id : Unbounded_String) is
      Java_Result : constant Unbounded_String := remove (documentString, start, end_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end remove;

begin
   null;
   XMLROOT := To_Unbounded_String ("<?xml version=""1.0"" encoding=""UTF-8""?>");
   XMLROOTSTART := To_Unbounded_String ("<?xml");
   XMLROOTEND := To_Unbounded_String ("?>");
   XMLJSPROOTSTART := To_Unbounded_String ("<jsp:root");
   XMLEND := To_Unbounded_String (">");
   XMLJSPROOTENDSTART := To_Unbounded_String ("</jsp:root");

end org.allbinary.data.tree.dom.document.DocumentToNode_Package;


