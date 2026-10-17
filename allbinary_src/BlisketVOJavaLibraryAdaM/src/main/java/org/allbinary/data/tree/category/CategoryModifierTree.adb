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


package body org.allbinary.data.tree.category.CategoryModifierTree_Package is

   procedure Initialize_Fields (This : in out CategoryModifierTree'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.directory := Directory_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out CategoryModifierTree'Class; categoryFactoryInterface : CategoryFactoryInterface_Access) is
   begin
        CategoryPrivateTree_Package.Initialize (This, categoryFactoryInterface);
        Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.CATEGORY) then
            This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, To_Unbounded_String ("CategoryModifierTree(CategoryFactoryInterface categoryFactoryInterface)"));
        end if;
   end Initialize;

   function Create (categoryFactoryInterface : CategoryFactoryInterface_Access) return CategoryModifierTree_Access is
      This : constant CategoryModifierTree_Access := new CategoryModifierTree;
   begin
      CategoryModifierTree_Package.Initialize (This.all, categoryFactoryInterface);
      return This;
   end Create;

   procedure insert (This : in out CategoryModifierTree; parentCategoryInterface : CategoryInterface_Access; newChildCategoryInterface : CategoryInterface_Access) is
      directoryToBeCreatedAbPath : AbPath_Access;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.CATEGORY) then
                This.logUtil.putF (To_Unbounded_String ("Inserting"), This'Unchecked_Access, To_Unbounded_String ("insert()"));
            end if;
            if parentCategoryInterface.isValid.booleanValue then
                parentCategoryInterface.addChild (newChildCategoryInterface);
                directoryToBeCreatedAbPath := AbPath_Package.Create (newChildCategoryInterface.getRootFilePath.toString & newChildCategoryInterface.getPath.toString, StringUtil_Package.getInstance.EMPTY_STRING);
                This.directory.create (directoryToBeCreatedAbPath);
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.CATEGORY) then
                    This.logUtil.putF (To_Unbounded_String ("Saving"), This'Unchecked_Access, To_Unbounded_String ("insert()"));
                end if;
                This.save (parentCategoryInterface);
                This.save (newChildCategoryInterface);
            else
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Will Not Add Null Category")));
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, This'Unchecked_Access, To_Unbounded_String ("insert"), e);
            end if;
                end;
        end;
   end insert;

   procedure delete (This : in out CategoryModifierTree; parentCategoryInterface : CategoryInterface_Access; existingChildCategoryInterface : CategoryInterface_Access) is
      directoryToBeDeletedAbPath : AbPath_Access;
   begin
        begin
            if parentCategoryInterface.isValid.booleanValue then
                parentCategoryInterface.addChild (existingChildCategoryInterface);
                directoryToBeDeletedAbPath := AbPath_Package.Create (existingChildCategoryInterface.getRootFilePath.toString & existingChildCategoryInterface.getPath.toString, StringUtil_Package.getInstance.EMPTY_STRING);
                This.delete (existingChildCategoryInterface);
                parentCategoryInterface.removeChild (existingChildCategoryInterface);
                This.save (parentCategoryInterface);
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
                This.logUtil.put (This.commonStrings.FAILURE, This'Unchecked_Access, This.commonStrings.delete, e);
            end if;
                end;
        end;
   end delete;

end org.allbinary.data.tree.category.CategoryModifierTree_Package;


