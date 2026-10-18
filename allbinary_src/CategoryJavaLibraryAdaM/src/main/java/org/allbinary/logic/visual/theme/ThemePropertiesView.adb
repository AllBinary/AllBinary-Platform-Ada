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


with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.logic.visual.theme.ThemeData_Package; use org.allbinary.logic.visual.theme.ThemeData_Package;

package body org.allbinary.logic.visual.theme.ThemePropertiesView_Package is

   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   procedure Initialize_Fields (This : in out ThemePropertiesView'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ThemePropertiesView'Class; themeInterface_Param : access ThemeInterface_Package.ThemeInterface'Class) is
      themeInterface : constant ThemeInterface_Access := ThemeInterface_Access (themeInterface_Param);
   begin
      Initialize_Fields (This);
        This.themeInterface := themeInterface;
   end Initialize;

   function Create (themeInterface_Param : access ThemeInterface_Package.ThemeInterface'Class) return ThemePropertiesView_Access is
      This : constant ThemePropertiesView_Access := new ThemePropertiesView;
   begin
      ThemePropertiesView_Package.Initialize (This.all, themeInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out ThemePropertiesView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      node : Node_Access;
   begin
        node := ModDomHelper_Package.createNameValueNodes (document, ThemeData_Package.getInstance.NAME, This.themeInterface.toHashMap);
        return node;
   end toXmlNode;

   procedure toXmlNode (This : in out ThemePropertiesView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := ThemePropertiesView'Class (This).toXmlNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.logic.visual.theme.ThemePropertiesView_Package;


