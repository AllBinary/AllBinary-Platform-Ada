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
with org.allbinary.business.context.modules.storefronts.BasicStoreFrontsEntity_Package; use org.allbinary.business.context.modules.storefronts.BasicStoreFrontsEntity_Package;

package body org.allbinary.business.context.modules.storefronts.BasicStoreFrontFactory_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out BasicStoreFrontFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return BasicStoreFrontFactory_Access is
   begin
        return BasicStoreFrontFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out BasicStoreFrontFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return BasicStoreFrontFactory_Access is
      This : constant BasicStoreFrontFactory_Access := new BasicStoreFrontFactory;
   begin
      BasicStoreFrontFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out BasicStoreFrontFactory; storeName : Unbounded_String) return BasicStoreFrontInterface_Access is
      storeFronts : BasicStoreFrontsEntity_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            storeFronts := BasicStoreFrontsEntity_Package.Create;
            return BasicStoreFrontInterface_Access (storeFronts.getStoreFrontInterface (storeName));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.FACTORYERROR) then
                commonStrings := CommonStrings_Package.getInstance;
                This.logUtil.put (commonStrings.EXCEPTION_Id, BasicStoreFrontFactory_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE, e);
            end if;
            return null;
                end;
        end;
   end getInstance;

   procedure getInstance (This : in out BasicStoreFrontFactory; storeName : Unbounded_String) is
      Java_Result : constant BasicStoreFrontInterface_Access := BasicStoreFrontFactory'Class (This).getInstance (storeName => storeName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := BasicStoreFrontFactory_Package.Create;

end org.allbinary.business.context.modules.storefronts.BasicStoreFrontFactory_Package;


