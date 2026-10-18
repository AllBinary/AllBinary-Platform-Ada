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


with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.category.properties.CategoryPropertiesInterface_Package; use org.allbinary.business.category.properties.CategoryPropertiesInterface_Package;
with org.allbinary.business.category.properties.CategoryPropertiesView_Package; use org.allbinary.business.category.properties.CategoryPropertiesView_Package;
with org.allbinary.logic.java.anyType.InterfaceUtil_Package; use org.allbinary.logic.java.anyType.InterfaceUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.business.category.CategoryData_Package; use org.allbinary.business.category.CategoryData_Package;

package body org.allbinary.business.category.CategoryView_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package CategoryPropertiesInterface_Package renames Standard.org.allbinary.business.category.properties.CategoryPropertiesInterface_Package;
   package CategoryPropertiesView_Package renames Standard.org.allbinary.business.category.properties.CategoryPropertiesView_Package;
   package InterfaceUtil_Package renames Standard.org.allbinary.logic.java.anyType.InterfaceUtil_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   procedure Initialize_Fields (This : in out CategoryView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out CategoryView'Class; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) is
      categoryInterface : constant CategoryInterface_Access := CategoryInterface_Access (categoryInterface_Param);
   begin
      Initialize_Fields (This);
        This.categoryInterface := categoryInterface;
   end Initialize;

   function Create (categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) return CategoryView_Access is
      This : constant CategoryView_Access := new CategoryView;
   begin
      CategoryView_Package.Initialize (This.all, categoryInterface_Param);
      return This;
   end Create;

   function getCategoryInterface (This : in out CategoryView) return CategoryInterface_Access is
   begin
        return This.categoryInterface;
   end getCategoryInterface;

   --  throws Exception
   function toXmlNode (This : in out CategoryView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      node : Node_Access;
      childCategoryVector : BasicArrayList_Access;
      size : Integer;
      anyType : Java_Object_Access;
      categoryPropertiesInterface : CategoryPropertiesInterface_Access;
      isImpl : Unbounded_String;
      categoryInterface : CategoryInterface_Access;
      childCategoryNode : Node_Access;
      i : Integer;
   begin
        node := document.createElement (CategoryData_Package.getInstance.NAME);
        childCategoryVector := This.categoryInterface.getChildNodes;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.CATEGORY) then
            This.logUtil.putF (To_Unbounded_String ("Number Of Children: ") & Java_Image (childCategoryVector.size), CategoryView_Access'(This'Unchecked_Access), To_Unbounded_String ("toXmlNode"));
        end if;
        size := childCategoryVector.size;
        for i in 0 .. (size) - 1 loop
            anyType := childCategoryVector.get (i);
            categoryPropertiesInterface := null;
            if InterfaceUtil_Package.isImplemented (To_Unbounded_String ("CategoryPropertiesInterface"), anyType) then
                categoryPropertiesInterface := CategoryPropertiesInterface_Access (anyType);
            elsif InterfaceUtil_Package.isImplemented (To_Unbounded_String ("CategoryInterface"), anyType) then
                categoryInterface := CategoryInterface_Access (anyType);
                categoryPropertiesInterface := categoryInterface.getProperties;
            else
                isImpl := InterfaceUtil_Package.viewAll (anyType.all'Tag, CommonSeps_Package.getInstance.NEW_LINE);
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("CategoryView found unknown object." & ASCII.LF & "") & To_Unbounded_String ("Show Testing:") & isImpl));
            end if;
            childCategoryNode := CategoryPropertiesView_Package.Create (categoryPropertiesInterface).toXmlNode (document);
            node.appendChild (childCategoryNode);
        end loop;
        return node;
   end toXmlNode;

   procedure toXmlNode (This : in out CategoryView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := CategoryView'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.business.category.CategoryView_Package;


