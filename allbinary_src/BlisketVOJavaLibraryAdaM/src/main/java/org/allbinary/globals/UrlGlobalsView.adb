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
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.globals.UrlGlobalsData_Package; use org.allbinary.globals.UrlGlobalsData_Package;

package body org.allbinary.globals.UrlGlobalsView_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   procedure Initialize_Fields (This : in out UrlGlobalsView'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out UrlGlobalsView'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return UrlGlobalsView_Access is
      This : constant UrlGlobalsView_Access := new UrlGlobalsView;
   begin
      UrlGlobalsView_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out UrlGlobalsView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      hashMap : HashMap_Access;
      node : Node_Access;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        hashMap.put (UrlGlobalsData_Package.WEBAPPPATH, org_Package.allbinary.globals.URLGLOBALS.getWebappPath);
        node := ModDomHelper_Package.createNameValueNodes (document, UrlGlobalsData_Package.NAME, hashMap);
        return node;
   end toXmlNode;

   procedure toXmlNode (This : in out UrlGlobalsView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := UrlGlobalsView'Class (This).toXmlNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.globals.UrlGlobalsView_Package;


