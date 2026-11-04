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


with org.allbinary.business.category.CategoryFactoryInterface_Package; use org.allbinary.business.category.CategoryFactoryInterface_Package;
with org.allbinary.business.category.CategoryFactoryInterface_Package_References;
with org.allbinary.business.category.CategoryInterface_Package; use org.allbinary.business.category.CategoryInterface_Package;
with org.allbinary.business.category.CategoryInterface_Package_References;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.io.file.directory.Directory_Package; use org.allbinary.logic.io.file.directory.Directory_Package;
with org.allbinary.logic.io.file.directory.Directory_Package_References;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;

package body org.allbinary.data.tree.category.CategoryModifierTree_Package is

   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   subtype CategoryFactoryInterface_Access is org.allbinary.business.category.CategoryFactoryInterface_Package_References.CategoryFactoryInterface_Access;
   function "=" (Left, Right : CategoryFactoryInterface_Access) return Boolean renames org.allbinary.business.category.CategoryFactoryInterface_Package_References."=";
   subtype CategoryFactoryInterface_Access_Array is org.allbinary.business.category.CategoryFactoryInterface_Package_References.CategoryFactoryInterface_Access_Array;
   function "=" (Left, Right : CategoryFactoryInterface_Access_Array) return Boolean renames org.allbinary.business.category.CategoryFactoryInterface_Package_References."=";
   subtype CategoryFactoryInterface_Access_Array_Access is org.allbinary.business.category.CategoryFactoryInterface_Package_References.CategoryFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : CategoryFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.business.category.CategoryFactoryInterface_Package_References."=";
   subtype CategoryFactoryInterface_Access_Array_Access_Array is org.allbinary.business.category.CategoryFactoryInterface_Package_References.CategoryFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : CategoryFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.category.CategoryFactoryInterface_Package_References."=";
   subtype CategoryFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.business.category.CategoryFactoryInterface_Package_References.CategoryFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CategoryFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.category.CategoryFactoryInterface_Package_References."=";
   subtype CategoryInterface_Access is org.allbinary.business.category.CategoryInterface_Package_References.CategoryInterface_Access;
   function "=" (Left, Right : CategoryInterface_Access) return Boolean renames org.allbinary.business.category.CategoryInterface_Package_References."=";
   subtype CategoryInterface_Access_Array is org.allbinary.business.category.CategoryInterface_Package_References.CategoryInterface_Access_Array;
   function "=" (Left, Right : CategoryInterface_Access_Array) return Boolean renames org.allbinary.business.category.CategoryInterface_Package_References."=";
   subtype CategoryInterface_Access_Array_Access is org.allbinary.business.category.CategoryInterface_Package_References.CategoryInterface_Access_Array_Access;
   function "=" (Left, Right : CategoryInterface_Access_Array_Access) return Boolean renames org.allbinary.business.category.CategoryInterface_Package_References."=";
   subtype CategoryInterface_Access_Array_Access_Array is org.allbinary.business.category.CategoryInterface_Package_References.CategoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : CategoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.category.CategoryInterface_Package_References."=";
   subtype CategoryInterface_Access_Array_Access_Array_Access is org.allbinary.business.category.CategoryInterface_Package_References.CategoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CategoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.category.CategoryInterface_Package_References."=";
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype Directory_Access is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access;
   function "=" (Left, Right : Directory_Access) return Boolean renames org.allbinary.logic.io.file.directory.Directory_Package_References."=";
   subtype Directory_Access_Array is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array;
   function "=" (Left, Right : Directory_Access_Array) return Boolean renames org.allbinary.logic.io.file.directory.Directory_Package_References."=";
   subtype Directory_Access_Array_Access is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array_Access;
   function "=" (Left, Right : Directory_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.directory.Directory_Package_References."=";
   subtype Directory_Access_Array_Access_Array is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array_Access_Array;
   function "=" (Left, Right : Directory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.file.directory.Directory_Package_References."=";
   subtype Directory_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Directory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.directory.Directory_Package_References."=";
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   procedure Initialize_Fields (This : in out CategoryModifierTree'Class) is
   begin
      null;
      This.CategoryModifierTree_Field_logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.directory := Directory_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out CategoryModifierTree'Class; categoryFactoryInterface_Param : access CategoryFactoryInterface_Package.CategoryFactoryInterface'Class) is
      categoryFactoryInterface : constant CategoryFactoryInterface_Access := CategoryFactoryInterface_Access (categoryFactoryInterface_Param);
   begin
        CategoryPrivateTree_Package.Initialize (This, categoryFactoryInterface);
        Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.CATEGORY) then
            This.CategoryModifierTree_Field_logUtil.putF (This.commonStrings.START, CategoryModifierTree_Access'(This'Unchecked_Access), To_Unbounded_String ("CategoryModifierTree(CategoryFactoryInterface categoryFactoryInterface)"));
        end if;
   end Initialize;

   function Create (categoryFactoryInterface_Param : access CategoryFactoryInterface_Package.CategoryFactoryInterface'Class) return CategoryModifierTree_Access is
      This : constant CategoryModifierTree_Access := new CategoryModifierTree;
   begin
      CategoryModifierTree_Package.Initialize (This.all, categoryFactoryInterface_Param);
      return This;
   end Create;

   procedure insert (This : in out CategoryModifierTree; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; newChildCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) is
      parentCategoryInterface : constant CategoryInterface_Access := CategoryInterface_Access (parentCategoryInterface_Param);
      newChildCategoryInterface : constant CategoryInterface_Access := CategoryInterface_Access (newChildCategoryInterface_Param);
      directoryToBeCreatedAbPath : AbPath_Access;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.CATEGORY) then
                This.CategoryModifierTree_Field_logUtil.putF (To_Unbounded_String ("Inserting"), CategoryModifierTree_Access'(This'Unchecked_Access), To_Unbounded_String ("insert()"));
            end if;
            if parentCategoryInterface.isValid.booleanValue then
                parentCategoryInterface.addChild (newChildCategoryInterface);
                directoryToBeCreatedAbPath := AbPath_Package.Create (newChildCategoryInterface.getRootFilePath.toString & newChildCategoryInterface.getPath.toString, StringUtil_Package.getInstance.EMPTY_STRING);
                This.directory.create (directoryToBeCreatedAbPath);
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.CATEGORY) then
                    This.CategoryModifierTree_Field_logUtil.putF (To_Unbounded_String ("Saving"), CategoryModifierTree_Access'(This'Unchecked_Access), To_Unbounded_String ("insert()"));
                end if;
                CategoryModifierTree'Class (This).save (parentCategoryInterface);
                CategoryModifierTree'Class (This).save (newChildCategoryInterface);
            else
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Will Not Add Null Category")));
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.CategoryModifierTree_Field_logUtil.put (This.commonStrings.FAILURE, CategoryModifierTree_Access'(This'Unchecked_Access), To_Unbounded_String ("insert"), e);
            end if;
                end;
        end;
   end insert;

   procedure delete (This : in out CategoryModifierTree; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; existingChildCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) is
      parentCategoryInterface : constant CategoryInterface_Access := CategoryInterface_Access (parentCategoryInterface_Param);
      existingChildCategoryInterface : constant CategoryInterface_Access := CategoryInterface_Access (existingChildCategoryInterface_Param);
      directoryToBeDeletedAbPath : AbPath_Access;
   begin
        begin
            if parentCategoryInterface.isValid.booleanValue then
                parentCategoryInterface.addChild (existingChildCategoryInterface);
                directoryToBeDeletedAbPath := AbPath_Package.Create (existingChildCategoryInterface.getRootFilePath.toString & existingChildCategoryInterface.getPath.toString, StringUtil_Package.getInstance.EMPTY_STRING);
                CategoryModifierTree'Class (This).delete (existingChildCategoryInterface);
                parentCategoryInterface.removeChild (existingChildCategoryInterface);
                CategoryModifierTree'Class (This).save (parentCategoryInterface);
                This.directory.remove (directoryToBeDeletedAbPath);
            else
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Will Not Add Null Category")));
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.CategoryModifierTree_Field_logUtil.put (This.commonStrings.FAILURE, CategoryModifierTree_Access'(This'Unchecked_Access), This.commonStrings.delete, e);
            end if;
                end;
        end;
   end delete;

end org.allbinary.data.tree.category.CategoryModifierTree_Package;


