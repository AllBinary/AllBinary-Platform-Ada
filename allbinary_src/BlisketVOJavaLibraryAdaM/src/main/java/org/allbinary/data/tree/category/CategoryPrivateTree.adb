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


package body org.allbinary.data.tree.category.CategoryPrivateTree_Package is

   procedure Initialize_Fields (This : in out CategoryPrivateTree'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out CategoryPrivateTree'Class; categoryFactoryInterface : CategoryFactoryInterface_Access) is
      commonStrings : CommonStrings_Access;
   begin
      Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.CATEGORY) then
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.putF (commonStrings.START, This'Unchecked_Access, To_Unbounded_String ("CategoryPrivateTree(CategoryFactoryInterface categoryFactoryInterface)"));
        end if;
        This.categoryFactoryInterface := categoryFactoryInterface;
   end Initialize;

   function Create (categoryFactoryInterface : CategoryFactoryInterface_Access) return CategoryPrivateTree_Access is
      This : constant CategoryPrivateTree_Access := new CategoryPrivateTree;
   begin
      CategoryPrivateTree_Package.Initialize (This.all, categoryFactoryInterface);
      return This;
   end Create;

   --  throws Exception
   procedure save (This : in out CategoryPrivateTree; categoryInterface : CategoryInterface_Access) is
      document : Document_Access;
      cryptFileWriter : CryptFileWriter_Access;
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
            This.logUtil.putF (To_Unbounded_String ("Saving Category File: ") & Java_Image (categoryInterface.getFilePath), This'Unchecked_Access, To_Unbounded_String ("save()"));
        end if;
        document := CategoryComponent_Package.Create (categoryInterface).toXmlDoc;
        cryptFileWriter := CryptFileWriter_Package.Create (CategoryData_Package.getInstance.UNCRYPTED_EXTENSION, CategoryData_Package.getInstance.ENCRYPTED_EXTENSION);
        cryptFileWriter.write (categoryInterface.getFilePath, document);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
            This.logUtil.putF (To_Unbounded_String ("end"), This'Unchecked_Access, To_Unbounded_String ("save()"));
        end if;
   end save;

   --  throws Exception
   procedure delete (This : in out CategoryPrivateTree; categoryInterface : CategoryInterface_Access) is
      categoryFile : AbFile_Access;
   begin
        if categoryInterface.isLeaf then
            categoryFile := AbFile_Package.createAbFileFromAbPath (categoryInterface.getFilePath);
            if categoryFile.delete then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                    This.logUtil.putF (To_Unbounded_String ("Removed: ") & Java_Image (categoryInterface.getFilePath), This'Unchecked_Access, To_Unbounded_String ("delete(CategoryInterface)"));
                end if;
            end if;
        else
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (To_Unbounded_String ("Not a leaf unable to remove"), This'Unchecked_Access, To_Unbounded_String ("delete(CategoryInterface)"));
            end if;
        end if;
   end delete;

end org.allbinary.data.tree.category.CategoryPrivateTree_Package;


