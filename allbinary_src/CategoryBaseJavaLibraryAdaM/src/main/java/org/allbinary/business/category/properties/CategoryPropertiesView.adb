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


package body org.allbinary.business.category.properties.CategoryPropertiesView_Package is

   procedure Initialize_Fields (This : in out CategoryPropertiesView'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out CategoryPropertiesView'Class; categoryPropertiesInterface : CategoryPropertiesInterface_Access) is
   begin
      Initialize_Fields (This);
        This.categoryPropertiesInterface := categoryPropertiesInterface;
   end Initialize;

   function Create (categoryPropertiesInterface : CategoryPropertiesInterface_Access) return CategoryPropertiesView_Access is
      This : constant CategoryPropertiesView_Access := new CategoryPropertiesView;
   begin
      Initialize (This.all, categoryPropertiesInterface);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out CategoryPropertiesView; document : Document_Access) return Node_Access is
      categoryNode : Node_Access;
      newCategoryNode : Element_Access;
   begin
        categoryNode := document.createElement (CategoryData_Package.getInstance.NAME);
        newCategoryNode := Element_Access (categoryNode);
        newCategoryNode.setAttribute (CategoryData_Package.getInstance.LABEL, This.categoryPropertiesInterface.getValue);
        return categoryNode;
   end toXmlNode;

   procedure toXmlNode (This : in out CategoryPropertiesView; document : Document_Access) is
      Java_Result : constant Node_Access := CategoryPropertiesView'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.business.category.properties.CategoryPropertiesView_Package;


