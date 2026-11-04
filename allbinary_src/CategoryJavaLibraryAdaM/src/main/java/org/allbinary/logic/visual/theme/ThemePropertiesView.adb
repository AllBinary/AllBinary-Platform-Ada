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


with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.allbinary.logic.visual.theme.ThemeInterface_Package; use org.allbinary.logic.visual.theme.ThemeInterface_Package;
with org.allbinary.logic.visual.theme.ThemeInterface_Package_References;
with org.allbinary.logic.visual.theme.ThemeData_Package; use org.allbinary.logic.visual.theme.ThemeData_Package;
with org.allbinary.logic.visual.theme.ThemeInterface_Package;

package body org.allbinary.logic.visual.theme.ThemePropertiesView_Package is

   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
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
   subtype ThemeInterface_Access is org.allbinary.logic.visual.theme.ThemeInterface_Package_References.ThemeInterface_Access;
   function "=" (Left, Right : ThemeInterface_Access) return Boolean renames org.allbinary.logic.visual.theme.ThemeInterface_Package_References."=";
   subtype ThemeInterface_Access_Array is org.allbinary.logic.visual.theme.ThemeInterface_Package_References.ThemeInterface_Access_Array;
   function "=" (Left, Right : ThemeInterface_Access_Array) return Boolean renames org.allbinary.logic.visual.theme.ThemeInterface_Package_References."=";
   subtype ThemeInterface_Access_Array_Access is org.allbinary.logic.visual.theme.ThemeInterface_Package_References.ThemeInterface_Access_Array_Access;
   function "=" (Left, Right : ThemeInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.theme.ThemeInterface_Package_References."=";
   subtype ThemeInterface_Access_Array_Access_Array is org.allbinary.logic.visual.theme.ThemeInterface_Package_References.ThemeInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ThemeInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.theme.ThemeInterface_Package_References."=";
   subtype ThemeInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.theme.ThemeInterface_Package_References.ThemeInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ThemeInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.theme.ThemeInterface_Package_References."=";
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


