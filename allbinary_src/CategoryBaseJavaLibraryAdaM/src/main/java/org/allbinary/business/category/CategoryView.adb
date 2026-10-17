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


package body org.allbinary.business.category.CategoryView_Package is

   procedure Initialize_Fields (This : in out CategoryView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out CategoryView'Class; categoryInterface : CategoryInterface_Access) is
   begin
      Initialize_Fields (This);
        This.categoryInterface := categoryInterface;
   end Initialize;

   function Create (categoryInterface : CategoryInterface_Access) return CategoryView_Access is
      This : constant CategoryView_Access := new CategoryView;
   begin
      Initialize (This.all, categoryInterface);
      return This;
   end Create;

   function getCategoryInterface (This : in out CategoryView) return CategoryInterface_Access is
   begin
        return This.categoryInterface;
   end getCategoryInterface;

   --  throws Exception
   function toXmlNode (This : in out CategoryView; document : Document_Access) return Node_Access is
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
            This.logUtil.putF (To_Unbounded_String ("Number Of Children: ") & Java_Image (childCategoryVector.size), This'Unchecked_Access, To_Unbounded_String ("toXmlNode"));
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

   procedure getCategoryInterface (This : in out CategoryView) is
      Java_Result : constant CategoryInterface_Access := CategoryView'Class (This).getCategoryInterface;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCategoryInterface;

   procedure toXmlNode (This : in out CategoryView; document : Document_Access) is
      Java_Result : constant Node_Access := CategoryView'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.business.category.CategoryView_Package;


