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


package body org.allbinary.logic.communication.smtp.info.StoreEmailInfo_Package is

   procedure Initialize_Fields (This : in out StoreEmailInfo'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out StoreEmailInfo'Class; storeFrontInterface : StoreFrontInterface_Access; subject : Unbounded_String; textBody : Unbounded_String) is
      commonStrings : CommonStrings_Access;
   begin
        BasicEmailInfo_Package.Initialize (This, subject, textBody);
        Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGING) then
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.putF (commonStrings.START, This'Unchecked_Access, commonStrings.CONSTRUCTOR);
        end if;
        This.storeFrontInterface := storeFrontInterface;
        This.init;
   end Initialize;

   function Create (storeFrontInterface : StoreFrontInterface_Access; subject : Unbounded_String; textBody : Unbounded_String) return StoreEmailInfo_Access is
      This : constant StoreEmailInfo_Access := new StoreEmailInfo;
   begin
      StoreEmailInfo_Package.Initialize (This.all, storeFrontInterface, subject, textBody);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out StoreEmailInfo) is
      contextConfigurationInterface : ContextConfigurationInterface_Access;
      emailServerConfigurationInterface : EmailServerConfigurationInterface_Access;
   begin
        contextConfigurationInterface := This.storeFrontInterface.getContextConfigurationInterface;
        emailServerConfigurationInterface := contextConfigurationInterface.getEmailServerConfigurationInterface;
        This.setEmailServerConfigurationInterface (emailServerConfigurationInterface);
   end init;

end org.allbinary.logic.communication.smtp.info.StoreEmailInfo_Package;


