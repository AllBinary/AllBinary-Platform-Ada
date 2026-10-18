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
with org.allbinary.business.user.modules.admin.configuration.AdminConfiguration_Package; use org.allbinary.business.user.modules.admin.configuration.AdminConfiguration_Package;
with org.allbinary.business.user.modules.admin.configuration.AdminConfigurationInterface_Package; use org.allbinary.business.user.modules.admin.configuration.AdminConfigurationInterface_Package;
with org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package; use org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package body org.allbinary.logic.communication.smtp.info.AdminEmailInfo_Package is

   package ContextConfigurationInterface_Package renames Standard.org.allbinary.business.context.configuration.ContextConfigurationInterface_Package;
   package AdminConfiguration_Package renames Standard.org.allbinary.business.user.modules.admin.configuration.AdminConfiguration_Package;
   package AdminConfigurationInterface_Package renames Standard.org.allbinary.business.user.modules.admin.configuration.AdminConfigurationInterface_Package;
   package EmailServerConfigurationInterface_Package renames Standard.org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out AdminEmailInfo'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out AdminEmailInfo'Class; subject : Unbounded_String; textBody : Unbounded_String) is
      commonStrings : CommonStrings_Access;
   begin
        BasicEmailInfo_Package.Initialize (This, subject, textBody);
        Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGING) then
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.putF (commonStrings.START, AdminEmailInfo_Access'(This'Unchecked_Access), commonStrings.CONSTRUCTOR);
        end if;
        AdminEmailInfo'Class (This).init;
   end Initialize;

   function Create (subject : Unbounded_String; textBody : Unbounded_String) return AdminEmailInfo_Access is
      This : constant AdminEmailInfo_Access := new AdminEmailInfo;
   begin
      AdminEmailInfo_Package.Initialize (This.all, subject, textBody);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out AdminEmailInfo) is
      adminConfigurationInterface : AdminConfigurationInterface_Access;
      contextConfigurationInterface : ContextConfigurationInterface_Access;
      emailServerConfigurationInterface : EmailServerConfigurationInterface_Access;
   begin
        adminConfigurationInterface := AdminConfigurationInterface_Access (AdminConfiguration_Package.Create);
        contextConfigurationInterface := ContextConfigurationInterface_Access (adminConfigurationInterface.getContextConfigurationInterface);
        emailServerConfigurationInterface := EmailServerConfigurationInterface_Access (contextConfigurationInterface.getEmailServerConfigurationInterface);
        AdminEmailInfo'Class (This).setEmailServerConfigurationInterface (emailServerConfigurationInterface);
   end init;

end org.allbinary.logic.communication.smtp.info.AdminEmailInfo_Package;


