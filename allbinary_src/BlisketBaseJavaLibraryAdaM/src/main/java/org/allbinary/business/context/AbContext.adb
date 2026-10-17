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


package body org.allbinary.business.context.AbContext_Package is

   procedure Initialize_Fields (This : in out AbContext'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out AbContext'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      propertiesHashMap : constant HashMap_Access := HashMap_Access (propertiesHashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
   begin
      Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("Properties HashMap: ") & propertiesHashMap.toString, AbContext_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        end if;
        This.propertiesHashMap := propertiesHashMap;
        This.pageContext := pageContext;
   end Initialize;

   function Create (propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return AbContext_Access is
      This : constant AbContext_Access := new AbContext;
   begin
      AbContext_Package.Initialize (This.all, propertiesHashMap_Param, pageContext_Param);
      return This;
   end Create;

   function getWeblisketSession (This : in out AbContext) return WeblisketSessionInterface_Access is
   begin
        return WeblisketSession_Package.Create (This.propertiesHashMap, This.pageContext);
   end getWeblisketSession;

   function getPageContext (This : in out AbContext) return PageContext_Access is
   begin
        return This.pageContext;
   end getPageContext;

   function getPropertiesHashMap (This : in out AbContext) return HashMap_Access is
   begin
        return This.propertiesHashMap;
   end getPropertiesHashMap;

end org.allbinary.business.context.AbContext_Package;


