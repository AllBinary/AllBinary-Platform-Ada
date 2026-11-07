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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.data.tree.category.CategoryLoader_Package; use org.allbinary.data.tree.category.CategoryLoader_Package;
with org.allbinary.data.tree.category.CategoryLoaderInterface_Package; use org.allbinary.data.tree.category.CategoryLoaderInterface_Package;
with org.allbinary.data.tree.category.CategoryLoaderInterface_Package_References;
with org.allbinary.data.tree.category.CategoryLoader_Package;
with org.allbinary.data.tree.category.CategoryLoaderInterface_Package;
with org.allbinary.data.tree.category.CategoryModifierTree_Package;
with org.allbinary.data.tree.category.CategoryModifierTreeInterface_Package;
with org.allbinary.data.tree.category.CategoryPrivateTree_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.data.tree.category.CategoryLoaderFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
   subtype CategoryLoaderInterface_Access is org.allbinary.data.tree.category.CategoryLoaderInterface_Package_References.CategoryLoaderInterface_Access;
   function "=" (Left, Right : CategoryLoaderInterface_Access) return Boolean renames org.allbinary.data.tree.category.CategoryLoaderInterface_Package_References."=";
   subtype CategoryLoaderInterface_Access_Array is org.allbinary.data.tree.category.CategoryLoaderInterface_Package_References.CategoryLoaderInterface_Access_Array;
   function "=" (Left, Right : CategoryLoaderInterface_Access_Array) return Boolean renames org.allbinary.data.tree.category.CategoryLoaderInterface_Package_References."=";
   subtype CategoryLoaderInterface_Access_Array_Access is org.allbinary.data.tree.category.CategoryLoaderInterface_Package_References.CategoryLoaderInterface_Access_Array_Access;
   function "=" (Left, Right : CategoryLoaderInterface_Access_Array_Access) return Boolean renames org.allbinary.data.tree.category.CategoryLoaderInterface_Package_References."=";
   subtype CategoryLoaderInterface_Access_Array_Access_Array is org.allbinary.data.tree.category.CategoryLoaderInterface_Package_References.CategoryLoaderInterface_Access_Array_Access_Array;
   function "=" (Left, Right : CategoryLoaderInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tree.category.CategoryLoaderInterface_Package_References."=";
   subtype CategoryLoaderInterface_Access_Array_Access_Array_Access is org.allbinary.data.tree.category.CategoryLoaderInterface_Package_References.CategoryLoaderInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CategoryLoaderInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tree.category.CategoryLoaderInterface_Package_References."=";
   procedure Initialize_Fields (This : in out CategoryLoaderFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out CategoryLoaderFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return CategoryLoaderFactory_Access is
      This : constant CategoryLoaderFactory_Access := new CategoryLoaderFactory;
   begin
      CategoryLoaderFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance (categoryFactoryInterface_Param : access CategoryFactoryInterface_Package.CategoryFactoryInterface'Class) return CategoryLoaderInterface_Access is
      categoryFactoryInterface : constant CategoryFactoryInterface_Access := CategoryFactoryInterface_Access (categoryFactoryInterface_Param);
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   begin
        logUtil := LogUtil_Package.getInstance;
        begin
            return CategoryLoaderInterface_Access (CategoryLoader_Package.Create (categoryFactoryInterface));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                logUtil.put (commonStrings.EXCEPTION_Id, Java_Box (To_Unbounded_String ("CategoryNodeFactory")), commonStrings.GET_INSTANCE, e);
            end if;
            return null;
                end;
        end;
   end getInstance;

   procedure getInstance (categoryFactoryInterface_Param : access CategoryFactoryInterface_Package.CategoryFactoryInterface'Class) is
      Java_Result : constant CategoryLoaderInterface_Access := getInstance (categoryFactoryInterface_Param => categoryFactoryInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.data.tree.category.CategoryLoaderFactory_Package;


