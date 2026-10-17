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


package body org.allbinary.logic.visual.transform.info.TransformInfoHttpFactory_Package is

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
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (propertiesHashMap : HashMap_Access; pageContext : PageContext_Access) return TransformInfoInterface_Access is
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
            when e : others =>
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERFACTORYERROR) then
                commonStrings := CommonStrings_Package.getInstance;
                logUtil.put (commonStrings.EXCEPTION_Id, To_Unbounded_String ("TransformInfoFactory"), commonStrings.GET_INSTANCE, e);
            end if;
            Java_Throw (e);
        end;
   end getInstance;

   procedure getInstance (propertiesHashMap : HashMap_Access; pageContext : PageContext_Access) is
      Java_Result : constant TransformInfoInterface_Access := getInstance (propertiesHashMap, pageContext);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.logic.visual.transform.info.TransformInfoHttpFactory_Package;


