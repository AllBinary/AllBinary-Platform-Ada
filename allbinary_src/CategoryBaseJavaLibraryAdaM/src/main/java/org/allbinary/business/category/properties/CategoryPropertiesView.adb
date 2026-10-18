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


with org.allbinary.business.category.CategoryData_Package; use org.allbinary.business.category.CategoryData_Package;
with org.w3c.dom.Element_Package; use org.w3c.dom.Element_Package;

package body org.allbinary.business.category.properties.CategoryPropertiesView_Package is

   package CategoryData_Package renames Standard.org.allbinary.business.category.CategoryData_Package;
   package Element_Package renames Standard.org.w3c.dom.Element_Package;
   procedure Initialize_Fields (This : in out CategoryPropertiesView'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out CategoryPropertiesView'Class; categoryPropertiesInterface_Param : access CategoryPropertiesInterface_Package.CategoryPropertiesInterface'Class) is
      categoryPropertiesInterface : constant CategoryPropertiesInterface_Access := CategoryPropertiesInterface_Access (categoryPropertiesInterface_Param);
   begin
      Initialize_Fields (This);
        This.categoryPropertiesInterface := categoryPropertiesInterface;
   end Initialize;

   function Create (categoryPropertiesInterface_Param : access CategoryPropertiesInterface_Package.CategoryPropertiesInterface'Class) return CategoryPropertiesView_Access is
      This : constant CategoryPropertiesView_Access := new CategoryPropertiesView;
   begin
      CategoryPropertiesView_Package.Initialize (This.all, categoryPropertiesInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out CategoryPropertiesView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      categoryNode : Node_Access;
      newCategoryNode : Element_Access;
   begin
        categoryNode := document.createElement (CategoryData_Package.getInstance.NAME);
        newCategoryNode := Element_Access (categoryNode);
        newCategoryNode.setAttribute (CategoryData_Package.getInstance.LABEL, This.categoryPropertiesInterface.getValue);
        return categoryNode;
   end toXmlNode;

   procedure toXmlNode (This : in out CategoryPropertiesView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := CategoryPropertiesView'Class (This).toXmlNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.business.category.properties.CategoryPropertiesView_Package;


