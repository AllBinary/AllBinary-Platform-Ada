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


package body org.allbinary.data.tables.category.CategoryEntityFactory_Package is

   procedure Initialize_Fields (This : in out CategoryEntityFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return CategoryEntityFactory_Access is
   begin
        return CategoryEntityFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out CategoryEntityFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return CategoryEntityFactory_Access is
      This : constant CategoryEntityFactory_Access := new CategoryEntityFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getCategoryEntityInstance (This : in out CategoryEntityFactory) return CategoryEntity_Access is
      commonStrings : CommonStrings_Access;
   begin
        begin
            return CategoryEntity_Package.Create;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("getCategoryEntityInstance()"), e);
            end if;
            return null;
                end;
        end;
   end getCategoryEntityInstance;

   procedure getInstance is
      Java_Result : constant CategoryEntityFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getCategoryEntityInstance (This : in out CategoryEntityFactory) is
      Java_Result : constant CategoryEntity_Access := CategoryEntityFactory'Class (This).getCategoryEntityInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCategoryEntityInstance;

begin
   null;
   instance := CategoryEntityFactory_Package.Create;

end org.allbinary.data.tables.category.CategoryEntityFactory_Package;


