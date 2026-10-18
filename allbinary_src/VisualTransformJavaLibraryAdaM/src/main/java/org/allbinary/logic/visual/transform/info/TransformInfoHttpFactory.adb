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


with org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package; use org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSession_Package; use org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttpContext_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpContext_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttpStore_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpStore_Package;

package body org.allbinary.logic.visual.transform.info.TransformInfoHttpFactory_Package is

   package StoreFrontFactory_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package WeblisketSession_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out TransformInfoHttpFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out TransformInfoHttpFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TransformInfoHttpFactory_Access is
      This : constant TransformInfoHttpFactory_Access := new TransformInfoHttpFactory;
   begin
      TransformInfoHttpFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return TransformInfoInterface_Access is
      propertiesHashMap : constant HashMap_Access := HashMap_Access (propertiesHashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
      logUtil : LogUtil_Access;
      weblisketSession : WeblisketSession_Access;
      storeFrontInterface : StoreFrontInterface_Access;
      commonStrings : CommonStrings_Access;
   begin
        logUtil := LogUtil_Package.getInstance;
        begin
            weblisketSession := WeblisketSession_Package.Create (propertiesHashMap, pageContext);
            if not (StringValidationUtil_Package.getInstance.isEmpty (weblisketSession.getStoreName)) then
                storeFrontInterface := StoreFrontFactory_Package.getInstance (weblisketSession.getStoreName);
                if (storeFrontInterface) /= (null) then
                    return TransformInfoInterface_Access (TransformInfoHttpStore_Package.Create (storeFrontInterface, propertiesHashMap, pageContext));
                else
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No StoreFront with: ") & Java_Image (weblisketSession.getStoreName)));
                end if;
            else
                return TransformInfoInterface_Access (TransformInfoHttpContext_Package.Create (propertiesHashMap, pageContext));
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERFACTORYERROR) then
                commonStrings := CommonStrings_Package.getInstance;
                logUtil.put (commonStrings.EXCEPTION_Id, To_Unbounded_String ("TransformInfoFactory"), commonStrings.GET_INSTANCE, e);
            end if;
            Java_Throw (e);
                end;
        end;
   end getInstance;

   procedure getInstance (propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      Java_Result : constant TransformInfoInterface_Access := getInstance (propertiesHashMap_Param => propertiesHashMap_Param, pageContext_Param => pageContext_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.logic.visual.transform.info.TransformInfoHttpFactory_Package;


