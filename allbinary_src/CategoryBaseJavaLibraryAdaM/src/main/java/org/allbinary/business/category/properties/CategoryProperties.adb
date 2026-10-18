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
with org.allbinary.business.category.CategoryInterface_Package; use org.allbinary.business.category.CategoryInterface_Package;
with org.allbinary.business.category.CategoryUtil_Package; use org.allbinary.business.category.CategoryUtil_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.sql.AbSqlData_Package; use org.allbinary.logic.communication.sql.AbSqlData_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package body org.allbinary.business.category.properties.CategoryProperties_Package is

   package CategoryData_Package renames Standard.org.allbinary.business.category.CategoryData_Package;
   package CategoryInterface_Package renames Standard.org.allbinary.business.category.CategoryInterface_Package;
   package CategoryUtil_Package renames Standard.org.allbinary.business.category.CategoryUtil_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package AbSqlData_Package renames Standard.org.allbinary.logic.communication.sql.AbSqlData_Package;
   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out CategoryProperties'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out CategoryProperties'Class; name : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.category := name;
   end Initialize;

   function Create (name : Unbounded_String) return CategoryProperties_Access is
      This : constant CategoryProperties_Access := new CategoryProperties;
   begin
      CategoryProperties_Package.Initialize (This.all, name);
      return This;
   end Create;

   procedure Initialize (This : in out CategoryProperties'Class; node_Param : access Node_Package.Node'Class) is
      node : constant Node_Access := Node_Access (node_Param);
   begin
      Initialize_Fields (This);
        This.category := CategoryUtil_Package.getNameFromNode (node);
   end Initialize;

   function Create (node_Param : access Node_Package.Node'Class) return CategoryProperties_Access is
      This : constant CategoryProperties_Access := new CategoryProperties;
   begin
      CategoryProperties_Package.Initialize (This.all, node_Param);
      return This;
   end Create;

   procedure Initialize (This : in out CategoryProperties'Class; categoryPropertiesHashMap_Param : access HashMap_Package.HashMap'Class) is
      categoryPropertiesHashMap : constant HashMap_Access := HashMap_Access (categoryPropertiesHashMap_Param);
   begin
      Initialize_Fields (This);
        This.category := Java_New_String (Java_Unbox (categoryPropertiesHashMap.get (CategoryData_Package.getInstance.NAME)));
   end Initialize;

   function Create (categoryPropertiesHashMap_Param : access HashMap_Package.HashMap'Class) return CategoryProperties_Access is
      This : constant CategoryProperties_Access := new CategoryProperties;
   begin
      CategoryProperties_Package.Initialize (This.all, categoryPropertiesHashMap_Param);
      return This;
   end Create;

   function isRealRoot (This : in out CategoryProperties) return Boolean is
   begin
        return False;
   end isRealRoot;

   function isRoot (This : in out CategoryProperties) return Boolean is
   begin
        return False;
   end isRoot;

   function getKey (This : in out CategoryProperties) return Java_Object_Access is
   begin
        return Java_Object_Access (CategoryProperties'Class (This).getValue);
   end getKey;

   function getValue (This : in out CategoryProperties) return Unbounded_String is
   begin
        return This.category;
   end getValue;

   --  throws Exception
   function getPath (This : in out CategoryProperties; categoryHierarchyInterface_Param : access CategoryHierarchyInterface_Package.CategoryHierarchyInterface'Class) return AbPath_Access is
      categoryHierarchyInterface : constant CategoryHierarchyInterface_Access := CategoryHierarchyInterface_Access (categoryHierarchyInterface_Param);
      abPathData : AbPathData_Access;
      pathStringBuffer : StringMaker_Access;
      list : BasicArrayList_Access;
      nextParentCategoryInterface : CategoryInterface_Access;
      depthIndex : Integer;
      size : Integer;
      index : Integer;
   begin
        abPathData := AbPathData_Package.getInstance;
        pathStringBuffer := StringMaker_Package.Create;
        list := BasicArrayList_Access (BasicArrayListD_Package.Create);
        nextParentCategoryInterface := categoryHierarchyInterface.getParent;
        if (CategoryProperties_Access'(This'Unchecked_Access)) /= (nextParentCategoryInterface.getProperties) then
            depthIndex := 0;
            while (nextParentCategoryInterface) /= (null) loop
                if nextParentCategoryInterface.getProperties.isRealRoot then
                    exit;
                end if;
                if nextParentCategoryInterface.getProperties.isRoot then
                    list.addAt (0, nextParentCategoryInterface.getPath.toString);
                else
                    pathStringBuffer.delete (0, pathStringBuffer.length);
                    list.addAt (0, pathStringBuffer.append (abPathData.SEPARATOR).append (nextParentCategoryInterface.getProperties.getValue).toString);
                end if;
                if (nextParentCategoryInterface) = (nextParentCategoryInterface.getHierarchy.getParent) then
                    exit;
                end if;
                nextParentCategoryInterface := nextParentCategoryInterface.getHierarchy.getParent;
                depthIndex := depthIndex + 1;
                if (depthIndex) > (CategoryProperties_Package.MAXDEPTH) then
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Probably Major Error")));
                end if;
            end loop;
        end if;
        pathStringBuffer.delete (0, pathStringBuffer.length);
        pathStringBuffer.append (abPathData.SEPARATOR).append (CategoryProperties'Class (This).getValue);
        size := list.size;
        for index in 0 .. (size) - 1 loop
            pathStringBuffer.append (Java_Unbox (list.get (index)));
        end loop;
        pathStringBuffer.append (abPathData.SEPARATOR);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.CATEGORY) then
            This.logUtil.putF (To_Unbounded_String ("path = ") & pathStringBuffer.toString, CategoryProperties_Access'(This'Unchecked_Access), To_Unbounded_String ("getPath"));
        end if;
        return AbPath_Package.Create (pathStringBuffer.toString, StringUtil_Package.getInstance.EMPTY_STRING);
   end getPath;

   function getFileName (This : in out CategoryProperties) return Unbounded_String is
   begin
        return ((CategoryProperties'Class (This).getValue) + (AbPathData_Package.getInstance.EXTENSION_SEP)) + (CategoryData_Package.getInstance.UNCRYPTED_EXTENSION);
   end getFileName;

   --  throws Exception
   function getWebAppPath (This : in out CategoryProperties) return AbPath_Access is
   begin
        Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Not Root")));
        return null;
   end getWebAppPath;

   procedure setValue (This : in out CategoryProperties; value : Unbounded_String) is
   begin
        This.category := value;
   end setValue;

   function isValid (This : in out CategoryProperties) return Boolean is
      returnBoolean : Boolean;
   begin
        returnBoolean := False;
        if StringValidationUtil_Package.getInstance.isValidRequired (This.category, 1, AbSqlData_Package.MAXSTRING) then
            returnBoolean := True;
        end if;
        return returnBoolean;
   end isValid;

   function toHashMap (This : in out CategoryProperties) return HashMap_Access is
      categoryHashMap : HashMap_Access;
   begin
        categoryHashMap := StdUtil_Package.getInstance.createHashMap;
        categoryHashMap.put (CategoryData_Package.getInstance.NAME, Java_Box (This.category));
        return categoryHashMap;
   end toHashMap;

   function toVector (This : in out CategoryProperties) return BasicArrayList_Access is
      categoryVector : BasicArrayList_Access;
   begin
        categoryVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        categoryVector.add (This.category);
        return categoryVector;
   end toVector;

   --  throws Exception
   function toValidationInfoDoc (This : in out CategoryProperties) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   --  throws Exception
   function toValidationInfoNode (This : in out CategoryProperties; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   --  throws Exception
   function validationInfo (This : in out CategoryProperties) return Unbounded_String is
   begin
        return Null_Unbounded_String;
   end validationInfo;

   procedure getPath (This : in out CategoryProperties; categoryHierarchyInterface_Param : access CategoryHierarchyInterface_Package.CategoryHierarchyInterface'Class) is
      Java_Result : constant AbPath_Access := CategoryProperties'Class (This).getPath (categoryHierarchyInterface_Param => categoryHierarchyInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPath;

   procedure toValidationInfoNode (This : in out CategoryProperties; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := CategoryProperties'Class (This).toValidationInfoNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

begin
   null;
   MAXDEPTH := 100;

end org.allbinary.business.category.properties.CategoryProperties_Package;


