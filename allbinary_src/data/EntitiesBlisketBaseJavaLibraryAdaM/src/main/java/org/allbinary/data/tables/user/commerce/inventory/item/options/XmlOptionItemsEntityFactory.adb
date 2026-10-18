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


with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package body org.allbinary.data.tables.user.commerce.inventory.item.options.XmlOptionItemsEntityFactory_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out XmlOptionItemsEntityFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return XmlOptionItemsEntityFactory_Access is
   begin
        return XmlOptionItemsEntityFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out XmlOptionItemsEntityFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return XmlOptionItemsEntityFactory_Access is
      This : constant XmlOptionItemsEntityFactory_Access := new XmlOptionItemsEntityFactory;
   begin
      XmlOptionItemsEntityFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getXmlOptionItemsEntityInstance (This : in out XmlOptionItemsEntityFactory) return XmlOptionItemsEntity_Access is
      commonStrings : CommonStrings_Access;
   begin
        begin
            return XmlOptionItemsEntity_Package.Create;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                This.logUtil.put (commonStrings.EXCEPTION_Id, XmlOptionItemsEntityFactory_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE, e);
            end if;
            return null;
                end;
        end;
   end getXmlOptionItemsEntityInstance;

begin
   null;
   instance := XmlOptionItemsEntityFactory_Package.Create;

end org.allbinary.data.tables.user.commerce.inventory.item.options.XmlOptionItemsEntityFactory_Package;


