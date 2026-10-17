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


package body org.allbinary.data.tables.staticpages.StaticPagesEntityFactory_Package is

   procedure Initialize_Fields (This : in out StaticPagesEntityFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return StaticPagesEntityFactory_Access is
   begin
        return StaticPagesEntityFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out StaticPagesEntityFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return StaticPagesEntityFactory_Access is
      This : constant StaticPagesEntityFactory_Access := new StaticPagesEntityFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getStaticPagesEntityInstance (This : in out StaticPagesEntityFactory) return StaticPagesEntity_Access is
      commonStrings : CommonStrings_Access;
   begin
        begin
            return StaticPagesEntity_Package.Create;
        exception
            when e : others =>
            commonStrings := CommonStrings_Package.getInstance;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.GET_INSTANCE, e);
            end if;
            return null;
        end;
   end getStaticPagesEntityInstance;

   procedure getInstance is
      Java_Result : constant StaticPagesEntityFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getStaticPagesEntityInstance (This : in out StaticPagesEntityFactory) is
      Java_Result : constant StaticPagesEntity_Access := StaticPagesEntityFactory'Class (This).getStaticPagesEntityInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getStaticPagesEntityInstance;

begin
   null;
   instance := StaticPagesEntityFactory_Package.Create;

end org.allbinary.data.tables.staticpages.StaticPagesEntityFactory_Package;


