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


with org.allbinary.business.context.configuration.ContextConfigurationInterface_Package; use org.allbinary.business.context.configuration.ContextConfigurationInterface_Package;
with org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package; use org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package body org.allbinary.logic.communication.smtp.info.StoreEmailInfo_Package is

   package ContextConfigurationInterface_Package renames Standard.org.allbinary.business.context.configuration.ContextConfigurationInterface_Package;
   package EmailServerConfigurationInterface_Package renames Standard.org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out StoreEmailInfo'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out StoreEmailInfo'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class; subject : Unbounded_String; textBody : Unbounded_String) is
      storeFrontInterface : constant StoreFrontInterface_Access := StoreFrontInterface_Access (storeFrontInterface_Param);
      commonStrings : CommonStrings_Access;
   begin
        BasicEmailInfo_Package.Initialize (This, subject, textBody);
        Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGING) then
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.putF (commonStrings.START, StoreEmailInfo_Access'(This'Unchecked_Access), commonStrings.CONSTRUCTOR);
        end if;
        This.storeFrontInterface := storeFrontInterface;
        StoreEmailInfo'Class (This).init;
   end Initialize;

   function Create (storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class; subject : Unbounded_String; textBody : Unbounded_String) return StoreEmailInfo_Access is
      This : constant StoreEmailInfo_Access := new StoreEmailInfo;
   begin
      StoreEmailInfo_Package.Initialize (This.all, storeFrontInterface_Param, subject, textBody);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out StoreEmailInfo) is
      contextConfigurationInterface : ContextConfigurationInterface_Access;
      emailServerConfigurationInterface : EmailServerConfigurationInterface_Access;
   begin
        contextConfigurationInterface := This.storeFrontInterface.getContextConfigurationInterface;
        emailServerConfigurationInterface := contextConfigurationInterface.getEmailServerConfigurationInterface;
        StoreEmailInfo'Class (This).setEmailServerConfigurationInterface (emailServerConfigurationInterface);
   end init;

end org.allbinary.logic.communication.smtp.info.StoreEmailInfo_Package;


